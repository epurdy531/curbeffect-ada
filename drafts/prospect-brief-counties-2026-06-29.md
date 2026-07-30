Subject: prospect brief (counties) for 2026-06-29
To: info@curbeffect.com

5 new ADA Title II county-government prospects today from IL / IA / MN.
For each one, run the scan command below: it seeds the new entity into
the outreach-db, scans up to 5 of the entity's PDFs through veraPDF,
then composes an outreach draft (using templates/outreach-email.md with
the worst-failing PDF's stats filled in) and emails it to you for review.

1. Clinton County, IA
   Contact: Paul Banowetz, Information Technology Director — pbanowetz@clintoncounty-ia.gov
   Source: https://www.clintoncounty-ia.gov/contact/
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[pbanowetz@clintoncounty-ia.gov]'

2. Macon County, IL
   Contact: Josh Tanner, County Clerk, Decatur — jtanner@maconcounty.illinois.gov
   Source: https://maconcounty.illinois.gov/departments/county-clerk/
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[jtanner@maconcounty.illinois.gov]'

3. Cerro Gordo County, IA
   Contact: Adam Wedmore, County Auditor (publishes Board of Supervisors agendas/minutes/resolutions), Mason City — awedmore@cerrogordo.gov
   Source: https://cerrogordo.gov/contact/
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[awedmore@cerrogordo.gov]'

4. Goodhue County, MN
   Contact: Nick Lemmer, Outreach & Communications Specialist, Red Wing — nick.lemmer@goodhuecountymn.gov
   Source: https://goodhuecountymn.gov/contact/
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[nick.lemmer@goodhuecountymn.gov]'

5. Will County, IL
   Contact: (role-based) ADA Coordinator — the Human Resources Director serves as the County's designated ADA Coordinator, Joliet — email not publicly listed (ADA Coordinator line 815-774-6350; HR Dept 815-774-7499)
   Source: https://willcounty.gov/County-Offices/Administration/Human-Resources/Human-Resources-2
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose: no plaintext email is published — obtain one (call/contact form) first, then run:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[<obtained email>]'

Best send days are Tuesday–Thursday.
