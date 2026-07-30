Subject: prospect brief (counties) for 2026-06-30
To: info@curbeffect.com

5 new ADA Title II county-government prospects today from IL / IA / MN.
For each one, run the scan command below: it seeds the new entity into
the outreach-db, scans up to 5 of the entity's PDFs through veraPDF,
then composes an outreach draft (using templates/outreach-email.md with
the worst-failing PDF's stats filled in) and emails it to you for review.

1. DeKalb County, IL
   Contact: Ruth Kedzior, County Administrator — rkedzior@dekalbcounty.org
   Source: https://dekalbcounty.org/departments/administration-office/staff/
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[rkedzior@dekalbcounty.org]'

2. St. Clair County, IL
   Contact: Ann Barnum, ADA/EEO/Privacy Official — hrms@co.st-clair.il.us (role-based HR mailbox published for the named ADA official)
   Source: https://www.co.st-clair.il.us/ada-information
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[hrms@co.st-clair.il.us]'

3. Des Moines County, IA
   Contact: Sara Doty, County Auditor — dotys@dmcounty.com
   Source: https://desmoinescounty.iowa.gov/auditor/
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[dotys@dmcounty.com]'

4. Steele County, MN
   Contact: Renae Fry, County Administrator — sc.admin@SteeleCountyMn.gov (Administration office mailbox; role-based)
   Source: https://www.steelecountymn.gov/contact_info/index.php
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[sc.admin@SteeleCountyMn.gov]'

5. Aitkin County, MN
   Contact: David Minke, County Administrator — david.minke@aitkincountymn.gov
   Source: https://www.co.aitkin.mn.us/departments/admin/
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[david.minke@aitkincountymn.gov]'

---
Notes for review:
- All 5 are county governments subject to ADA Title II, in IL / IA / MN, and
  are non-CivicPlus (phase-1 exclusion respected): DeKalb (WordPress),
  St. Clair (DNN), Des Moines County (Neapolitan Labs), Steele (Revize),
  Aitkin (custom/legacy .php).
- Every email above was read in published plaintext on the cited county page
  — none guessed from a name pattern.
- Geographic checks: DeKalb is ~65 mi west of Chicago (not Chicago proper);
  St. Clair is in the St. Louis metro (SW IL); none of the MN counties serve
  Rochester. All within scope.
- This brief surfaced an unusually high CivicPlus density among midsize
  IL/IA/MN counties — Lake, Linn, Anoka, Washington, Peoria, Story, McLean,
  Rock Island, LaSalle, Dubuque, Marshall, Dallas, Black Hawk, Stearns,
  Wright, Sherburne, Rice, Blue Earth, Crow Wing, Chisago, Nicollet, Itasca
  were all checked and skipped as CivicPlus (phase-1 exclusion). Polk County, IA
  and Dakota County, MN came back non-CivicPlus but are already in the tracker,
  so they were dropped too. The 5 above are the clean, in-scope finds.
