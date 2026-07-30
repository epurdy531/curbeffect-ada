Subject: prospect brief (community colleges) for 2026-06-17
To: info@curbeffect.com

5 new ADA Title II community-college prospects today. For each one, run
the scan command below: it seeds the new entity into the outreach-db,
scans up to 5 of the entity's PDFs through veraPDF, then composes an
outreach draft (using templates/outreach-email.md with the worst-
failing PDF's stats filled in) and emails it to you for review.

1. Kirkwood Community College, IA
   Contact: (role-based), Accommodation Services — sas@kirkwood.edu
   Source: https://www.kirkwood.edu/accommodations
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[sas@kirkwood.edu]'

2. Harper College, IL
   Contact: (role-based), Non-Discrimination Compliance Officer / Chief Human Resources Officer — CHRO@harpercollege.edu
   Source: https://catalog.harpercollege.edu/student-handbook/policies-procedures/health-safety/prohibition-sexual-discrimination-harassment-misconduct-discrimination-compliance-procedure/
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[CHRO@harpercollege.edu]'

3. Oakton College, IL
   Contact: (role-based), Access and Disability Resource Center — accessdisability@oakton.edu
   Source: https://www.oakton.edu/academics/academic-services/access-and-disability-resource-center/
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[accessdisability@oakton.edu]'

4. Normandale Community College, MN
   Contact: Tori Addison, Vice President of People & Culture / Employee ADA/504 Coordinator — tori.addison@normandale.edu
   Source: https://www.normandale.edu/why-normandale/about/human-resources/equity/affirmative-action-plan.html
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[tori.addison@normandale.edu]'

5. North Hennepin Community College, MN
   Contact: (role-based), Access Services — Disability@nhcc.edu
   Source: https://www.nhcc.edu/academics/online-learning/accessibility
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[Disability@nhcc.edu]'
