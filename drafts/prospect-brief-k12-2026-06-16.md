Subject: prospect brief (k-12) for 2026-06-16
To: info@curbeffect.com

5 new ADA Title II K–12 school-district prospects today. For each one,
run the scan command below: it seeds the new entity into the outreach-
db, scans up to 5 of the entity's PDFs through veraPDF, then composes
an outreach draft (using templates/outreach-email.md with the worst-
failing PDF's stats filled in) and emails it to you for review.

1. Dallas Independent School District, TX
   Contact: Erin Gracy, Dallas ISD Section 504 Coordinator (Section 504 and Dyslexia Services) — egracey@dallasisd.org
   Source: https://www.dallasisd.org/departments/special-services/special-services/programs/section-504/section-504
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[egracey@dallasisd.org]'

2. School District of Philadelphia, PA
   Contact: (role-based) ADA Website Compliance Administrator, Office of General Counsel — webcompliance@philasd.org
   Source: https://www.philasd.org/administrative-procedures-for-website-accessibility/
   Time zone: Eastern Time, so send the eventual outreach around 8:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[webcompliance@philasd.org]'

3. Wake County Public School System, NC
   Contact: Joseph Man, Section 504/ADA Student Coordinator — jman@wcpss.net
   Source: https://www.wcpss.net/non-discrimination-and-title-ix
   Time zone: Eastern Time, so send the eventual outreach around 8:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[jman@wcpss.net]'

4. Anchorage School District, AK
   Contact: (role-based) District 504 Coordinator, Office of Equity and Community Engagement — Section_504@asdk12.org
   Source: https://www.asdk12.org/Page/6709
   Time zone: Alaska Time (AKDT, UTC−8, two hours behind Mountain in June), so send the eventual outreach around 12:15 p.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[Section_504@asdk12.org]'

5. DeKalb County School District, GA
   Contact: Dr. Allison Marks, 504/ADA Coordinator II — allison_marks@dekalbschoolsga.org
   Source: https://www.dekalbschoolsga.org/divisions/student-services/section-504-protections-for-students
   Time zone: Eastern Time, so send the eventual outreach around 8:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[allison_marks@dekalbschoolsga.org]'
