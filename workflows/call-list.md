# Workflow #3 — Daily Call List

## Purpose
Each weekday morning, email Erica a list of 4 entities to phone, prioritizing follow-up calls to entities she has already emailed. Erica makes the calls herself.

## Steps

### 1. Build the list of 4 entities
Prioritize FOLLOW-UPS first, then new cold-call targets.

Follow-up candidates: entities in contact-log.md that were emailed 7 or more days ago and have NOT yet been called. Order them oldest-email-first (the longest-overdue first). Fill the 4 with these.

If fewer than 4 follow-ups are due, top up the remaining slots with new cold-call targets: organizations subject to ADA Title II not already in contact-log.md. Add any new cold-call targets to contact-log.md as new rows (contact fields blank as needed, Contact history blank).

Exclude in all cases:
- Colorado entities (per CLAUDE.md).
- Any entity already called within the last 7 days.
- For follow-ups, any entity whose only email is marked bounced/returned — it was not successfully contacted, so it is not a follow-up (it may still appear as a new cold-call target, but not labeled FOLLOW UP).

### 2. Research each of the 4 entities
For each entity, find:
- Homepage URL.
- A phone number for the ADA coordinator or IT manager. Only report a number that actually appears on a published page — never guess or infer one. Include the Source: the URL where the number was found. If no number is published, write "no published number found" and give the best contact-page URL.
- Remediation vendor(s) the entity appears to already be using — check the entity's website for accessibility-overlay widgets (e.g. accessiBe, UserWay) or accessibility-statement mentions of a vendor. If none is found, write "none identified."

### 3. Assemble the call list
Build the email in exactly this structure:

    Subject: todays entity to call
    To: erica.mcdevitt@curbeffect.com

    Today's 4 entities to call:

    1. [Entity name]  [add "— FOLLOW UP" if this is a follow-up]
       Homepage: [URL]
       Phone: [phone number] (ADA coordinator / IT manager)
       Source: [URL where the phone number was found]
       Remediation vendor: [vendor(s), or "none identified"]
       [for follow-ups only, add: Previously emailed: [date]]

    [...entries 2-4 in the same format...]

### 4. Save
Save the email to drafts/call-list-YYYY-MM-DD.md using today's date. Do NOT send anything — saving the draft is the final step.

## Notes
- The follow-up logic depends entirely on contact-log.md being current. An entity drops off the follow-up list only once a Call entry is logged on its row.
- Every entity must genuinely be subject to ADA Title II.
