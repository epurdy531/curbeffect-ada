class AddCityToVendorRegistration < ActiveRecord::Migration[7.2]
  def change
    add_column :vendor_registrations, :city, :string, default: "entire state"
  end
end
