Subject: prospect brief (cities batch A) for 2026-07-02
To: info@curbeffect.com

5 new ADA Title II city-government prospects today from IL / IA / MN.
For each one, run the scan command below: it seeds the new entity into
the outreach-db, scans up to 5 of the entity's PDFs through veraPDF,
then composes an outreach draft (using templates/outreach-email.md with
the worst-failing PDF's stats filled in) and emails it to you for
review.

1. City of Kankakee, IL
   Contact: Elizabeth Kubal, City Manager — edkubal@citykankakee-il.gov
   Source: https://citykankakee-il.gov/electeddirectory.php
   Time zone: Central, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[edkubal@citykankakee-il.gov]'

2. City of Zion, IL
   Contact: Sheryl Spooner, City Clerk (role-based — no ADA coordinator/IT/comms contact published) — sheryls@zion.il.us
   Source: https://www.cityofzion.com/contact-us-2/
   Time zone: Central, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[sheryls@zion.il.us]'

3. City of Carroll, IA
   Contact: Aaron Kooiker, City Manager — akooiker@cityofcarroll.com
   Source: https://www.cityofcarroll.com/carroll-government/administration/
   Time zone: Central, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[akooiker@cityofcarroll.com]'

4. City of Norwalk, IA
   Contact: Lindsey Offenburger, Director of Internal Operations / City Clerk — lindseyo@norwalk.iowa.gov
   Source: https://www.norwalk.iowa.gov/departments/city_clerk_/index.php
   Time zone: Central, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[lindseyo@norwalk.iowa.gov]'

5. City of Bemidji, MN
   Contact: Rich Spiczka, City Manager — richard.spiczka@ci.bemidji.mn.us
   Source: https://www.ci.bemidji.mn.us/citymanager
   Time zone: Central, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[richard.spiczka@ci.bemidji.mn.us]'
