# CurbEffect — ADA Title II Outreach Automation

## What this project does
Automates daily prospecting and outreach for CurbEffect, a digital
accessibility remediation business. Four jobs:
1. Daily accessibility-news digest emailed to Erica, plus a LinkedIn post draft
2. A prospecting brief emailed to Erica: new entities affected by ADA
   Title II / Section 504, each with a contact, plus the outreach template.
   Runs 7:00am weekdays in four category slots (cities-east, cities-west,
   counties, courts). New prospects are added STRAIGHT TO THE DATABASE, not
   contact-log.md: each run exports the current DB entity list
   (outreach:export_dedup) so the brief dedups against the database, writes
   its new prospect rows to tmp/new-prospects-<slug>-YYYY-MM-DD.md, and
   imports them directly (outreach:import_prospects). contact-log.md is NOT
   written by this flow anymore — it is historical only, and the old bulk
   db:seed_from_log re-seed is retired (guarded behind FORCE=1; re-running it
   would resurrect deleted rows). Files: run-prospect-brief.sh,
   workflows/prospect-brief-<slug>.md, outreach-db/lib/tasks/outreach.rake.
3. A daily "entities to call" shortlist emailed to the business owner
4. Daily true-draft outreach ("drafts to Erica; she sends"): runs at 5:00pm
   the evening BEFORE each weekday send (Sun–Thu), picks up to 3 eligible
   entities per category (city/county/library/court) straight from the
   database, scans each for PDFs, composes a ready-to-send outreach email
   personalized with the contact's first name, and emails the draft to
   erica.mcdevitt@curbeffect.com. Each draft's body is the exact email to
   send, prefixed by one line — "Send to: <recipient>". The job sets the
   entity's email_date so it isn't picked again. NOTHING is auto-sent to the
   outside entity; Erica reviews and sends each herself.
   The DATABASE is the master record here — this job reads eligible entities
   from it and writes email_date back to it; it does NOT sync from
   contact-log.md.
   Files: run-daily-drafts.sh, outreach-db/lib/tasks/outreach.rake
   (outreach:daily_drafts; ENV PER_CATEGORY, DRY_RUN=1),
   com.curbeffect.daily-drafts.plist.

## Key files
- The outreach-db DATABASE is the master record for entities and outreach
  state (email_date/call_date). Add, edit, and delete entities in the
  dashboard UI. Workflows #2 and #4 both read/write the DB, not contact-log.md.
- contact-log.md — HISTORICAL tracking file (Markdown table). Columns:
  Entity, URL, Contact Name, Contact Email, Title, Platform, Contact history,
  Notes. No longer feeds the DB (db:seed_from_log is retired). Kept for
  reference only; do not rely on it being in sync with the database.
- templates/outreach-email.md — the outreach email template
- drafts/ — generated emails and posts land here for review before sending

## Rules (important)
- NEVER send an email automatically. Always write drafts to drafts/
  for human review first.
- All workflows email Erica only; never email outside organizations
  directly.
- Colorado entities ARE now in scope for outreach (the prior "never surface
  Colorado" exclusion was lifted by Erica on 2026-06-24). Treat CO like any
  other state.
- Higher-education institutions are NOT outreach targets. Community colleges
  were dropped as a target on 2026-06-24 (replaced by courts); universities
  and four-year colleges were always excluded. Never surface any of them —
  not as workflow #2 email prospects, and not on the workflow #3 call list.
  Any already in contact-log.md are historical records only and must never be
  actioned for follow-up.
- Currently exclude CivicPlus customers from outreach (phase 1). Will
  revisit in phase 2.
- Currently avoid the large central cities of Chicago, IL and Rochester, MN
  in favor of their suburbs. Exclude ALL public entities serving those two
  cities — city governments, school districts (e.g. Chicago Public Schools,
  Rochester ISD 535), libraries (e.g. Chicago Public Library, Rochester
  Public Library, MN), and City Colleges of Chicago — not as workflow #2
  email prospects and not on the workflow #3 call list. Suburbs of both
  cities remain eligible (e.g. Oak Lawn, Tinley Park, Evanston, Elmhurst,
  Cicero, Skokie, Oak Park for Chicago). This is geographic: it does NOT
  affect Rochester, NY or Iowa City, IA, which stay eligible. Entities
  already in contact-log.md are kept only as historical records and must
  never be actioned for follow-up.

## Messaging context (keep current)
- DOJ extended the Title II web accessibility deadline to April 2027
  (entities serving 50,000+) and April 2028 (smaller entities, special
  districts).
- The extension does NOT pause litigation risk — plaintiffs can still sue.
- HHS also extended its Section 504 digital-accessibility deadlines
  (interim final rule, May 2026): recipients with 15+ employees now have
  until May 11, 2027, and recipients with fewer than 15 until May 10, 2028.
  Like the Title II extension, this moves the deadlines, not the liability —
  HHS-funded healthcare and education entities can still be sued today.
- Lead outreach with continued litigation risk, not "deadline is imminent".

## Target entities
State/local governments, counties, courts, special districts, libraries, and
HHS-funded healthcare/education organizations.
(On 2026-06-24, K–12 public school districts and public community colleges were
dropped as targets — replaced by counties and courts respectively.)