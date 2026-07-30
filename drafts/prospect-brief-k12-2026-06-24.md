Subject: prospect brief (k-12) for 2026-06-24
To: info@curbeffect.com

5 new ADA Title II K–12 school-district prospects today from IL / IA / MN.
For each one, run the scan command below: it seeds the new entity into the
outreach-db, scans up to 5 of the entity's PDFs through veraPDF, then composes
an outreach draft (using templates/outreach-email.md with the worst-failing
PDF's stats filled in) and emails it to you for review.

1. Ankeny Community School District, IA
   Contact: Nancy Lehman, Director of Special Education / designated ADA & Section 504 Coordinator — email not publicly listed
   Source: https://www.ankenyschools.org/parents/annual-notices/section-504-notice-of-rights/
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   NOTE: Lehman's email is not published in plaintext (the staff contact card link is JS-protected). Obtain an email first — call her direct line 515-965-9604 or the district office 515-965-9600 — then substitute it into the scan command below before running it.
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[<obtain email first>]'

2. South Washington County Schools (ISD 833), MN
   Contact: Kristin Papin, Special Education Supervisor – Secondary Schools — kpapin@sowashco.org
   Source: https://www.sowashco.org/academics/special-education
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[kpapin@sowashco.org]'

3. Plainfield Community Consolidated School District 202, IL
   Contact: Mina Griffith, Assistant Superintendent of Student Services — mgriffith@psd202.org
   Source: https://sites.google.com/psd202.org/district-202-student-services/department-staff
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[mgriffith@psd202.org]'

4. Dubuque Community School District, IA
   Contact: Hannah Porcic, Lead Nurse / ADA & Section 504 District Coordinator — hporcic@dbqschools.org
   Source: https://www.dbqschools.org/district/programs/section-504/
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[hporcic@dbqschools.org]'

5. St. Cloud Area School District 742 (ISD 742), MN
   Contact: Tracy Flynn Bowe, JD, MA — District Title IX Coordinator / Executive Director of Human Resources & General Counsel — tracy.bowe@isd742.org
   Source: https://www.isd742.org/about-us/title-ix
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[tracy.bowe@isd742.org]'
