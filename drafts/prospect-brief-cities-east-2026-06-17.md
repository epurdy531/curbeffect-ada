Subject: prospect brief (cities-east) for 2026-06-17
To: info@curbeffect.com

5 new ADA Title II city-government prospects today (east of the
Mississippi). For each one, run the scan command below: it seeds the
new entity into the outreach-db, scans up to 5 of the entity's PDFs
through veraPDF, then composes an outreach draft (using
templates/outreach-email.md with the worst-failing PDF's stats filled
in) and emails it to you for review.

1. City of Asheville, NC
   Contact: Brad Stein, ADA Title II Coordinator — bstein@ashevillenc.gov
   Source: https://www.ashevillenc.gov/accessibility/
   Time zone: Eastern, so send the eventual outreach around 8:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[bstein@ashevillenc.gov]'

2. City of Tallahassee, FL
   Contact: Kathleen Wright, ADA / Title VI Coordinator, Office of Diversity & Inclusion — kathleen.wright@talgov.com
   Source: http://www.talgov.com/Main/hr-titlevi.aspx
   Time zone: Eastern, so send the eventual outreach around 8:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[kathleen.wright@talgov.com]'

3. City of Springfield, IL
   Contact: Ethan Posey, Director, Office of Community Relations (department handles ADA transition plans, interpreter lists, and grievance procedures) — Ethan.Posey@springfield.il.us
   Source: https://www.springfield.il.us/Departments/CommunityRelations/CommunityRelationsHome.aspx
   Time zone: Central, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[Ethan.Posey@springfield.il.us]'

4. City of Bridgeport, CT
   Contact: Nadine Douglas, LMSW, Contact Person for the Commission for People with Disabilities, Department of Social Services — Nadine.Douglas@bridgeportct.gov
   Source: https://www.bridgeportct.gov/government/departments/health-social-services/commission-people-disabilities
   Time zone: Eastern, so send the eventual outreach around 8:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[Nadine.Douglas@bridgeportct.gov]'

5. City of Mobile, AL
   Contact: Don Rose, Chief Procurement Officer / ADA Coordinator — donald.rose@cityofmobile.gov
   Source: https://www.cityofmobile.gov/ada/
   Time zone: Central, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[donald.rose@cityofmobile.gov]'
