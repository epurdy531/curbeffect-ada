require_relative "pdf_fetcher"
require_relative "verapdf_runner"

class EntityScanner
  def self.scan(entity, limit: PdfFetcher::MAX_PDFS)
    # Prefer a human-supplied scrapable_url (a page that directly lists PDFs);
    # fall back to the homepage. Cuts crawling effort when set.
    start_url = entity.scrapable_url.presence || entity.url
    raise ArgumentError, "entity has no url" if start_url.blank?

    results = []
    PdfFetcher.fetch(start_url, limit: limit).each do |fetched|
      pdf_doc = entity.pdf_documents.find_by(source_url: fetched.url)
      begin
        if pdf_doc
          # Existing record: replace the stored PDF file and drop the old
          # veraPDF report so we can attach a fresh one below.
          pdf_doc.update!(file_name: fetched.file_name, document: fetched.tempfile)
          pdf_doc.verapdf_report&.destroy
        else
          pdf_doc = entity.pdf_documents.create!(
            file_name: fetched.file_name,
            source_url: fetched.url,
            document: fetched.tempfile,
          )
        end
      rescue ActiveRecord::RecordInvalid => e
        # Shrine validation rejected the file (wrong MIME type, too large, etc.)
        Rails.logger.warn("EntityScanner: rejected #{fetched.url}: #{e.message}")
        next
      end

      # veraPDF needs a local path; open the stored copy via Shrine. veraPDF can
      # crash on individual PDFs (malformed objects, JS-engine bugs, etc.); a
      # failure on one PDF should not abort the whole scan. We log and skip,
      # and drop the now-orphan PdfDocument so re-runs are clean.
      begin
        pdf_doc.document.open do |io|
          local_path = io.respond_to?(:path) ? io.path : pdf_doc.document.download.path
          report = VerapdfRunner.run(local_path, pdf_file_name: fetched.file_name)
          VerapdfReport.create!(
            pdf_document: pdf_doc,
            report_file_name: report.report_file_name,
            report_total_checks: report.total_checks,
            report_failures: report.total_failures,
            tagged: report.tagged,
            document: report.report_tempfile,
          )
        end
        results << pdf_doc
      rescue VerapdfRunner::VerapdfFailed, VerapdfRunner::VerapdfMissing => e
        Rails.logger.warn("EntityScanner: veraPDF failed on #{fetched.url}: #{e.message}")
        pdf_doc.destroy
      end
    end
    results
  end
end
