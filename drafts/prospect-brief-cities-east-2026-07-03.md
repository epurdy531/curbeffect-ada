Subject: prospect brief (cities batch A) for 2026-07-03
To: info@curbeffect.com

5 new ADA Title II city-government prospects today from IL / IA / MN.
For each one, run the scan command below: it seeds the new entity into
the outreach-db, scans up to 5 of the entity's PDFs through veraPDF,
then composes an outreach draft (using templates/outreach-email.md with
the worst-failing PDF's stats filled in) and emails it to you for
review.

1. Village of Addison, IL
   Contact: Donald Pinson, Director of HR / Risk Management & ADA Compliance Coordinator (role-based — personal email not published; voajobs@ is the HR-department inbox) — voajobs@addison-il.org
   Source: https://www.addisonadvantage.org/government/village_departments/human_resources.php
   Time zone: Central, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[voajobs@addison-il.org]'

2. Village of Machesney Park, IL
   Contact: Shannon Hansen, Finance & HR Director — shannonh@machesneypark.org
   Source: https://machesneypark.org/staff_directory/index.php
   Time zone: Central, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[shannonh@machesneypark.org]'

3. Village of Huntley, IL
   Contact: Chrissy Hoover, Director of Human Resources and Organizational Compliance — choover@huntley.il.us
   Source: https://www.huntley.il.us/human_resources.php
   Time zone: Central, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[choover@huntley.il.us]'

4. City of Kewanee, IL
   Contact: Kasey Mitchell, City Clerk — kmitchell@cityofkewanee.net
   Source: https://cityofkewanee.com/government/city_clerk/index.php
   Time zone: Central, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[kmitchell@cityofkewanee.net]'

5. Village of East Dundee, IL
   Contact: Franco Bottalico, Acting Village Administrator — fbottalico@eastdundee.net
   Source: https://www.eastdundee.net/how_do_i/contact_us/index.php
   Time zone: Central, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[fbottalico@eastdundee.net]'
