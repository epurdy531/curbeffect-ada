namespace :db do
  desc "RETIRED: bulk-seed entities from ../contact-log.md. The DB is now the master " \
       "record and contact-log.md is historical only; the prospect-brief flow imports " \
       "new prospects directly via outreach:import_prospects. Re-running this would " \
       "resurrect entities you've deleted from the DB. Guarded behind FORCE=1."
  task seed_from_log: :environment do
    unless ENV["FORCE"] == "1"
      abort <<~MSG
        db:seed_from_log is retired. The database is the master record now; contact-log.md
        is a historical file and re-seeding from it would recreate entities that were
        deleted from the DB (e.g. de-duplicated rows). New prospects enter the DB directly
        via `outreach:import_prospects`. If you genuinely need the old bulk re-seed anyway,
        re-run with FORCE=1.
      MSG
    end

    path = Rails.root.join("..", "contact-log.md")
    raise "contact-log.md not found at #{path}" unless File.exist?(path)

    rows = File.readlines(path).map(&:rstrip).select { |l| l.start_with?("|") && !l.start_with?("| Entity") && !l.start_with?("| --") }

    created, updated = 0, 0
    rows.each do |line|
      cols = line.split("|").map(&:strip)
      # cols: ["", entity_name, priority, url, contact_name, contact_email, contact_title, platform, history, notes, ""]
      next if cols.size < 10
      _, name, priority, url, c_name, c_email, c_title, platform, history, notes, = cols
      # Call-list prospects often have no published email (you call them), but
      # the DB requires a unique, non-null contact_email. Synthesize a stable
      # placeholder from the entity name so the row still seeds and becomes
      # scannable via scan:by_url. The reserved .invalid TLD guarantees it can
      # never be a deliverable address. contact-log.md stays clean (blank = no
      # real email); the placeholder lives only in the DB and is regenerated
      # identically on every re-seed.
      if c_email.blank?
        slug = name.to_s.parameterize.presence || url.to_s.parameterize.presence || "row-#{created + updated}"
        c_email = "noemail-#{slug}@placeholder.invalid"
      end

      email_date    = history[/Email\s*[–-]\s*(\d{4}-\d{2}-\d{2})/, 1]
      call_date     = history[/Call[\w\/]*\s*[–-]\s*~?(\d{4}-\d{2}-\d{2})/, 1]
      linkedin_date = history[/LinkedIn\s*[–-]\s*(\d{4}-\d{2}-\d{2})/, 1]

      attrs = {
        entity_name: name.presence,
        url: url.presence,
        contact_name: c_name.presence || "none",
        contact_title: c_title.presence,
        platform: platform.presence || "?",
        priority: priority.presence,
        notes: notes.presence,
      }
      # Outreach dates sync log -> DB only when the log actually records one.
      # Never let a blank history column clear a date the DB already owns: the
      # daily_drafts job (workflow #4) writes email_date straight to the DB and
      # does NOT update contact-log.md, so overwriting with nil here would wipe
      # that state and re-surface already-emailed entities on the next run.
      attrs[:email_date]    = email_date    if email_date
      attrs[:call_date]     = call_date     if call_date
      attrs[:linkedin_date] = linkedin_date if linkedin_date

      entity = Entity.find_by(contact_email: c_email)
      if entity
        entity.update!(attrs)
        updated += 1
      else
        Entity.create!(attrs.merge(contact_email: c_email))
        created += 1
      end
      puts "  #{entity ? 'updated' : 'created'}: #{name}"
    end

    puts "done. created=#{created} updated=#{updated}"
  end
end
