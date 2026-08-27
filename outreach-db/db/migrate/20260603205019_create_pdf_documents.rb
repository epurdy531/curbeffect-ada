class CreatePdfDocuments < ActiveRecord::Migration[7.2]
  def change
    create_table :pdf_documents do |t|
      t.string :file_name
      t.string :file_url
      t.jsonb :document_data
      t.references :entity, null: false, foreign_key: true

      t.timestamps
    end
  end
end
