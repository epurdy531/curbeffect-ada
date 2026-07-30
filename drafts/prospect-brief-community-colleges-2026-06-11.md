Subject: prospect brief (community colleges) for 2026-06-11
To: info@curbeffect.com

5 new ADA Title II community-college prospects today. For each one, run
the scan command below: it seeds the new entity into the outreach-db,
scans up to 5 of the entity's PDFs through veraPDF, then composes an
outreach draft (using templates/outreach-email.md with the worst-
failing PDF's stats filled in) and emails it to you for review.

1. Valencia College, FL
   Contact: Dr. Trisha Charles, Assistant Vice President, Employee Relations & Services / Title IX Coordinator (designated ADA/Section 504 Coordinator) — tcharles13@valenciacollege.edu
   Source: https://catalog.valenciacollege.edu/studentservices/equalopportunitydiversity/
   Time zone: Eastern (Orlando, FL), so send the eventual outreach around 8:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[tcharles13@valenciacollege.edu]'

2. Pasadena City College, CA
   Contact: Lancer Accessibility Resource Services (LARS), role-based accessibility contact — LARS@pasadena.edu
   Source: https://pasadena.edu/accessibility.php
   Time zone: Pacific, so send the eventual outreach around 11:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[LARS@pasadena.edu]'

3. Lansing Community College, MI
   Contact: Frank Taylor, Care Services Manager / ADA/504 Coordinator — taylorf5@lcc.edu
   Source: https://www.lcc.edu/services/access/contact.html
   Time zone: Eastern (Lansing, MI), so send the eventual outreach around 8:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[taylorf5@lcc.edu]'

4. Madison Area Technical College (Madison College), WI
   Contact: Lisa Muchka, Compliance Director / Title IX and Section 504/ADA Coordinator (employees, vendors, third parties) — muchka@madisoncollege.edu
   Source: https://madisoncollege.edu/about/public-information/civil-rights-compliance
   Time zone: Central (Madison, WI), so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[muchka@madisoncollege.edu]'

5. Anne Arundel Community College, MD
   Contact: ADA & Accessibility Compliance Officer (role-based; no individual named on published Disability Accommodations policy page) — adacompliance@aacc.edu
   Source: https://www.aacc.edu/policies/disability-accommodations/
   Time zone: Eastern (Arnold, MD), so send the eventual outreach around 8:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[adacompliance@aacc.edu]'
