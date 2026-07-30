Subject: prospect brief (cities batch B) for 2026-06-29
To: info@curbeffect.com

5 more new ADA Title II city-government prospects today from IL / IA / MN
(in addition to the earlier cities-east batch). For each one, run the scan
command below: it seeds the new entity into the outreach-db, scans up to 5
of the entity's PDFs through veraPDF, then composes an outreach draft (using
templates/outreach-email.md with the worst-failing PDF's stats filled in)
and emails it to you for review.

Note: of the 5, only Fergus Falls and Sartell publish a plaintext email, so
only those two can be scanned by email right now. The other three (Urbana,
Boone, Gurnee) publish NO plaintext email — get a published address (call or
contact form) before running scan:by_email for them.

1. City of Urbana, IL
   Contact: (role-based) Human Relations Office / ADA grievance contact — email not publicly listed
   Source: https://www.urbanail.gov/executive-department/page/ada-accessibility
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       (email not publicly listed — obtain a published email first, then)
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[<email once obtained>]'

2. City of Boone, IA
   Contact: Ondrea Elmquist, City Administrator — email not publicly listed
   Source: https://www.boonegov.com/department/index.php?structureid=12
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       (email not publicly listed — obtain a published email first, then)
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[<email once obtained>]'

3. City of Fergus Falls, MN
   Contact: (role-based) City Hall / Administration — city.hall@fergusfallsmn.gov
   Source: https://www.fergusfallsmn.gov/contactus
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[city.hall@fergusfallsmn.gov]'

4. Village of Gurnee, IL
   Contact: Ryan Nelson, Information Systems Director — email not publicly listed
   Source: https://www.gurnee.il.us/connect/contact-us/staff-directory
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       (email not publicly listed — obtain a published email first, then)
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[<email once obtained>]'

5. City of Sartell, MN
   Contact: Nikki Sweeter, Engagement Director — nikki.sweeter@sartellmn.com
   Source: https://sartellmn.com/how_do_i/contact_us/staff_directory.php
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[nikki.sweeter@sartellmn.com]'
