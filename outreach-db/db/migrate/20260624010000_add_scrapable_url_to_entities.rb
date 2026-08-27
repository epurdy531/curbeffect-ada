class AddScrapableUrlToEntities < ActiveRecord::Migration[7.2]
  def change
    # Optional: a page that directly lists PDFs. When set, the scanner uses it
    # as the start URL instead of crawling the homepage (reduces scraping).
    add_column :entities, :scrapable_url, :string
  end
end
