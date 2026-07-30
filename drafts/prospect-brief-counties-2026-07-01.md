Subject: prospect brief (counties) for 2026-07-01
To: info@curbeffect.com

5 new ADA Title II county-government prospects today from IL / IA / MN.
For each one, run the scan command below: it seeds the new entity into
the outreach-db, scans up to 5 of the entity's PDFs through veraPDF,
then composes an outreach draft (using templates/outreach-email.md with
the worst-failing PDF's stats filled in) and emails it to you for review.

1. Muscatine County, IA
   Contact: Kala Naber, Administration & Finance Director — kala.naber@muscatinecountyiowa.gov
   Source: https://www.muscatinecountyiowa.gov/131/Administration-Office
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[kala.naber@muscatinecountyiowa.gov]'

2. Warren County, IA
   Contact: Kimberly Sheets, County Auditor & Commissioner of Elections — auditor@warrencountyia.org
   Source: https://www.warrencountyia.gov/government/county-government/auditor/
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[auditor@warrencountyia.org]'

3. Marion County, IA
   Contact: Drew Claseman, Information Technology Director — dclaseman@marioncountyiowa.gov
   Source: https://www.marioncountyiowa.gov/contact/
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[dclaseman@marioncountyiowa.gov]'

4. Kandiyohi County, MN
   Contact: Kelsey Baker, County Administrator — kelsey.baker@kcmn.us
   Source: https://www.kcmn.us/departments/administrator/index.php
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[kelsey.baker@kcmn.us]'

5. Grundy County, IL
   Contact: Mary Kucharz, County Administrator — mkucharz@grundycountyil.gov
   Source: https://www.grundycountyil.gov/services/administration.php
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[mkucharz@grundycountyil.gov]'

---
Best send days are Tuesday–Thursday. All five recipients are in Central Time.
Nothing has been sent. Each scan command composes a per-entity outreach draft
for your review; you send each yourself.
