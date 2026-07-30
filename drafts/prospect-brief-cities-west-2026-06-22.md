Subject: prospect brief (cities batch B) for 2026-06-22
To: info@curbeffect.com

5 new ADA Title II city-government prospects today from IL / IA / MN.
(The cities-east batch has not run today, so all 5 below are net-new.)
For each one, run the scan command below: it seeds the new entity into
the outreach-db, scans up to 5 of the entity's PDFs through veraPDF,
then composes an outreach draft (using templates/outreach-email.md with
the worst-failing PDF's stats filled in) and emails it to you for review.

1. Town of Cicero, IL
   Contact: Ryan Chlada, Executive Director, Office for People with Disabilities — rchlada@thetownofcicero.com
   Source: https://thetownofcicero.com/community/people-with-disabilities/
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[rchlada@thetownofcicero.com]'

2. City of Waterloo, IA
   Contact: Lance Dunn, Human Resources Director (the city's ADA statement names no contact; HR is the best published-email contact) — lance.dunn@waterloo-ia.org
   Source: https://www.cityofwaterlooiowa.com/departments/human_resources/index.php
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[lance.dunn@waterloo-ia.org]'

3. City of Bettendorf, IA
   Contact: (role-based) ROW Coordinator inbox — rowpermits@bettendorf.org (the city's published ADA-compliance contact is the Director of Public Works, for whom no email is listed; rowpermits@ is the only published plaintext email. For outreach you may prefer to address the Director of Public Works via the Public Works line, 563-344-4055.)
   Source: https://www.bettendorf.org/departments/engineering___public_works/new_page/right-of-way_management.php
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[rowpermits@bettendorf.org]'

4. City of Austin, MN
   Contact: Trish Wiechmann, Human Resources Director — twiechma@ci.austin.mn.us
   Source: https://www.ci.austin.mn.us/administration/human-resources/contact-us
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[twiechma@ci.austin.mn.us]'

5. City of Elmhurst, IL
   Contact: Emily Palm, Human Resources Director (HR is the published-email contact; no separately named ADA coordinator) — hr@elmhurst.org
   Source: https://www.elmhurst.org/services/human_resources/index.php
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[hr@elmhurst.org]'
