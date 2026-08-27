require "nokogiri"
require "open3"
require "tempfile"

class VerapdfRunner
  Result = Struct.new(:report_tempfile, :report_file_name, :total_checks, :total_failures, :tagged, keyword_init: true)

  class VerapdfMissing < StandardError; end
  class VerapdfFailed < StandardError; end

  BIN = ENV.fetch("VERAPDF_BIN", "verapdf")

  def self.run(pdf_path, pdf_file_name: nil)
    report = Tempfile.new(["verapdf-report-", ".xml"])
    report.close
    out, err, status = Open3.capture3(BIN, "--format", "mrr", "--flavour", "ua1", "--nonpdfext", pdf_path, chdir: Dir.tmpdir)
    if status.exitstatus == 127 || err.to_s.include?("command not found")
      raise VerapdfMissing, "verapdf binary not found (set VERAPDF_BIN to override)"
    end
    File.binwrite(report.path, out)

    doc = Nokogiri::XML(out)
    doc.remove_namespaces!
    passed, failed = parse_counts(doc)
    Result.new(
      report_tempfile: File.open(report.path, "rb"),
      report_file_name: build_report_name(pdf_file_name),
      total_checks: passed + failed,
      total_failures: failed,
      tagged: parse_tagged(doc),
    )
  end

  def self.parse_counts(doc)
    # MRR format: <report><jobs><job><validationReport><details passedChecks=N failedChecks=M>
    node = doc.at_xpath("//details[@passedChecks and @failedChecks]")
    raise VerapdfFailed, "could not locate <details> element with check counts in MRR output" unless node
    passed = node["passedChecks"].to_i
    failed = node["failedChecks"].to_i
    [passed, failed]
  end

  # A PDF is "tagged" when it has a logical structure hierarchy. In PDF/UA-1
  # (ISO 14289-1) that hierarchy is rooted in the catalog's StructTreeRoot
  # entry (clause 7.1, testNumber 11). When that rule FAILS the document has no
  # structure tree at all — i.e. zero tags, the exact case that produces a huge
  # "content not tagged as real content" (7.1/3) failure count. Matching on the
  # rule's human-readable description (which names StructTreeRoot) keeps this
  # robust even if veraPDF renumbers clauses between releases.
  #
  # Returns true (tagged), false (untagged), or nil when no validation result is
  # present at all (empty/garbled MRR — can't judge).
  #
  # We gate "did validation run?" on the <details> element (which carries the
  # passed/failed check counts), NOT on the presence of <rule> elements: MRR
  # lists only FAILED rules, so a fully-conformant PDF (0 failures) has zero
  # <rule> elements yet is definitely tagged. Keying off <rule> presence would
  # mislabel every passing document as nil/unknown.
  def self.parse_tagged(doc)
    return nil unless doc.at_xpath("//details[@passedChecks and @failedChecks]")

    no_struct_tree = doc.xpath("//rule[@status='failed']").any? do |r|
      r.at_xpath("./description")&.text.to_s&.include?("StructTreeRoot")
    end
    !no_struct_tree
  end

  def self.build_report_name(pdf_file_name)
    base = pdf_file_name ? File.basename(pdf_file_name, ".*") : "report"
    "#{base}-verapdf.xml"
  end
end
