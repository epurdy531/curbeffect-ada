# CurbEffect — ADA Title II Outreach Automation

## What this project does
Automates daily prospecting and outreach for CurbEffect, a digital
accessibility remediation business. Three jobs:
1. Daily accessibility-news digest emailed to Erica, plus a LinkedIn post draft
2. Outreach emails to new entities affected by ADA Title II / Section 504
3. A daily "entities to call" shortlist emailed to the business owner

## Key files
- entities.csv — master tracking database. Columns: name, homepage,
  contact_name, contact_phone, remediation_vendor, status,
  date_emailed, date_called, notes
- templates/outreach-email.md — the outreach email template
- drafts/ — generated emails and posts land here for review before sending

## Rules (important)
- NEVER send an email automatically. Always write drafts to drafts/
  for human review first.
- Do not email any entity already in entities.csv with a date_emailed
  within the last 7 days.
- If an entity was emailed MORE than 7 days ago with no reply logged,
  mark its list entry as "follow up".
- Always append the cumulative list of already-emailed entities to the
  bottom of outreach emails.

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
State/local governments, public colleges & universities, courts, special
districts, public schools, libraries, and HHS-funded healthcare/education
organizations.