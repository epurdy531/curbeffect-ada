Subject: prospect brief (counties) for 2026-06-25
To: info@curbeffect.com

5 new ADA Title II county-government prospects today from IL / IA / MN.
For each one, run the scan command below: it seeds the new entity into
the outreach-db, scans up to 5 of the entity's PDFs through veraPDF,
then composes an outreach draft (using templates/outreach-email.md with
the worst-failing PDF's stats filled in) and emails it to you for review.

1. DuPage County, IL
   Contact: Cheryl Schrimmenti, ADA Coordinator (State's Attorney's Office; county ADA grievance contact) — SAOADAComplaints@dupagecounty.gov
   Source: https://www.dupagecounty.gov/elected_officials/state_s_attorney/ada-notice.php
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[SAOADAComplaints@dupagecounty.gov]'

2. Kane County, IL
   Contact: Roger Fahnestock, Executive Director of Information Technologies and Buildings Management — fahnestockroger@kanecountyil.gov
   Source: https://www.kanecountyil.gov/pages/itd.aspx
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[fahnestockroger@kanecountyil.gov]'

3. Polk County, IA
   Contact: Jamie Fitzgerald, County Auditor & Commissioner of Elections (Auditor's office publishes board agendas/minutes/resolutions) — auditor@polkcountyiowa.gov
   Source: https://www.polkcountyiowa.gov/contact-us/
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[auditor@polkcountyiowa.gov]'

4. Hennepin County, MN
   Contact: Jodi Wentland, County Administrator — county.admin@hennepin.us
   Source: https://www.hennepincounty.gov/government/leadership/county-administration
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[county.admin@hennepin.us]'

5. McLeod County, MN
   Contact: Sheila Murphy, County Administrator — sheila.murphy@mcleodcountymn.gov
   Source: https://www.mcleodcountymn.gov/departments/administration/index.php
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[sheila.murphy@mcleodcountymn.gov]'

Best send days are Tuesday–Thursday.
