class PdfDocumentUploader < Shrine
  Attacher.validate do
    validate_mime_type %w[application/pdf]
    validate_max_size 50 * 1024 * 1024
  end
end
