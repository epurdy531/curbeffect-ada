class AddNotesToVendorRegistrations < ActiveRecord::Migration[7.2]
  def change
    add_column :vendor_registrations, :notes, :string
  end
end
