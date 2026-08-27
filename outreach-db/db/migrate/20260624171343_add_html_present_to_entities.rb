class AddHtmlPresentToEntities < ActiveRecord::Migration[7.2]
  def change
    add_column :entities, :html_present, :boolean, default: false
    add_column :entities, :continue_contact, :boolean, default: true
  end
end
