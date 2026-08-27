class AddEntityNameToEntities < ActiveRecord::Migration[7.2]
  def change
    add_column :entities, :entity_name, :string
  end
end
