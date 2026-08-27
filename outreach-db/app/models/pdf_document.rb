class PdfDocument < ApplicationRecord
  include PdfDocumentUploader::Attachment(:document)

  belongs_to :entity
  has_one :verapdf_report, dependent: :destroy
end
