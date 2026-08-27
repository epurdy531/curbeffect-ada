class CreateVerapdfReports < ActiveRecord::Migration[7.2]
  def change
    create_table :verapdf_reports do |t|
      t.string :report_file_name
      t.integer :report_failures
      t.integer :report_total_checks
      t.jsonb :document_data
      t.references :pdf_document, null: false, foreign_key: true, index: { unique: true }

      t.timestamps
    end
  end
end
