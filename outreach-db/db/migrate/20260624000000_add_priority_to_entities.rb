class AddPriorityToEntities < ActiveRecord::Migration[7.2]
  def change
    add_column :entities, :priority, :string  # High | Medium | Low | nil
  end
end
