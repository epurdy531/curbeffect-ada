# Workflow #2 — Prospect Brief

## Purpose
Find 20 new ADA Title II entities to approach — split as **10 cities, 5
courts, and 5 county governments** — look up a contact for
each, add them to the tracker, and save ONE summary draft for Erica that
lists all 20 prospects (grouped by category) with the seed-and-scan command
for each. Erica runs the scan command per prospect; the scan task itself
composes and emails the per-entity outreach draft (with veraPDF stats filled
in from the worst-failing PDF). Erica reviews each composed outreach draft
and sends it.

## Steps

### 1. Find 20 new entities — by category
Use web search to identify 20 distinct organizations subject to ADA Title II
in three categories:

- **10 city governments** (city/town/village, not counties)
- **5 county/district courts** (IL Circuit Courts, IA/MN District Courts — trial-level courts, not appellate)
- **5 county governments** (the county itself — county board / board of
  supervisors / board of commissioners — not cities or districts within it)

Favor entities likely to have many publicly posted PDFs in a consistent
format (agendas, minutes, forms, reports), since that fits the free-
remediation offer in the outreach template.

Read contact-log.md first and EXCLUDE every entity already listed there.

For each candidate entity, fetch the entity's homepage and check the page
source for CivicPlus markers — specifically "Powered by CivicPlus" in the
footer, or any reference to civicplus.com or civicengage.com. If detected,
skip the entity and find another (CivicPlus customers are excluded in phase
1). If no marker is detected, the entity is eligible — record its Platform
as "—" when adding it to the tracker in step 3. If the homepage cannot be
fetched at all, skip the entity to be safe.

### 2. Find a contact for each entity
For each entity, find the best available contact — ideally a named ADA
coordinator, IT or web director, or communications staffer, with a direct
email and job title. If no named individual is publicly listed, use the
most relevant department or role-based contact and note that it is
role-based.

Only report an email address that actually appears on a published page —
never guess or infer one from a name pattern. If no email is publicly
listed, write "email not publicly listed" and give the best contact-page
URL instead.

Record: entity name, homepage URL, contact name, contact email (or "email
not publicly listed"), contact title, and a Source — the URL of the page
where the contact was found.

### 3. Add the entities to the tracker
Append each of the 20 entities to contact-log.md as new table rows,
filling in Entity, URL, Contact Name, Contact Email, and Title. Leave the
Contact history column blank — these are prospects, not yet contacted.

### 4. Assemble a single summary draft for all prospects
Build ONE draft email that lists all 20 prospects in a single message,
grouped under three subheadings (Cities → Courts → Counties).
Use exactly this structure:

    Subject: prospect brief for YYYY-MM-DD
    To: info@curbeffect.com

    20 new ADA Title II prospects today (10 cities, 5 county/district courts,
    5 county governments). For each one, run the scan command below: it
    seeds the new entity into the outreach-db, scans up to 5 of the entity's
    PDFs through veraPDF, then composes an outreach draft (using
    templates/outreach-email.md with the worst-failing PDF's stats filled in)
    and emails it to you for review.

    ## Cities (10)

    1. [Entity name]
       Contact: [contact name], [title] — [contact email]
       Source: [URL where the contact info was found]
       Time zone: [tz], so send the eventual outreach around [X:XX a.m. Mountain Time] to land at 10:15 a.m. their time
       Scan + compose:
           cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[[contact email]]'

    2. [Entity name 2]
       ... (same shape) ...

    ... (entries 3 through 10) ...

    ## Courts (5)

    11. [Entity name]
        ... (same shape) ...

    ... (entries 12 through 15) ...

    ## Counties (5)

    16. [Entity name]
        ... (same shape) ...

    ... (entries 17 through 20) ...

Derive each Time zone line as follows:

- **Time zone / send time** — the time, in Mountain Time, that Erica should
  schedule the eventual outreach so it lands in the recipient's inbox at
  10:15 a.m. their local time:
  - Recipient in Eastern Time → send 8:15 a.m. Mountain Time
  - Recipient in Central Time → send 9:15 a.m. Mountain Time
  - Recipient in Mountain Time → send 10:15 a.m. Mountain Time
  - Recipient in Pacific Time → send 11:15 a.m. Mountain Time
  State which time zone the recipient is in. Best send days are
  Tuesday–Thursday. If the entity is somewhere that does not observe
  daylight saving time (Arizona), or in a state that spans two time zones,
  work out the correct offset for that specific location and today's date
  instead of using the table.

### 5. Save
Save the single summary draft as drafts/prospect-brief-YYYY-MM-DD.md using
today's date. Do NOT generate per-entity outreach drafts here — those are
produced later by the scan task when Erica runs the seed-and-scan command.
Do NOT send anything; saving the draft is the final step for this workflow.
Sending is handled separately by run-prospect-brief.sh.

## Notes
- Every entity must genuinely be subject to ADA Title II. No private
  companies or federal agencies.
- Honor every exclusion rule in CLAUDE.md (Colorado entities, CivicPlus
  customers, universities/4-year colleges).
- If you can't find the full count in a category, include as many as you can
  find in that section and note "(found N of 5)" or similar under the
  subheading. Do NOT shuffle slots between categories to compensate.
