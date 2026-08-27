# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## demo work
* remember - we share the bucket between dev, prod, an staging.  so we only need to seed a demo set
  within one environment (usually development)

* seed a demo set so we have it in proction:
    * docker compose exec web bundle exec rake 'demos:export[City of Ames]'


## docker interactions
* console
    * docker compose exec web bin/rails console

* shell
    * docker compose exec web bin/rails db:migrate

* bash
    * docker compose exec web bash

* logs
    * docker compose logs -f

* one off tasks and setup 
    * docker compose run --rm web rails g scaffold Post title:string

* install gems
    * docker compose run --rm web bundle install



# running pdf compliance reports on cities:
Your command to report on a city

  From the repo, run (in your terminal — ! prefix works here too):

  cd outreach-db && bin/rails 'scan:by_url[https://CITY-WEBSITE-URL/]'

  It scans the city's PDFs with veraPDF (including the untagged check) and emails the
  report to info@curbeffect.com. If the city isn't in contact-log.md yet, seed
  first:  
  
  cd outreach-db
  bin/rails db:seed_from_log
  bin/rails 'scan:by_url[https://example.gov/]'

  Caveat: scan:by_url only works when the PDFs are directly crawlable from the
  homepage (plain WordPress/direct-.pdf sites). For the portal-based sites we kept
  hitting — Granicus ViewPublisher, Legistar, CivicPlus DocumentCenter/AgendaCenter,
  Revize Document Center, SharePoint, Joomla, CivicWeb — the simple crawl returns 0,
  which is exactly why I had to hand-build those scans. (There's also
  scan:dir[folder,label,url] to scan PDFs you download yourself.)
                                    
  Does it use Claude tokens?

  No. scan:by_url / scan:dir / scan:by_email are plain Ruby + veraPDF (a local Java
  tool) + send-digest.py (SMTP). Nothing in that pipeline calls Claude/an LLM, so
  running these yourself costs zero Claude tokens — just your machine and email.
  
  What does cost tokens is asking me to do it — especially the tricky portal cases
  where I research contacts and write custom scripts. The plain scan:by_url command
  in your terminal is free.
  
  That's also why productionizing those portal handlers
  (Granicus/Legistar/Revize-redirect/etc.) into PdfFetcher would pay off: it'd make
  scan:by_url work on the hard sites too, so you could self-serve them token-free
  instead of routing through me. Offer still stands if you want it.


  ---- 
  ## moving to production dashboard to run jobs myself.  claude notes so far:
  Working now: the dashboard (local)

  Run it:
  cd outreach-db && bin/rails server
  Open http://localhost:3000 → login curbeffect / curbeffect (override with DASH_USER/DASH_PASS).

  What's live:
  - Entities list — sorted by your Priority column, with per-entity untagged counts; search + priority filter.
  - Entity page — contact, history, scan results (untagged flags, failure counts, PDF links), Scan now button.
  - Add entity form (you supply the data) — including the new optional Scrapable URL field.
  - Scan a URL box in the header — scans any URL ad-hoc (creates the entity if new).
  - Scans run as background jobs; password-protected; nothing calls Claude → token-free to run.
  - The scanner now uses scrapable_url when set (skips homepage crawling).

  Remaining (the other half of "both")

  Phase 2 — engine hardening: fold the portal adapters (Legistar WebAPI, Granicus ViewPublisher, CivicWeb, Revize-redirect, Joomla) into PdfFetcher. Right now the dashboard's "Scan" works on
  simple sites + the Granicus handlers already in the fetcher, but a Revize/Joomla/CivicWeb site still needs the hand-rolled logic. This makes the button reliable everywhere.

  Phase 3 — Heroku: you're already on Postgres ✅ and have a Dockerfile ✅, so it's: heroku.yml container deploy → extend the Dockerfile to install Java + veraPDF → swap the job adapter to
  GoodJob (Postgres-backed, no Redis) + a worker dyno → set config vars (DASH_USER/PASS, GMAIL_APP_PASSWORD, VERAPDF_BIN).

  Two notes: the list page does an N+1 on scan results (fine at 365 rows, worth a counter-cache before it grows), and once the dashboard is the place you add/edit entities, the DB becomes the
  master (contact-log.md stays as the import/seed source).


  ## migration notes
  1. Creating a New TableFormat: Create<TableName> followed by columns.Command: 
      ```ruby
        bin/rails generate migration CreateProducts name:string price:decimalGenerated Code:rubyclass 
        CreateProducts < ActiveRecord::Migration[8.0]
        def change
          create_table :products do |t|
            t.string :name
            t.decimal :price

            t.timestamps
          end
        end
      end
      ```
    Use code with caution.2. Adding Columns to an Existing TableFormat: Add<Columns>To<Table>.Command: 
      ```ruby
        bin/rails generate migration AddPartNumberToProducts part_number:stringGenerated 
        
        Code:rubyclass AddPartNumberToProducts < ActiveRecord::Migration[8.0]
          def change
            add_column :products, :part_number, :string
          end
        end
      ```
    Use code with caution.3. Removing Columns from a TableFormat: Remove<Columns>From<Table>.Command: 
      ```ruby 
        bin/rails generate migration RemovePartNumberFromProducts part_number:stringGenerated Code:rubyclass 
        
        RemovePartNumberFromProducts < ActiveRecord::Migration[8.0]
          def change
            remove_column :products, :part_number, :string
          end
        end
      ```
    Use code with caution.4. Creating Joins / ReferencesFormat: Add column names with a :references or :belongs_to type to automatically handle foreign keys and indexes.Command: 
      ```ruby
        bin/rails generate migration AddUserRefToProducts user:referencesGenerated 
        
        Code:rubyclass AddUserRefToProducts < ActiveRecord::Migration[8.0]
          def change
            add_reference :products, :user, null: false, foreign_key: true
          end
        end
      ```
    Use code with caution.

    bin/rails generate migration AddDetailsToUsers status:string active:boolean




