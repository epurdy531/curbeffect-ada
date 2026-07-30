Subject: prospect brief (counties) for 2026-07-07
To: info@curbeffect.com

5 new ADA Title II county-government prospects today from IL / IA / MN.
For each one, run the scan command below: it scans up to 5 of the
entity's PDFs through veraPDF, then composes an outreach draft (using
templates/outreach-email.md with the worst-failing PDF's stats filled
in) and emails it to you for review.

1. Will County, IL
   Contact: Charles B. Pelkie Jr., Chief of Staff, Will County Board — cpelkie@willcounty.gov
   Source: https://www.willcountyboard.com/contact.html
   Time zone: Central Time (IL), so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       bin/rails 'scan:by_email[cpelkie@willcounty.gov]'

2. McHenry County, IL
   Contact: Scott Hartman, County Administrator — sehartman@mchenrycountyil.gov
   Source: https://www.mchenrycountyil.gov/county-government/contact-us-elected-officials-department-head-listing
   Time zone: Central Time (IL), so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       bin/rails 'scan:by_email[sehartman@mchenrycountyil.gov]'

3. Scott County, IA
   Contact: Vanessa Wierman, HR Director / county ADA Coordinator — email not publicly listed
   Source: https://www.scottcountyiowa.gov/hr/meet-team (contact form: https://www.scottcountyiowa.gov/contactus)
   Time zone: Central Time (IA), so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       No published email, so scan:by_email can't run for this one. Look up a direct
       address via the contact form above (or the County Administrator's office,
       Mahesh C. Sharma), then run: bin/rails 'scan:by_email[<address>]'

4. Johnson County, IA
   Contact: Erin Shane, Board Office Executive Director / ADA Title II Coordinator — eshane@johnsoncountyiowa.gov
   Source: https://www.johnsoncountyiowa.gov/board-of-supervisors/meet-the-staff
   Time zone: Central Time (IA), so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       bin/rails 'scan:by_email[eshane@johnsoncountyiowa.gov]'

5. Ramsey County, MN
   Contact: Amee Xiong, Planning Specialist / ADA-504 Coordinator — amee.xiong@co.ramsey.mn.us
   Source: https://assets.ramseycountymn.gov/files/migrated-files/Civil_Rights_Plan_06_22_22.pdf
   Time zone: Central Time (MN), so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       bin/rails 'scan:by_email[amee.xiong@co.ramsey.mn.us]'

Best send days are Tuesday–Thursday. All five are non-CivicPlus county
governments (DNN, Granicus, Drupal, Interpersonal Frequency) and each
posts board agendas, minutes, budgets and notices as PDFs — good fits
for the free-remediation offer.
