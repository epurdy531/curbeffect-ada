require "uri"

class ScansController < ApplicationController
  # Re-scan an existing entity.
  def create
    entity = Entity.find(params[:id])
    ScanJob.perform_later(entity.id)
    redirect_to entity, notice: "Scan started — refresh in a moment to see results."
  end

  # Ad-hoc: scan any URL. Finds or creates an entity by URL, then scans.
  def url
    raw = params[:url].to_s.strip
    return redirect_to(entities_path, alert: "Enter a URL to scan.") if raw.blank?
    raw = "https://#{raw}" unless raw.match?(%r{\Ahttps?://}i)

    entity = Entity.find_by(url: raw) || Entity.find_by(url: "#{raw.chomp('/')}/") ||
             Entity.find_by(url: raw.chomp("/"))
    unless entity
      host = (URI.parse(raw).host rescue nil) || raw
      entity = Entity.create!(
        entity_name: host,
        url: raw,
        contact_email: "noemail-#{host.parameterize}@placeholder.invalid",
        notes: "Added via dashboard “Scan a URL” #{Time.current.utc.strftime('%Y-%m-%d')}.",
      )
    end
    ScanJob.perform_later(entity.id)
    redirect_to entity, notice: "Scan started for #{raw} — refresh in a moment."
  end
end
