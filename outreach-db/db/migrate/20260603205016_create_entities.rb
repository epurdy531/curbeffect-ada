class CreateEntities < ActiveRecord::Migration[7.2]
  def change
    create_table :entities do |t|
      t.string :url
      t.string :contact_name, default: "none"
      t.string :contact_email, null: false
      t.string :contact_title
      t.string :platform, default: "?"
      t.date :email_date
      t.date :call_date

      t.timestamps
    end
  end
end
