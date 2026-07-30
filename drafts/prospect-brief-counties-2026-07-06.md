Subject: prospect brief (counties) for 2026-07-06
To: info@curbeffect.com

5 new ADA Title II county-government prospects today from IL / IA / MN.
For each one, run the scan command below: it scans up to 5 of the
entity's PDFs through veraPDF, then composes an outreach draft (using
templates/outreach-email.md with the worst-failing PDF's stats filled
in) and emails it to you for review.

1. Scott County, IA
   Contact: Kerri Tompkins, County Auditor & Commissioner of Elections — auditor@scottcountyiowa.gov
   Source: https://www.iowaauditors.org/scott/
   Time zone: Central Time (IA), so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       bin/rails 'scan:by_email[auditor@scottcountyiowa.gov]'

2. Johnson County, IA
   Contact: Erin Shane, Executive Director, Board of Supervisors Office (designated ADA Title II Coordinator) — email not publicly listed
   Source: https://www.johnsoncountyiowa.gov/board-of-supervisors (Board office 319-356-6000)
   Time zone: Central Time (IA), so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       No published email — look up Erin Shane's direct address (all county emails are Cloudflare-obfuscated), then run bin/rails 'scan:by_email[<her email>]'

3. Ramsey County, MN
   Contact: Megan Simmons, HR Program Administrator — ADA Coordinator — Megan.Simmons@co.ramsey.mn.us
   Source: https://www.governmentjobs.com/careers/ramsey/jobs/newprint/4266725
   Time zone: Central Time (MN), so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       bin/rails 'scan:by_email[Megan.Simmons@co.ramsey.mn.us]'

4. Olmsted County, MN
   Contact: Benjamin Johnson, Director of Public Works / County Engineer — ADA Title II Coordinator — benjamin.johnson@olmstedcounty.gov
   Source: https://www.olmstedcounty.gov/residents/roads-transportation/americans-disabilities-act-transition-plan
   Time zone: Central Time (MN), so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       bin/rails 'scan:by_email[benjamin.johnson@olmstedcounty.gov]'

5. Will County, IL
   Contact: Jennifer Bertino-Tarrant, County Executive — countyexec@willcountyillinois.com (office mailbox)
   Source: https://willcountyillinois.com/Portals/0/Frequently%20Requested%20Forms/2022%20Raffle%20Application%20(fillable).pdf
   Time zone: Central Time (IL), so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       bin/rails 'scan:by_email[countyexec@willcountyillinois.com]'

Best send days are Tuesday–Thursday. All five are Central Time, so 9:15 a.m.
Mountain Time lands at 10:15 a.m. local.
