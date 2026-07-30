Subject: prospect brief (cities batch B) for 2026-06-23
To: info@curbeffect.com

5 new ADA Title II city-government prospects today from IL / IA / MN.
(The cities-east batch has not run today, so all 5 below are net-new.)
For each one, run the scan command below: it seeds the new entity into
the outreach-db, scans up to 5 of the entity's PDFs through veraPDF,
then composes an outreach draft (using templates/outreach-email.md with
the worst-failing PDF's stats filled in) and emails it to you for review.

1. City of West Des Moines, IA
   Contact: Audrey Kennis, ADA Coordinator / Director of Human Services — HumanServices@wdm.iowa.gov (her personal mailbox isn't published in plaintext; HumanServices@ is the published department inbox. ADA Coordinator role confirmed via the city staff directory.)
   Source: https://www.wdm.iowa.gov/government/human-services
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[HumanServices@wdm.iowa.gov]'

2. City of Fort Dodge, IA
   Contact: Jamie Anderson, Human Resource Director (best published-email contact; no separately named ADA Coordinator) — janderson@fortdodgeiowa.org
   Source: https://www.fortdodgeiowa.org/egov/apps/staff/directory.egov?id=13&view=detail
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[janderson@fortdodgeiowa.org]'

3. City of Shakopee, MN
   Contact: Amanda Lillie, Communications Manager — alillie@ShakopeeMN.gov
   Source: https://www.shakopeemn.gov/government/departments/communications.php
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[alillie@ShakopeeMN.gov]'

4. City of Hastings, MN
   Contact: (role-based) Communications Coordinator — communications@hastingsmn.gov (no individual named in plaintext on the page)
   Source: https://www.hastingsmn.gov/government-transparency/departments/communications/
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[communications@hastingsmn.gov]'

5. Village of Arlington Heights, IL
   Contact: Hannah Kane, ADA Coordinator (Social Worker, Disability & Geriatric Services) — ADA@vah.com (published role-based accessibility inbox; Kane is the named ADA Coordinator). NW Cook County Chicago suburb — eligible, not Chicago proper. Distinct from Arlington Heights Memorial Library (already in the log).
   Source: https://vah.com/government/accessibility.php
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[ADA@vah.com]'
