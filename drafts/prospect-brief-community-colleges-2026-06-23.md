Subject: prospect brief (community colleges) for 2026-06-23
To: info@curbeffect.com

5 new ADA Title II community-college prospects today from IL / IA / MN.
For each one, run the scan command below: it seeds the new entity into
the outreach-db, scans up to 5 of the entity's PDFs through veraPDF,
then composes an outreach draft (using templates/outreach-email.md with
the worst-failing PDF's stats filled in) and emails it to you for
review.

1. Elgin Community College, IL
   Contact: Pietrina Probst, Director of ADA and Student Disabilities Services — pprobst@elgin.edu
   Source: https://elgin.edu/about/legal-notices/procedures/individuals-disabilities-policy/
   Time zone: Central Time (IL), so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[pprobst@elgin.edu]'

2. McHenry County College, IL
   Contact: Access and Disability Services (role-based; no individual named) — disabilityservices@mchenry.edu
   Source: https://www.mchenry.edu/access/procedures.html
   Time zone: Central Time (IL), so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[disabilityservices@mchenry.edu]'

3. Northeast Iowa Community College, IA
   Contact: Connie Kuennen, Executive Director of Human Resources / Equity Coordinator — kuennenc@nicc.edu
   Source: https://www.nicc.edu/about/nondiscrimination-statement/
   Time zone: Central Time (IA), so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[kuennenc@nicc.edu]'

4. Century College, MN
   Contact: Andrea Clepper, Access Services Director (designated Title II / Section 504 contact for students) — andrea.clepper@century.edu
   Source: https://www.century.edu/about/non-discrimination-statement/
   Time zone: Central Time (MN), so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[andrea.clepper@century.edu]'

5. Minneapolis Community & Technical College (Minneapolis College), MN
   Contact: Jessica Denne, Director, Accessibility Resource Center (ARC) — jessica.denne@minneapolis.edu
   Source: https://minneapolis.edu/student-services/accessibility-resource-center-arc
   Time zone: Central Time (MN), so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[jessica.denne@minneapolis.edu]'

Best send days are Tuesday–Thursday.
