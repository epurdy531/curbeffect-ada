namespace :outreach do
  desc "Daily true-drafts: pick up to N eligible entities per category (city/county/court), scan each, compose a ready-to-send draft, email it to Erica, and set email_date. ENV: PER_CATEGORY (default 3), DRY_RUN=1 (compose only, no email/email_date)."
  task daily_drafts: :environment do
    require Rails.root.join("lib/entity_scanner")
    require Rails.root.join("lib/outreach_composer")
    require "date"

    per_category = (ENV["PER_CATEGORY"].presence || 3).to_i
    dry          = ENV["DRY_RUN"].present?
    deliver_to   = "erica.mcdevitt@curbeffect.com"
    today        = Date.today.iso8601
    project_root = Rails.root.join("..").expand_path

    category_of = lambda do |name|
      n = name.to_s
      next "court"   if n =~ /court|circuit|clerk of/i
      next "library" if n =~ /\blibrar/i  # "library"/"libraries", incl. library districts
      # School districts, colleges, and universities are not outreach categories
      # — exclude them even when the name contains "County" (e.g. "Wake County
      # Public School System" is a school district, not a county government, and
      # community colleges/universities are off-target).
      next nil       if n =~ /school|college|universit|\bdistrict\b/i
      next "city"    if n =~ /\A\s*(city|village|town)\s+of/i
      next "county"  if n =~ /\bcounty\b/i
      nil
    end

    real_email = "contact_email LIKE '%@%' AND contact_email NOT ILIKE '%placeholder.invalid%' " \
                 "AND contact_email NOT ILIKE '%not publicly listed%' " \
                 "AND contact_email NOT ILIKE 'noemail-%'"
    pri = Arel.sql("CASE priority WHEN 'High' THEN 0 WHEN 'Medium' THEN 1 WHEN 'Low' THEN 2 ELSE 3 END")

    eligible = Entity.where("continue_contact IS NOT FALSE")
                     .where(email_date: nil)
                     .where(real_email)
                     .order(pri, :entity_name)

    by_cat = Hash.new { |h, k| h[k] = [] }
    eligible.each { |e| (c = category_of.call(e.entity_name)) && by_cat[c] << e }

    total = 0
    %w[city county library court].each do |cat|
      # Prefer entities already known to have scannable PDFs (faster, reliable).
      candidates = by_cat[cat].sort_by { |e| e.pdf_documents.joins(:verapdf_report).exists? ? 0 : 1 }
      picked = 0
      candidates.each do |e|
        break if picked >= per_category
        begin
          EntityScanner.scan(e)
        rescue => ex
          puts "  [#{cat}] scan error: #{e.entity_name}: #{ex.class}: #{ex.message}"
          next
        end
        unless OutreachComposer.worst_pdf(e)
          puts "  [#{cat}] skip (0 scannable PDFs): #{e.entity_name}"
          next
        end
        slug  = e.entity_name.to_s.parameterize
        draft = project_root.join("drafts", "outreach-draft-#{slug}-#{today}.md")
        OutreachComposer.compose_true_draft(e, draft_path: draft, deliver_to: deliver_to)

        if dry
          puts "  [#{cat}] DRY: #{e.entity_name} -> #{draft} (to #{e.contact_email})"
        else
          cmd = %(bash -lc 'source ~/.curbeffect-secrets.env && DIGEST_RECIPIENT=#{deliver_to} python3 send-digest.py "#{draft}"')
          ok = Dir.chdir(project_root) { system(cmd) }
          e.update!(email_date: today) if ok
          puts "  [#{cat}] #{ok ? 'SENT (email_date set)' : 'SEND FAILED'}: #{e.entity_name} (#{e.contact_email})"
        end
        picked += 1
        total += 1
      end
      puts "[#{cat}] prepared #{picked}/#{per_category}"
    end
    puts "TOTAL drafts: #{total}#{' (DRY RUN — nothing emailed, no email_date set)' if dry}"
  end

  desc "Export the current DB entity list to a dedup file for the prospect-brief workflow " \
       "(the DB is the master record; contact-log.md is historical only). ENV: OUT (default tmp/prospect-dedup.txt)"
  task export_dedup: :environment do
    out = ENV["OUT"].presence || Rails.root.join("tmp", "prospect-dedup.txt").to_s
    FileUtils.mkdir_p(File.dirname(out))
    lines = Entity.order(:entity_name).pluck(:entity_name, :state, :continue_contact).map do |name, state, cont|
      next if name.blank?
      "#{name}#{state.present? ? " (#{state})" : ''}#{cont == false ? ' [DO NOT CONTACT]' : ''}"
    end.compact
    File.write(out, lines.join("\n") + "\n")
    puts "wrote #{lines.size} entities to #{out}"
  end

  desc "Import this run's new prospects straight into the DB from a pipe-delimited rows file " \
       "(same column order as contact-log.md: Entity|Priority|URL|Contact Name|Contact Email|Title|Platform|History|Notes). " \
       "Dedup by contact_email; blank/invalid emails get a stable placeholder. Replaces db:seed_from_log for the " \
       "prospect-brief flow — it inserts ONLY the given rows and never touches existing ones. " \
       "Usage: bin/rails 'outreach:import_prospects[/abs/path/new-prospects.md]'"
  task :import_prospects, [:file] => :environment do |_t, args|
    path = args.fetch(:file)
    raise "prospects file not found: #{path}" unless File.exist?(path)

    rows = File.readlines(path).map(&:rstrip).select do |l|
      l.start_with?("|") && !l.start_with?("| Entity") && !l.start_with?("| --")
    end

    created = 0
    skipped = 0
    rows.each do |line|
      cols = line.split("|").map(&:strip)
      # cols: ["", entity_name, priority, url, contact_name, contact_email, contact_title, platform, history, notes, ""]
      next if cols.size < 10
      _, name, priority, url, c_name, c_email, c_title, platform, _history, notes, = cols
      next if name.blank?

      # Prospects sometimes have no published email (you call them). The DB requires
      # a unique, non-null contact_email, so synthesize a stable placeholder from the
      # entity name — mirrors the old seed behavior and keeps scan:by_url usable.
      if c_email.blank? || c_email !~ /@/
        slug = name.parameterize.presence || url.to_s.parameterize.presence || "row-#{created + skipped}"
        c_email = "noemail-#{slug}@placeholder.invalid"
      end

      if Entity.exists?(contact_email: c_email)
        skipped += 1
        puts "  skip (already in DB): #{name}"
        next
      end

      Entity.create!(
        entity_name: name,
        url: url.presence,
        contact_name: c_name.presence || "none",
        contact_title: c_title.presence,
        contact_email: c_email,
        platform: platform.presence || "?",
        priority: priority.presence,
        notes: notes.presence,
      )
      created += 1
      puts "  created: #{name}"
    end

    puts "done. created=#{created} skipped=#{skipped}"
  end
end
