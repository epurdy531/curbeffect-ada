class CreateVendorRegistrations < ActiveRecord::Migration[7.2]
  # Local-development-only table. The guard means `rails db:migrate` is a no-op
  # in production (e.g. Heroku), so the table is never created there. The route,
  # controller, and nav link are also gated to development as belt-and-suspenders.
  def change
    return unless Rails.env.development?

    create_table :vendor_registrations do |t|
      t.string  :state
      t.string  :vendor_url
      t.boolean :is_registered, default: false, null: false
      t.string  :registration_username

      t.timestamps
    end
  end
end
