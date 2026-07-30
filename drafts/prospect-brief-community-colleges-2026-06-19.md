Subject: prospect brief (community colleges) for 2026-06-19
To: info@curbeffect.com

5 new ADA Title II community-college prospects today. For each one, run
the scan command below: it seeds the new entity into the outreach-db,
scans up to 5 of the entity's PDFs through veraPDF, then composes an
outreach draft (using templates/outreach-email.md with the worst-
failing PDF's stats filled in) and emails it to you for review.

1. Nashville State Community College, TN
   Contact: (role-based), Executive Director of Human Resources / EEO Coordinator — EEOcoordinator@nscc.edu
   Source: https://www.nscc.edu/consumer-information/non-discrimination-statement.php
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[EEOcoordinator@nscc.edu]'

2. Volunteer State Community College, TN
   Contact: (role-based), Vice President for Human Resources / Title VI Coordinator — eeo@volstate.edu
   Source: https://www.volstate.edu/non-discrimination-statement
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[eeo@volstate.edu]'

3. Daytona State College, FL
   Contact: Tanika Clemons, Vice President of Human Resources / Employee Title IX Coordinator / Civil Rights Compliance Officer — Tanika.Clemons@DaytonaState.edu
   Source: https://www.daytonastate.edu/civil-rights-compliance/index.html
   Time zone: Eastern Time, so send the eventual outreach around 8:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[Tanika.Clemons@DaytonaState.edu]'

4. Pensacola State College, FL
   Contact: Dr. Lynsey Listau, Executive Director, Equal Opportunity Compliance / Title IX Coordinator / Section 504 Coordinator — llistau@pensacolastate.edu
   Source: https://www.pensacolastate.edu/office-of-equal-opportunity-compliance/
   Time zone: Central Time (Pensacola sits in the FL Panhandle west of the Apalachicola, so CDT in June), so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[llistau@pensacolastate.edu]'

5. Broward College, FL
   Contact: Dr. Alethea Oliphant, Title IX Coordinator — TitleIXCoordinator@broward.edu
   Source: https://www.broward.edu/students/rights-and-responsibilities/title-ix-sexual-misconduct.html
   Time zone: Eastern Time, so send the eventual outreach around 8:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[TitleIXCoordinator@broward.edu]'
