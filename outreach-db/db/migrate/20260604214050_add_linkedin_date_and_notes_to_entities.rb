class AddLinkedinDateAndNotesToEntities < ActiveRecord::Migration[7.2]
  def change
    add_column :entities, :linkedin_date, :date
    add_column :entities, :notes, :string
  end
end
