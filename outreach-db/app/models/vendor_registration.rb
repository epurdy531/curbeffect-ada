class VendorRegistration < ApplicationRecord
  default_scope { order(:state) }

  validates :state, presence: true
end
