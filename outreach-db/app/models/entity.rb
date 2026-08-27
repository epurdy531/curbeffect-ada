class Entity < ApplicationRecord
  has_many :pdf_documents, dependent: :destroy

  validates :contact_email, presence: true

  before_save :derive_state_from_name, if: -> { state.blank? }

  # Pull a two-letter state from a trailing ", ST" on the entity name (e.g.
  # "City of Ames, IA" -> "IA"). Best-effort only; leaves state nil when the
  # name has no suffix (those are backfilled explicitly).
  def derive_state_from_name
    if (m = entity_name.to_s.match(/,\s*([A-Z]{2})\s*\z/))
      self.state = m[1]
    end
  end
end
