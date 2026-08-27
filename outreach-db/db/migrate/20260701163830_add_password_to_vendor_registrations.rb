class AddPasswordToVendorRegistrations < ActiveRecord::Migration[7.2]
  def change
    add_column :vendor_registrations, :password, :string
  end
end
