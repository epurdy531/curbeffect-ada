class ScanJob < ApplicationJob
  queue_as :default

  def perform(entity_id)
    entity = Entity.find(entity_id)
    require Rails.root.join("lib/entity_scanner")
    docs = EntityScanner.scan(entity)
    Rails.logger.info("ScanJob: entity ##{entity_id} -> #{docs.size} PDF(s)")
  rescue => e
    Rails.logger.error("ScanJob: entity ##{entity_id} failed: #{e.class}: #{e.message}")
  end
end
