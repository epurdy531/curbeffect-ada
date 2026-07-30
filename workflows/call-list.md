# Workflow #3 — Daily Call List

## Purpose
Each weekday morning, email Erica a list of 8 cold-call targets to phone.
Erica makes the calls herself. These are not follow-ups — they are fresh
entities chosen as new prospects.

## Scope (important)
- **States: Illinois (IL), Iowa (IA), and Minnesota (MN) only.** Exclude every
  other state.
- **Entity-type quota: 3 cities + 3 libraries + 2 counties = 8 total.**
  - "City" = municipal government (city/town/village). Not counties.
  - "Library" = public library district or municipal library.
  - "County" = a county government (county board / board of supervisors /
    board of commissioners — the county itself, not a city or district
    within it).

## Steps

### 1. Build the list of 8 entities (3 + 3 + 2)
These are NEW cold-call targets, not follow-ups. For each of the three slots
(cities, libraries, counties):

- Find entities subject to ADA Title II in IL / IA / MN of the right type
  that are NOT already in contact-log.md.
- Favor entities likely to have publicly posted PDFs in a consistent format
  (board minutes, agendas, policies, budgets, annual reports) — those fit
  the outreach pitch.
- Add each chosen entity to contact-log.md as a new row (contact fields
  blank as needed, Contact history blank — the row records that we're
  prospecting them; the call itself will be logged when Erica calls).

**Do NOT** shuffle slots between categories. If you can find only 2 cities,
list 2 cities and note "(found N of 3)" under that subheading — don't
substitute extra libraries.

Exclude in all cases:
- Colorado entities (per CLAUDE.md). (Already excluded by the state filter,
  but called out for clarity.)
- Any entity already in contact-log.md (whether emailed, called, or just
  prospected). This implicitly excludes every row marked
  "ON HOLD (out-of-scope state, ...)" in the Notes column — those are
  out-of-scope entities (not IL/IA/MN) parked from earlier work; do not
  re-surface them.
- Any entity whose Platform column would be "CivicPlus" — check the
  homepage footer for "Powered by CivicPlus" / civicplus.com / civicengage.com
  before adding (per CLAUDE.md phase-1 exclusion).

### 2. Research each of the 8 entities
For each entity, find:
- Homepage URL.
- A phone number for the ADA coordinator or IT manager. Only report a number
  that actually appears on a published page — never guess or infer one.
  Include the Source: the URL where the number was found. If no number is
  published, write "no published number found" and give the best
  contact-page URL.
- Remediation vendor(s) the entity appears to already be using — check the
  entity's website for accessibility-overlay widgets (e.g. accessiBe,
  UserWay) or accessibility-statement mentions of a vendor. If none is
  found, write "none identified."

### 3. Assemble the call list
Build the email in exactly this structure, grouped under three subheadings
in the order Cities → Libraries → Counties:

    Subject: todays entity to call
    To: info@curbeffect.com

    Today's 8 cold-call targets — IL / IA / MN only (3 cities, 3 libraries, 2 counties).

    ## Cities (3)

    1. [Entity name]
       Homepage: [URL]
       Phone: [phone number] (ADA coordinator / IT manager)
       Source: [URL where the phone number was found]
       Remediation vendor: [vendor(s), or "none identified"]
       Scan + compose:
           cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_url[[Homepage URL]]'

    2. [Entity name 2]
       ... (same shape, including the Scan + compose line) ...

    3. [Entity name 3]
       ... (same shape, including the Scan + compose line) ...

    ## Libraries (3)

    4. [Entity name]
       ... (same shape) ...

    5. [Entity name]
       ... (same shape) ...

    6. [Entity name]
       ... (same shape) ...

    ## Counties (2)

    7. [Entity name]
       ... (same shape) ...

    8. [Entity name]
       ... (same shape) ...

### 4. Save
Save the email to drafts/call-list-YYYY-MM-DD.md using today's date. Do NOT
send anything — saving the draft is the final step.

## Notes
- Every entity must genuinely be subject to ADA Title II.
- If you can't fill a category's slot count, include as many as you can find
  and note "(found N of M)" under that subheading.
