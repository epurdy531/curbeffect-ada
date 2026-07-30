# Workflow #2e — Prospect Brief (County / District Courts)

## Purpose
Find **5 new ADA Title II county or district courts**, look up a contact for
each, add them to the tracker, and save ONE summary draft for Erica that
lists all 5 prospects with the scan command for each. Erica runs the
scan command per prospect; the scan task itself composes and emails the
per-entity outreach draft (with veraPDF stats filled in from the worst-failing
PDF). Erica reviews each composed outreach draft and sends it.

This is one of four parallel category briefs (cities-east, cities-west,
counties, courts) that together replace the old single
20-entity brief — each is small enough to finish reliably in a single
headless run.

## Steps

### 1. Find 5 new county / district courts in IL / IA / MN
Use web search to identify 5 distinct **trial-level courts** — the court (or
its clerk's office) as a public entity with its own web presence — located in
**Illinois, Iowa, or Minnesota only**:
- **Illinois**: a county **Circuit Court** / Clerk of the Circuit Court, or a
  Judicial Circuit (e.g., "18th Judicial Circuit Court of DuPage County").
- **Iowa**: the **Iowa District Court** for a given county (and/or its county
  clerk-of-court page).
- **Minnesota**: a **District Court** for a county / judicial district.

Favor courts likely to have many publicly posted PDFs in a consistent format
(local court rules, standing orders, self-help and pro-se forms, fee
schedules, notices, calendars, jury info), since that fits the
free-remediation offer in the outreach template.

Read tmp/prospect-dedup.txt first — it is the current outreach-db entity
list (the database is the master record; contact-log.md is now historical
only). EXCLUDE every entity already listed there (including ones added
earlier today by other category briefs). Entries tagged [DO NOT CONTACT]
are parked and must not be re-surfaced.

For each candidate entity, fetch the entity's homepage and check the page
source for CivicPlus markers — specifically "Powered by CivicPlus" in the
footer, or any reference to civicplus.com or civicengage.com. If detected,
skip the entity and find another (CivicPlus customers are excluded in phase
1). If no marker is detected, the entity is eligible — record its Platform
as "—" when adding it to the tracker in step 3. If the homepage cannot be
fetched at all, skip the entity to be safe.

### 2. Find a contact for each entity
For each entity, find the best available contact — ideally a named ADA /
Section 504 coordinator, **Clerk of the Circuit Court / Clerk of Court**,
**Trial Court Administrator / Court Administrator**, or IT / communications
staffer, with a direct email and job title. If no named individual is
publicly listed, use the most relevant department or role-based contact and
note that it is role-based.

Only report an email address that actually appears on a published page —
never guess or infer one from a name pattern. If no email is publicly
listed, write "email not publicly listed" and give the best contact-page
URL instead.

Record: entity name, homepage URL, contact name, contact email (or "email
not publicly listed"), contact title, and a Source — the URL of the page
where the contact was found.

### 3. Record the entities for direct DB import
Write each of the 5 entities as a new pipe-delimited row to
tmp/new-prospects-courts-YYYY-MM-DD.md (create the file; one row per entity,
no header line). Use the tracker's exact column order:

    | Entity | Priority | URL | Contact Name | Contact Email | Title | Platform | Contact history | Notes |

Fill in Entity, URL, Contact Name, Contact Email, Title, and Platform. Leave
Priority and Contact history blank — these are new prospects, not yet
contacted. Do NOT edit contact-log.md: the database is the master record now,
and run-prospect-brief.sh imports these rows straight into it after this run.

### 4. Assemble a single summary draft for all 5 prospects
Build ONE draft email that lists all 5 prospects in a single message.
Use exactly this structure:

    Subject: prospect brief (courts) for YYYY-MM-DD
    To: info@curbeffect.com

    5 new ADA Title II county/district-court prospects today from IL / IA /
    MN. For each one, run the scan command below: it scans up to 5 of the
    entity's PDFs through veraPDF, then composes an outreach draft (using
    templates/outreach-email.md with the worst-failing PDF's stats filled
    in) and emails it to you for review.

    1. [Entity name]
       Contact: [contact name], [title] — [contact email]
       Source: [URL where the contact info was found]
       Time zone: [tz], so send the eventual outreach around [X:XX a.m. Mountain Time] to land at 10:15 a.m. their time
       Scan + compose:
           bin/rails 'scan:by_email[[contact email]]'

    2. [Entity name 2]
       ... (same shape) ...

    ... (entries 3 through 5) ...

Derive each Time zone line as follows:

- **Time zone / send time** — the time, in Mountain Time, that Erica should
  schedule the eventual outreach so it lands in the recipient's inbox at
  10:15 a.m. their local time:
  - Recipient in Central Time → send 9:15 a.m. Mountain Time
    (IL, IA, MN are all Central Time year-round.)
  State which time zone the recipient is in. Best send days are
  Tuesday–Thursday.

### 5. Save
Save the single summary draft as
drafts/prospect-brief-courts-YYYY-MM-DD.md using today's date. Do NOT
generate per-entity outreach drafts here — those are produced later by the
scan task when Erica runs the scan command. Do NOT send anything;
saving the draft is the final step for this workflow. Sending is handled
separately by run-prospect-brief.sh.

## Notes
- Every entity must genuinely be subject to ADA Title II. Trial courts /
  clerks of court are state-or-local judicial entities and qualify. No
  private entities, no federal courts.
- Honor every exclusion rule in CLAUDE.md (CivicPlus customers,
  universities/4-year colleges). NOTE: the Colorado exclusion was lifted
  2026-06-24 — Colorado is now in scope like any other state.
- Trial-level (county/district) courts only — not appellate or supreme
  courts, and not the state Administrative Office of the Courts.
- **Scope: Illinois, Iowa, or Minnesota only.** Out-of-scope states are
  marked "ON HOLD (out-of-scope state, ...)" in contact-log.md; do not
  re-surface them.
- If you can't find 5 eligible courts in IL/IA/MN that aren't already in the
  tracker, include as many as you can and note "(found N of 5)" at the top
  of the list. Do NOT cross into other states to fill the count.
