class AddStateToEntities < ActiveRecord::Migration[7.2]
  def change
    add_column :entities, :state, :string
  end
end
