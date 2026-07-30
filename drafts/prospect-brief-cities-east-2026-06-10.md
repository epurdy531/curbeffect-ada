Subject: prospect brief (cities-east) for 2026-06-10
To: erica.mcdevitt@curbeffect.com

5 new ADA Title II city-government prospects today (east of the
Mississippi). For each one, run the scan command below: it seeds the
new entity into the outreach-db, scans up to 5 of the entity's PDFs
through veraPDF, then composes an outreach draft (using
templates/outreach-email.md with the worst-failing PDF's stats filled
in) and emails it to you for review.

1. City of Cleveland, OH
   Contact: K. Houston, ADA Coordinator, Department of Law (only initial published on city's ADA Policy page) — KHouston@clevelandohio.gov
   Source: https://www.clevelandohio.gov/city-hall/departments/law/ada-policy
   Time zone: Eastern Time, so send the eventual outreach around 8:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[KHouston@clevelandohio.gov]'

2. City of Baltimore, MD
   Contact: (role-based), Mayor's Commission on Disabilities / Office of Equity and Civil Rights (no individual named for citywide role) — disabilities.commission@baltimorecity.gov
   Source: https://www.baltimorecity.gov/civil-rights/mayors-commission-disabilities/accessibility-services
   Time zone: Eastern Time, so send the eventual outreach around 8:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[disabilities.commission@baltimorecity.gov]'

3. City of Providence, RI
   Contact: Leonela Felix, Assistant City Solicitor / ADA & Title VI Nondiscrimination Compliance Coordinator, Law Department — LFelix@providenceri.gov
   Source: https://www.providenceri.gov/law-department/nondiscrimination-compliance-coordinator/
   Time zone: Eastern Time, so send the eventual outreach around 8:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[LFelix@providenceri.gov]'

4. City of Lexington, KY (Lexington-Fayette Urban County Government)
   Contact: Roger Daman, LFUCG ADA contact for city property and employee ADA concerns (per Website Accessibility page) — rdaman@lexingtonky.gov
   Source: https://www.lexingtonky.gov/website-accessibility-ada
   Time zone: Eastern Time (Lexington, KY is in the Eastern Time portion of Kentucky), so send the eventual outreach around 8:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[rdaman@lexingtonky.gov]'

5. City of Worcester, MA
   Contact: (role-based), City of Worcester Accessibility / Office of Human Rights & Disabilities (no individual named on ADA page) — accessibility@worcesterma.gov
   Source: https://www.worcesterma.gov/accessibility/ada
   Time zone: Eastern Time, so send the eventual outreach around 8:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[accessibility@worcesterma.gov]'
