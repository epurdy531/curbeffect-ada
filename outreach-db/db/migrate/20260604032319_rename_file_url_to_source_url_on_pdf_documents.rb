class RenameFileUrlToSourceUrlOnPdfDocuments < ActiveRecord::Migration[7.2]
  def change
    rename_column :pdf_documents, :file_url, :source_url
  end
end
