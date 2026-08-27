require "shrine"
require "shrine/storage/file_system"

Shrine.storages = {
  cache: Shrine::Storage::FileSystem.new("storage", prefix: "cache"),
  store: Shrine::Storage::FileSystem.new("storage", prefix: "store"),
}

Shrine.plugin :activerecord
Shrine.plugin :cached_attachment_data
Shrine.plugin :restore_cached_data
Shrine.plugin :determine_mime_type, analyzer: :marcel
Shrine.plugin :validation_helpers
