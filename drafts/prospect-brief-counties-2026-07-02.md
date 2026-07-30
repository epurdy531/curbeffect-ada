Subject: prospect brief (counties) for 2026-07-02
To: info@curbeffect.com

5 new ADA Title II county-government prospects today from IL / IA / MN.
For each one, run the scan command below: it seeds the new entity into
the outreach-db, scans up to 5 of the entity's PDFs through veraPDF,
then composes an outreach draft (using templates/outreach-email.md with
the worst-failing PDF's stats filled in) and emails it to you for review.

Note: IL/IA/MN county governments are heavily saturated with CivicPlus
(currently phase-1 excluded) — 16 larger counties screened out on that
basis today. All 5 below are confirmed NON-CivicPlus with a published
plaintext email. Four run on Neapolitan Labs and one on Granicus
govAccess; none is a remediation vendor.

1. Adams County, IL
   Contact: Ryan A. Niekamp, County Clerk & Recorder — countyclerk@adamscountyil.gov
   Source: https://www.adamscountyil.gov/government/departments/county-clerk/contact-us
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time (best days Tue–Thu)
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[countyclerk@adamscountyil.gov]'

2. Jasper County, IA
   Contact: Dennis Simon, Director of Human Resources — dsimon@jasperia.org
   Source: https://www.jasperia.org/contact/
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time (best days Tue–Thu)
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[dsimon@jasperia.org]'

3. Wapello County, IA
   Contact: Danielle Weller, County Auditor — dweller@wapellocounty.org
   Source: https://www.wapellocounty.org/auditor/
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time (best days Tue–Thu)
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[dweller@wapellocounty.org]'

4. Jackson County, IA
   Contact: Alisa Smith, County Auditor — asmith@jacksoncounty.iowa.gov
   Source: https://jacksoncounty.iowa.gov/auditor/
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time (best days Tue–Thu)
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[asmith@jacksoncounty.iowa.gov]'

5. Poweshiek County, IA
   Contact: Missy Eilander, County Auditor & Commissioner of Elections — meilander@poweshiekcountyiowa.gov
   Source: https://poweshiekcountyiowa.gov/auditor/
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time (best days Tue–Thu)
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[meilander@poweshiekcountyiowa.gov]'
