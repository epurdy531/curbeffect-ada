namespace :scan do
  desc "Scan one entity: grab up to 5 PDFs, run veraPDF, save reports. Usage: bin/rails scan:entity[ID]"
  task :entity, [:id] => :environment do |_t, args|
    require Rails.root.join("lib/entity_scanner")
    entity = Entity.find(args.fetch(:id))
    puts "scanning entity ##{entity.id} (#{entity.url})"
    docs = EntityScanner.scan(entity)
    puts "  -> #{docs.size} PDF(s) processed"
    docs.each do |d|
      r = d.verapdf_report
      puts "     #{d.file_name}: total_checks=#{r.report_total_checks} failures=#{r.report_failures}"
    end
  end

  desc "Scan one entity by contact_email, then compose+send the outreach draft. Usage: bin/rails 'scan:by_email[user@example.gov]'"
  task :by_email, [:email] => :environment do |_t, args|
    require Rails.root.join("lib/entity_scanner")
    require Rails.root.join("lib/outreach_composer")
    email = args.fetch(:email)
    entity = Entity.find_by(contact_email: email)
    unless entity
      warn "no entity with contact_email=#{email.inspect}. Add it in the dashboard (New entity) or via outreach:import_prospects first."
      exit 1
    end
    puts "scanning entity ##{entity.id} (#{entity.url})"
    docs = EntityScanner.scan(entity)
    puts "  -> #{docs.size} PDF(s) processed"
    docs.each do |d|
      r = d.verapdf_report
      puts "     #{d.file_name}: total_checks=#{r.report_total_checks} failures=#{r.report_failures}"
    end

    begin
      draft_path = OutreachComposer.compose(entity)
      puts "composed outreach draft: #{draft_path}"
      project_root = Rails.root.join("..").expand_path
      cmd = %(bash -lc 'source ~/.curbeffect-secrets.env && python3 send-digest.py "#{draft_path}"')
      Dir.chdir(project_root) do
        ok = system(cmd)
        puts ok ? "outreach draft emailed to Erica" : "send-digest.py exited non-zero (rc=#{$?.exitstatus})"
      end
    rescue OutreachComposer::NoScannedPdf => e
      warn "skipping outreach send: #{e.message}"
    end
  end

  desc "Scan one entity by URL and email a SCAN-RESULTS REPORT (sorted PDF list with veraPDF failure counts). Used by the call-list workflow before Erica calls. For the outreach-pitch composer instead, see scan:by_email. Usage: bin/rails 'scan:by_url[https://www.example.gov/]'"
  task :by_url, [:url] => :environment do |_t, args|
    require Rails.root.join("lib/entity_scanner")
    require "date"

    raw = args.fetch(:url).to_s.strip
    # Tolerate trailing slash / missing one by matching against both shapes.
    candidates = [raw, raw.chomp("/"), "#{raw.chomp('/')}/"]
    entity = Entity.where(url: candidates).first
    unless entity
      warn "no entity with url in #{candidates.inspect}. Add it in the dashboard (New entity) or via outreach:import_prospects first."
      exit 1
    end
    puts "scanning entity ##{entity.id} (#{entity.url})"
    EntityScanner.scan(entity)

    # Re-fetch so we operate on persisted rows ordered for the report.
    docs = entity.pdf_documents.includes(:verapdf_report)
                 .joins(:verapdf_report)
                 .order("verapdf_reports.report_failures DESC")
                 .to_a

    puts "  -> #{docs.size} PDF(s) processed"
    docs.each do |d|
      r = d.verapdf_report
      puts "     #{d.file_name}: total_checks=#{r.report_total_checks} failures=#{r.report_failures}"
    end

    if docs.empty?
      warn "no scanned PDFs with a veraPDF report for entity ##{entity.id}; skipping report"
      next
    end

    today = Date.today.iso8601
    entity_label = entity.entity_name.to_s.sub(/,\s*[A-Z]{2}\z/, "")
    slug = entity_label.downcase.gsub(/[^a-z0-9]+/, "-").gsub(/-+/, "-").gsub(/^-|-$/, "")
    slug = "entity-#{entity.id}" if slug.empty?
    project_root = Rails.root.join("..").expand_path
    drafts_dir = project_root.join("drafts")
    drafts_dir.mkpath
    draft_path = drafts_dir.join("scan-results-#{slug}-#{today}.md")

    contact_name  = entity.contact_name.to_s.strip
    contact_title = entity.contact_title.to_s.strip
    raw_email     = entity.contact_email.to_s.strip
    has_email     = !raw_email.empty? && raw_email !~ /not publicly listed|placeholder|noemail/i
    phone         = entity.notes.to_s[/Phone:\s*([+\d().\-\s]*\d)/, 1]&.strip

    who = [contact_name, contact_title].reject(&:empty?).join(", ")
    contact_value =
      if who.empty? && !has_email
        "not yet on file in contact-log.md"
      elsif who.empty?
        raw_email
      elsif has_email
        "#{who} — #{raw_email}"
      else
        "#{who} (no public email on file)"
      end

    lines = []
    lines << "Subject: #{entity_label} — #{docs.size} PDFs (PDF/UA-1)"
    lines << "To: info@curbeffect.com"
    lines << ""
    lines << "PDF/UA-1 accessibility scan of #{docs.size} representative PDFs from #{entity_label}, scanned #{today} with veraPDF. Sorted by failure count."
    lines << ""
    lines << "**Entity:** #{entity.entity_name}"
    lines << "**Website:** #{entity.url}"
    lines << "**Contact:** #{contact_value}"
    lines << "**Phone:** #{phone}" if phone
    lines << ""
    docs.each_with_index do |d, i|
      r = d.verapdf_report
      pct = r.report_total_checks.zero? ? 0.0 : (r.report_failures.to_f / r.report_total_checks * 100).round(2)
      failures = r.report_failures.to_s(:delimited) rescue r.report_failures.to_s
      checks = r.report_total_checks.to_s(:delimited) rescue r.report_total_checks.to_s
      tag_marker = r.untagged? ? " — ⚠️ **UNTAGGED** (no structure tree; inaccessible to screen readers)" : ""
      lines << "#{i + 1}. **#{d.file_name}** — [PDF](#{d.source_url}) — **#{failures} failures / #{checks} checks** (#{pct}%)#{tag_marker}"
    end
    lines << ""
    lines << "Note: PDF/UA-1 failure counts reflect machine-checkable conformance only. Low failure counts can still hide mis-tagged lists/headings — manual review needed."
    draft_path.write(lines.join("\n") + "\n")
    puts "wrote scan-results report: #{draft_path}"

    cmd = %(bash -lc 'source ~/.curbeffect-secrets.env && python3 send-digest.py "#{draft_path}"')
    Dir.chdir(project_root) do
      ok = system(cmd)
      puts ok ? "scan-results report emailed to Erica" : "send-digest.py exited non-zero (rc=#{$?.exitstatus})"
    end
  end

  desc "Scan all local PDF files in a directory (for auth-gated/JS sources like SharePoint) and email a scan-results report. Usage: bin/rails 'scan:dir[/abs/path/to/folder,Entity Name,https://entity.url]'"
  task :dir, [:path, :label, :url] => :environment do |_t, args|
    require Rails.root.join("lib/verapdf_runner")
    require "date"

    dir = args.fetch(:path)
    raise "directory not found: #{dir}" unless File.directory?(dir)
    files = Dir.glob(File.join(dir, "**", "*")).select { |f| File.file?(f) && f.downcase.end_with?(".pdf") }.sort
    raise "no .pdf files under #{dir}" if files.empty?

    label = args[:label].to_s.strip
    label = File.basename(dir) if label.empty?
    entity = args[:url].present? ? Entity.where(url: [args[:url], args[:url].to_s.chomp("/"), "#{args[:url].to_s.chomp('/')}/"]).first : nil

    rows = []
    files.each do |path|
      begin
        r = VerapdfRunner.run(path, pdf_file_name: File.basename(path))
        rows << { name: File.basename(path), fail: r.total_failures, checks: r.total_checks, tagged: r.tagged }
        puts "  #{File.basename(path)[0,40].ljust(40)} #{r.total_failures}/#{r.total_checks} tagged=#{r.tagged.inspect}"
      rescue => e
        puts "  !! #{File.basename(path)}: #{e.class}: #{e.message}"
      end
    end
    rows.sort_by! { |x| -x[:fail] }
    next puts("no PDFs produced a veraPDF report; skipping") if rows.empty?

    today = Date.today.iso8601
    slug = label.sub(/,\s*[A-Z]{2}\z/, "").downcase.gsub(/[^a-z0-9]+/, "-").gsub(/^-|-$/, "")
    slug = "local" if slug.empty?
    project_root = Rails.root.join("..").expand_path
    drafts_dir = project_root.join("drafts"); drafts_dir.mkpath
    draft_path = drafts_dir.join("scan-results-#{slug}-local-#{today}.md")
    delim = ->(n) { n.to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse }
    untagged = rows.count { |x| x[:tagged] == false }

    L = []
    L << "Subject: #{label} — #{rows.size} PDFs (PDF/UA-1, local scan)"
    L << "To: info@curbeffect.com"
    L << ""
    L << "PDF/UA-1 scan of #{rows.size} PDFs downloaded from #{label} (source not directly fetchable — e.g. auth-gated SharePoint), scanned #{today} with veraPDF. Sorted by failures."
    L << ""
    L << "**Entity:** #{entity&.entity_name || label}"
    L << "**Website:** #{entity&.url}" if entity&.url.present?
    L << "**Contact:** #{[entity&.contact_name, entity&.contact_title].compact.reject { |s| s.to_s.strip.empty? }.join(', ')}" if entity
    L << ""
    L << "**#{untagged} of #{rows.size} are UNTAGGED** (no structure tree — unreadable to screen readers)." if untagged > 0
    L << ""
    rows.each_with_index do |x, i|
      pct = x[:checks].zero? ? 0.0 : (x[:fail].to_f / x[:checks] * 100).round(1)
      mark = x[:tagged] == false ? " — ⚠️ **UNTAGGED**" : ""
      L << "#{i + 1}. **#{x[:name]}** — **#{delim.(x[:fail])} / #{delim.(x[:checks])} checks** (#{pct}%)#{mark}"
    end
    L << ""
    L << "Note: scanned from locally-downloaded copies. Low failure counts / tagged status can still hide mis-tagged lists & headings — manual review needed."
    draft_path.write(L.join("\n") + "\n")
    puts "wrote scan-results report: #{draft_path}"

    cmd = %(bash -lc 'source ~/.curbeffect-secrets.env && python3 send-digest.py "#{draft_path}"')
    Dir.chdir(project_root) { puts(system(cmd) ? "report emailed to Erica" : "send-digest.py exited non-zero (rc=#{$?.exitstatus})") }
  end

  desc "Scan all entities with a URL. Usage: bin/rails scan:all"
  task all: :environment do
    require Rails.root.join("lib/entity_scanner")
    Entity.where.not(url: [nil, ""]).find_each do |entity|
      puts "scanning entity ##{entity.id} (#{entity.url})"
      begin
        docs = EntityScanner.scan(entity)
        puts "  -> #{docs.size} PDF(s) processed"
      rescue => e
        puts "  !! failed: #{e.class}: #{e.message}"
      end
    end
  end
end
