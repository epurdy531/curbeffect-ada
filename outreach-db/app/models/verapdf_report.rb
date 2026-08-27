class VerapdfReport < ApplicationRecord
  include VerapdfReportUploader::Attachment(:document)

  belongs_to :pdf_document

  # `tagged` is veraPDF's StructTreeRoot verdict: true = has a tag tree,
  # false = no tags at all, nil = couldn't tell. See VerapdfRunner.parse_tagged.
  def untagged?
    tagged == false
  end

  # Short phrase for outreach copy, or nil when there's nothing notable to say
  # (tagged, or unknown). An untagged PDF is the strongest accessibility signal
  # we surface — it's completely inaccessible to screen readers.
  def tag_status_note
    "UNTAGGED — no structure tree; completely inaccessible to screen readers" if untagged?
  end
end
