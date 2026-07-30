Subject: prospect brief (community colleges) for 2026-06-10
To: erica.mcdevitt@curbeffect.com

5 new ADA Title II community-college prospects today. For each one, run
the scan command below: it seeds the new entity into the outreach-db,
scans up to 5 of the entity's PDFs through veraPDF, then composes an
outreach draft (using templates/outreach-email.md with the worst-
failing PDF's stats filled in) and emails it to you for review.

1. Bunker Hill Community College, MA
   Contact: Nahomi Carlisle, Esq., Associate Vice President and Chief Compliance Officer / Section 504 and ADA Coordinator — nahomi.carlisle@bhcc.edu
   Source: https://www.bhcc.edu/eeo/
   Time zone: Eastern Time, so send the eventual outreach around 8:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[nahomi.carlisle@bhcc.edu]'

2. Macomb Community College, MI
   Contact: (role-based) Student Access Services — sas@macomb.edu (no individual ADA/504 Coordinator named on Macomb's published accessibility or non-discrimination pages; SAS is the closest published accessibility contact)
   Source: https://www.macomb.edu/student-resources/student-access-services.html
   Time zone: Eastern Time, so send the eventual outreach around 8:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[sas@macomb.edu]'

3. Mt. San Antonio College, CA
   Contact: Ryan Wilson, Director, EEO, Title IX, & Leaves Administration / Title IX Coordinator (HR office published as ADA/504 Compliance Officer per AP5140) — rwilson43@mtsac.edu
   Source: https://www.mtsac.edu/hr/about_us/contact_us.html
   Time zone: Pacific Time, so send the eventual outreach around 11:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[rwilson43@mtsac.edu]'

4. Montgomery College, MD
   Contact: Sarah Martin, Interim Director of ADA Compliance and Title IX Coordinator — Sarah.Martin@montgomerycollege.edu
   Source: https://www.montgomerycollege.edu/offices/compliance-risk-ethics/notice-of-non-discrimination.html
   Time zone: Eastern Time, so send the eventual outreach around 8:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[Sarah.Martin@montgomerycollege.edu]'

5. City Colleges of Chicago, IL
   Contact: (role-based) District Student Accessibility Services — accessservices@ccc.edu (district-level ADA/504 contact published on Accessibility page; no individual coordinator named at the district level)
   Source: https://colleges.ccc.edu/accessibility/
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[accessservices@ccc.edu]'
