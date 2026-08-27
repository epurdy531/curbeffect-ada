class VerapdfReportUploader < Shrine
  Attacher.validate do
    validate_max_size 25 * 1024 * 1024
  end
end
