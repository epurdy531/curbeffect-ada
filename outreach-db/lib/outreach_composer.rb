require "date"

# Renders the project-level templates/outreach-email.md against an Entity and
# the one of its PdfDocuments with the most veraPDF failures, returning the
# fully assembled email body (metadata block + divider + rendered template).
#
# Placeholders supported (verbatim, matching templates/outreach-email.md):
#   <entity.entity_name>                            → the entity's display name
#   <pdf_document.file_name>                        → the PDF's filename
#   <pdf_file.source_url>                           → the URL the PDF was fetched from
#   <pdf_file.verapdf_report.report_failures>       → integer (comma-delimited)
#   <pdf_file.verapdf_report.report_total_checks>   → integer (comma-delimited)
class OutreachComposer
  PROJECT_ROOT = Rails.root.join("..").expand_path
  TEMPLATE_PATH = PROJECT_ROOT.join("templates/outreach-email.md")

  class NoScannedPdf < StandardError; end

  def self.compose(entity, draft_path: nil)
    pdf = worst_pdf(entity) or raise NoScannedPdf,
      "no scanned PDFs with a veraPDF report for entity ##{entity.id}"

    body = render_template(pdf)
    metadata = build_metadata(entity, pdf)
    content = "#{metadata}\n---\n\n#{body}"

    draft_path ||= default_draft_path(entity)
    draft_path = Pathname.new(draft_path)
    draft_path.dirname.mkpath
    draft_path.write(content)
    draft_path
  end

  # A "true draft" for Erica to send herself: Subject is the real outreach
  # subject, and the body is exactly the email she'll send, with ONE added
  # line at the top — the recipient's address. Nothing else. Sent to her
  # (the To: header), so she can copy the body below the "Send to:" line.
  def self.compose_true_draft(entity, draft_path:, deliver_to: "erica.mcdevitt@curbeffect.com")
    pdf = worst_pdf(entity) or raise NoScannedPdf,
      "no scanned PDFs with a veraPDF report for entity ##{entity.id}"

    subject = "#{subject_name(entity)}'s PDFs and ADA Title II"
    body = render_template(pdf)
    content = <<~DRAFT
      Subject: #{subject}
      To: #{deliver_to}

      Send to: #{entity.contact_email}

      #{body}
    DRAFT

    draft_path = Pathname.new(draft_path)
    draft_path.dirname.mkpath
    draft_path.write(content)
    draft_path
  end

  # Pick the PDF to feature. An UNTAGGED PDF is the strongest hook (completely
  # unreadable to screen readers), so prefer the worst-failing untagged one when
  # the entity has any; otherwise fall back to worst-failing overall.
  def self.worst_pdf(entity)
    scanned = entity.pdf_documents.joins(:verapdf_report)
    untagged = scanned.where(verapdf_reports: { tagged: false })
                      .order("verapdf_reports.report_failures DESC").first
    untagged || scanned.order("verapdf_reports.report_failures DESC").first
  end

  # Fills the <pdf_file.verapdf_report.tag_status> template slot: an inline
  # sentence (leading space) when the featured PDF is untagged, else "".
  def self.tag_status_text(report)
    return "" unless report.untagged?
    " This one has no tag structure at all, which makes it completely " \
      "unreadable to anyone using a screen reader."
  end

  # First name for the greeting, or nil when there's no real named individual
  # (role-based, blank, or "none") — caller falls back to "there".
  def self.greeting_name(entity)
    name = entity.contact_name.to_s.strip
    return nil if name.empty? || name.casecmp?("none") || name.start_with?("(")
    first = name.split(/\s+/).first
    first if first =~ /\A[A-Za-z][A-Za-z'.-]*\z/
  end

  def self.render_template(pdf)
    report = pdf.verapdf_report
    entity = pdf.entity
    template = File.read(TEMPLATE_PATH)
    greeting = greeting_name(entity) || "there"
    template
      .gsub("Hi there,", "Hi #{greeting},")
      .gsub("<entity.entity_name>", entity.entity_name.to_s)
      .gsub("<pdf_document.file_name>", pdf.file_name.to_s)
      .gsub("<pdf_file.verapdf_report.report_failures>", report.report_failures.to_fs(:delimited))
      .gsub("<pdf_file.verapdf_report.report_total_checks>", report.report_total_checks.to_fs(:delimited))
      .gsub("<pdf_file.verapdf_report.tag_status>", tag_status_text(report))
      .gsub("<pdf_file.source_url>", pdf.source_url.to_s)
  end

  def self.build_metadata(entity, pdf)
    short_name = subject_name(entity)
    subject_line = "Subject: #{short_name}'s PDFs and ADA Title II"
    <<~META.chomp
      #{subject_line}
      To: info@curbeffect.com

      #{subject_line}

      Entity: #{entity.entity_name.presence || "(name not set)"}
      Entity contact: #{entity.contact_name} (#{entity.contact_email})
      Title: #{entity.contact_title}
      Worst-failing PDF: #{pdf.file_name}
        source: #{pdf.source_url}
        failures: #{pdf.verapdf_report.report_failures.to_fs(:delimited)} of #{pdf.verapdf_report.report_total_checks.to_fs(:delimited)} checks#{tag_status_suffix(pdf)}
    META
  end

  # Appends an indented "tag status" line when the PDF is untagged, so the
  # human reviewer sees the strongest accessibility signal right under the
  # failure count. Empty string (no extra line) for tagged/unknown PDFs.
  def self.tag_status_suffix(pdf)
    note = pdf.verapdf_report.tag_status_note
    note ? "\n        tag status: #{note}" : ""
  end

  # Subject line uses entity_name with the trailing ", STATE" stripped (so
  # "Stanislaus County, CA" reads as "Stanislaus County's PDFs..."). Falls back
  # to the contact-email host if entity_name isn't set yet.
  def self.subject_name(entity)
    name = entity.entity_name.to_s.strip
    return fallback_subject_name(entity) if name.empty?
    name.sub(/,\s*[A-Z]{2}\z/, "")
  end

  def self.fallback_subject_name(entity)
    host = entity.contact_email.to_s.split("@", 2).last.to_s
    return "this entity" if host.empty?
    label = host.split(".").reject { |p| p.length <= 3 }.first || host.split(".").first
    label.to_s.capitalize
  end

  def self.default_draft_path(entity)
    slug = entity.contact_email.to_s.gsub(/[^a-z0-9]+/i, "-").downcase
    PROJECT_ROOT.join("drafts/outreach-#{slug}-#{Date.today.iso8601}.md")
  end
end
