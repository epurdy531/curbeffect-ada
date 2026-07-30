Subject: prospect brief (counties) for 2026-07-03
To: info@curbeffect.com

5 new ADA Title II county-government prospects today from IL / IA / MN.
For each one, run the scan command below: it seeds the new entity into
the outreach-db, scans up to 5 of the entity's PDFs through veraPDF,
then composes an outreach draft (using templates/outreach-email.md with
the worst-failing PDF's stats filled in) and emails it to you for review.

1. Dodge County, MN
   Contact: Jim Elmquist, County Administrator — dodge.admin@dodgecountymn.gov
   Source: https://dodgecountymn.gov/departments/adminstration/county_administrator.php
   Time zone: Central Time (MN), so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[dodge.admin@dodgecountymn.gov]'

2. Cedar County, IA
   Contact: (role-based) Board of Supervisors Office — bos@cedarcounty.iowa.gov
   Source: https://cedarcounty.iowa.gov/board_of_supervisors/
   Time zone: Central Time (IA), so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[bos@cedarcounty.iowa.gov]'

3. Effingham County, IL
   Contact: Angie Thompson, County Board Administrator — athompson@effinghamcountyil.gov
   Source: https://effinghamcountyil.gov/county-board/
   Time zone: Central Time (IL), so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[athompson@effinghamcountyil.gov]'

4. Delaware County, IA
   Contact: (role-based) Board of Supervisors Office — supervisors@co.delaware.ia.us
   Source: https://delawarecounty.iowa.gov/bos/
   Time zone: Central Time (IA), so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[supervisors@co.delaware.ia.us]'

5. Henry County, IA
   Contact: (role-based) Board of Supervisors Office — supervisors@henrycountyiowa.us
   Source: https://henrycounty.iowa.gov/bos/
   Time zone: Central Time (IA), so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[supervisors@henrycountyiowa.us]'

Best send days are Tuesday–Thursday.
