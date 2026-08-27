require "nokogiri"
require "open-uri"
require "uri"
require "set"
require "zlib"

class PdfFetcher
  MAX_PDFS = 5
  MAX_CHILD_SITEMAPS = 10   # cap sitemap-index fan-out
  CRAWL_MAX_DEPTH = 2       # 0 = homepage, 1 = linked pages, 2 = pages linked from those
  CRAWL_MAX_PAGES = 30      # safety cap on total pages fetched per entity
  USER_AGENT = "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36"

  # Some government sites sit behind WAFs (e.g. Akamai) that 403 any client not
  # presenting a modern browser's Client-Hint (sec-ch-ua) + Fetch-Metadata
  # (Sec-Fetch-*) headers — bare UA alone is not enough. Sending the full set
  # lets the scanner read public documents the same way a browser would.
  # We deliberately OMIT Accept-Encoding so open-uri negotiates gzip itself;
  # requesting br ourselves would yield brotli bytes Ruby can't decode.
  HTTP_HEADERS = {
    "User-Agent" => USER_AGENT,
    "Accept" => "text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,*/*;q=0.8",
    "Accept-Language" => "en-US,en;q=0.9",
    "sec-ch-ua" => '"Not/A)Brand";v="8", "Chromium";v="126", "Google Chrome";v="126"',
    "sec-ch-ua-mobile" => "?0",
    "sec-ch-ua-platform" => '"macOS"',
    "Sec-Fetch-Dest" => "document",
    "Sec-Fetch-Mode" => "navigate",
    "Sec-Fetch-Site" => "none",
    "Sec-Fetch-User" => "?1",
    "Upgrade-Insecure-Requests" => "1",
  }.freeze

  # Anchor text/href patterns that suggest a page likely to contain PDF links
  # (agendas, meeting packets, document centers, public records pages, etc.).
  CANDIDATE_PATTERN = /\b(agenda|minutes|packet|document|forms?|records?|reports?|publication|meeting|board|council|notice|budget|policy)\b/i

  # Many government sites host their actual PDFs (agendas, packets, minutes) not
  # on their own domain but on an off-domain Granicus/Legistar portal that the
  # homepage merely links out to. Same-host crawling never reaches those, so we
  # whitelist these portal hosts and follow links into them. A portal is a
  # *subdomain* of granicus.com/legistar.com (e.g. madison.legistar.com); the
  # bare vendor sites www.granicus.com / granicus.com are just marketing-footer
  # badges and must NOT be crawled, so the leading-label requirement excludes
  # them.
  GRANICUS_PORTAL_HOST = /\A(?!www\.)[a-z0-9][a-z0-9-]*\.(?:granicus|legistar)\.com\z/i

  # On a Legistar portal the document links are not *.pdf — they go through a
  # View.ashx handler whose M (mode) param selects the file: A=agenda, M=minutes,
  # F=attachment are PDFs; IC=iCalendar (.ics) and others are NOT. Classic
  # Granicus MediaManager streams agenda PDFs through MetaViewer/DocumentViewer.
  GRANICUS_PDF_MODES = %w[A M F].freeze

  # CivicEngage (the Granicus CMS many of these cities run) serves PDFs on the
  # entity's OWN host through an extension-less /showpublisheddocument/<id>/<ts>
  # handler — invisible to plain *.pdf matching.
  CMS_DOC_HANDLER = %r{/showpublisheddocument/}i

  Result = Struct.new(:url, :file_name, :tempfile, keyword_init: true)

  def self.fetch(entity_url, limit: MAX_PDFS)
    discover(entity_url, limit: limit).map { |u| download(u) }.compact
  end

  # Strategy:
  #   1. Try sitemaps (robots.txt + /sitemap.xml). If any PDFs are listed, use them.
  #   2. Otherwise crawl the entity site to depth 2, only following links whose
  #      anchor text or href hints at agendas/documents/forms/etc. Same-host,
  #      capped at CRAWL_MAX_PAGES total fetches.
  def self.discover(entity_url, limit: MAX_PDFS)
    pdfs = sitemap_pdfs(entity_url, limit: limit)
    return pdfs if pdfs.any?

    crawl_pdfs(entity_url, limit: limit)
  end

  # ----- sitemap path -----

  def self.sitemap_pdfs(entity_url, limit:)
    base = URI.parse(entity_url)
    pdfs = []
    seen = Set.new

    sitemap_urls(base).each do |sm_url|
      break if pdfs.size >= limit
      collect_from_sitemap(sm_url, pdfs, seen, limit, depth: 0)
    end
    pdfs
  end

  def self.sitemap_urls(base)
    candidates = []
    robots = fetch_text(URI.join(base, "/robots.txt").to_s)
    if robots
      robots.scan(/^\s*Sitemap:\s*(\S+)/i).each { |(u)| candidates << u }
    end
    candidates << URI.join(base, "/sitemap.xml").to_s
    candidates.uniq
  end

  def self.collect_from_sitemap(sitemap_url, pdfs, seen, limit, depth:)
    body = fetch_text(sitemap_url)
    return unless body
    body = gunzip(body) if sitemap_url.end_with?(".gz")

    doc = Nokogiri::XML(body)
    doc.remove_namespaces!

    child_locs = doc.xpath("//sitemap/loc").map { |n| n.text.strip }
    if child_locs.any? && depth < 1
      child_locs.first(MAX_CHILD_SITEMAPS).each do |child|
        break if pdfs.size >= limit
        collect_from_sitemap(child, pdfs, seen, limit, depth: depth + 1)
      end
      return
    end

    doc.xpath("//url/loc").each do |n|
      loc = n.text.strip
      next unless loc.downcase.include?(".pdf")
      next if seen.include?(loc)
      seen << loc
      pdfs << loc
      break if pdfs.size >= limit
    end
  end

  # ----- crawl path (depth-2 candidate-link traversal) -----

  def self.crawl_pdfs(start_url, limit:)
    base = URI.parse(start_url)
    pdfs = []
    seen_pdfs = Set.new
    visited = Set.new
    queue = [[start_url, 0]]

    while (entry = queue.shift) && pdfs.size < limit && visited.size < CRAWL_MAX_PAGES
      page_url, depth = entry
      next if visited.include?(page_url)
      visited << page_url

      doc = fetch_html(page_url)
      next unless doc
      page_base = URI.parse(page_url) rescue next

      # Capture any PDF links on this page — direct *.pdf, a same-host CMS
      # document handler (CivicEngage showpublisheddocument), or an off-domain
      # Granicus/Legistar portal handler.
      doc.css("a[href]").each do |a|
        href = a["href"].to_s.strip
        next if href.empty?
        absolute = absolutize(href, page_base) or next
        link_host = (URI.parse(absolute).host rescue nil)
        next unless absolute.downcase.include?(".pdf") || pdf_handler_link?(absolute, link_host)
        next if seen_pdfs.include?(absolute)
        seen_pdfs << absolute
        pdfs << absolute
        break if pdfs.size >= limit
      end

      # Queue candidate next-hop pages, up to CRAWL_MAX_DEPTH.
      next if depth >= CRAWL_MAX_DEPTH
      doc.css("a[href]").each do |a|
        href = a["href"].to_s.strip
        next if href.empty? || href.start_with?("#", "mailto:", "tel:", "javascript:")
        absolute = absolutize(href, page_base) or next
        next if absolute.downcase.include?(".pdf")
        next if visited.include?(absolute)
        uri = URI.parse(absolute) rescue next
        next unless uri.host
        on_portal = granicus_host?(uri.host)
        # Stay on the entity's own host, except: always follow links into a
        # Granicus/Legistar portal (it IS the document store), regardless of
        # anchor text.
        next unless uri.host.casecmp(base.host).zero? || on_portal
        unless on_portal
          text = a.text.to_s.strip
          next unless text.match?(CANDIDATE_PATTERN) || href.match?(CANDIDATE_PATTERN)
        end
        queue << [absolute, depth + 1]
      end

      # Granicus MediaManager (ViewPublisher) is embedded via an <iframe>, not an
      # <a>, and its "Agenda Packet" PDFs live on a Granicus CDN. Follow iframes
      # into whitelisted portal hosts so those packets get discovered.
      doc.css("iframe[src]").each do |f|
        src = f["src"].to_s.strip
        next if src.empty?
        absolute = absolutize(src, page_base) or next
        next if visited.include?(absolute)
        uri = URI.parse(absolute) rescue next
        next unless uri.host && granicus_host?(uri.host)
        queue << [absolute, depth + 1]
      end
    end

    pdfs
  end

  # ----- Granicus / Legistar / CivicEngage document detection -----

  def self.granicus_host?(host)
    host.to_s.downcase.match?(GRANICUS_PORTAL_HOST)
  end

  # True when `url` resolves to a PDF served through a known document handler
  # rather than a *.pdf link:
  #   * same-host CivicEngage  /showpublisheddocument/<id>/<ts>  (any host)
  #   * Legistar  View.ashx  — PDF only for M=A/M/F (agenda/minutes/file);
  #     M=IC (iCalendar) and friends are rejected so they don't burn a slot
  #   * classic Granicus MediaManager  MetaViewer.php / DocumentViewer.php
  # The last two are honored only on a whitelisted Granicus/Legistar portal host.
  def self.pdf_handler_link?(url, host)
    return true if url =~ CMS_DOC_HANDLER
    return false unless granicus_host?(host)
    case url
    when /\/View\.ashx\?/i
      mode = url[/[?&]M=([A-Za-z]+)/i, 1].to_s.upcase
      GRANICUS_PDF_MODES.include?(mode)
    when /\/(?:MetaViewer|DocumentViewer)\.php\b/i
      true
    else
      false
    end
  end

  # ----- shared helpers -----

  def self.absolutize(href, base)
    (base + href).to_s
  rescue URI::InvalidURIError
    nil
  end

  def self.fetch_text(url)
    body = URI.parse(url).open(HTTP_HEADERS.merge(read_timeout: 30)).read
    body.force_encoding("UTF-8")
    body = body.encode("UTF-8", invalid: :replace, undef: :replace, replace: "") unless body.valid_encoding?
    body
  rescue => e
    Rails.logger.warn("PdfFetcher: fetch_text failed for #{url}: #{e.message}")
    nil
  end

  def self.fetch_html(url)
    body = fetch_text(url)
    body && Nokogiri::HTML(body)
  end

  def self.gunzip(body)
    Zlib::GzipReader.new(StringIO.new(body)).read
  rescue
    body
  end

  def self.download(pdf_url)
    file = URI.parse(pdf_url).open(HTTP_HEADERS.merge(read_timeout: 60))
    tempfile = file.is_a?(Tempfile) ? file : Tempfile.new(["pdf", ".pdf"]).tap { |t| t.binmode; t.write(file.read); t.rewind }
    Result.new(
      url: pdf_url,
      file_name: derive_file_name(pdf_url),
      tempfile: tempfile,
    )
  rescue => e
    Rails.logger.warn("PdfFetcher: failed to download #{pdf_url}: #{e.message}")
    nil
  end

  # A *.pdf URL keeps its basename. Handler URLs have no filename, so synthesize
  # a stable, readable one from the host label plus the document id — taken from
  # the /showpublisheddocument/<id> path (CivicEngage) or the mode/id query
  # params (Legistar/Granicus), e.g. "madison-A-1410746.pdf", "icgov-12345.pdf".
  def self.derive_file_name(pdf_url)
    uri = URI.parse(pdf_url) rescue nil
    return "document.pdf" unless uri
    path = uri.path.to_s
    base = File.basename(path)
    return base if base.downcase.end_with?(".pdf")

    labels = uri.host.to_s.downcase.split(".")
    labels.shift if labels.first == "www"
    label = labels.first.presence || "document"

    id =
      if (m = path[%r{/showpublisheddocument/(\d+)}i, 1])
        m
      else
        q = uri.query.to_s
        mode = q[/[?&]?M=([A-Za-z]+)/i, 1]
        num  = q[/[?&]?(?:ID|meta_id|view_id|clip_id)=(\d+)/i, 1]
        [mode, num].compact.reject(&:empty?).join("-").presence
      end
    parts = [label, id].compact.reject(&:empty?)
    "#{parts.any? ? parts.join('-') : (base.presence || label)}.pdf"
  end
end
