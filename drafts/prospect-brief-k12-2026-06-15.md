Subject: prospect brief (k-12) for 2026-06-15
To: info@curbeffect.com

5 new ADA Title II K–12 school-district prospects today. For each one,
run the scan command below: it seeds the new entity into the outreach-
db, scans up to 5 of the entity's PDFs through veraPDF, then composes
an outreach draft (using templates/outreach-email.md with the worst-
failing PDF's stats filled in) and emails it to you for review.

1. Miami-Dade County Public Schools, FL
   Contact: (role-based) District Director, Office of Civil Rights Compliance — crc@dadeschools.net
   Source: https://www.hrdadeschools.net/civilrights/
   Time zone: Eastern Time, so send the eventual outreach around 8:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[crc@dadeschools.net]'

2. Clark County School District, NV
   Contact: Daniel D. Ebihara, Executive Director, Office of Compliance and Monitoring (Section 504/IDEA compliance) — ebihadd@nv.ccsd.net
   Source: https://ssd.ccsd.net/office-of-compliance-and-monitoring/
   Time zone: Pacific Time, so send the eventual outreach around 11:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[ebihadd@nv.ccsd.net]'

3. Houston Independent School District, TX
   Contact: (role-based) District ADA accommodations contact — ADA@HoustonISD.org
   Source: https://www.houstonisd.org/Page/126296
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[ADA@HoustonISD.org]'

4. Boston Public Schools, MA
   Contact: (role-based) Director of Training & Accommodations / Section 504 Coordinator, Office of Equity — ocr@bostonpublicschools.org
   Source: https://www.bostonpublicschools.org/bps-departments/civil-rights/non-discrimination-and-civil-rights
   Time zone: Eastern Time, so send the eventual outreach around 8:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[ocr@bostonpublicschools.org]'

5. Seattle Public Schools, WA
   Contact: Shanon Lewis, 504/ADA Coordinator, Office of Student Civil Rights — 504coordinator@seattleschools.org
   Source: https://www.seattleschools.org/departments/student-504/
   Time zone: Pacific Time, so send the eventual outreach around 11:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[504coordinator@seattleschools.org]'
