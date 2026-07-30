Subject: prospect brief (community colleges) for 2026-06-22
To: info@curbeffect.com

5 new ADA Title II community-college prospects today from IL / IA / MN.
For each one, run the scan command below: it seeds the new entity into
the outreach-db, scans up to 5 of the entity's PDFs through veraPDF,
then composes an outreach draft (using templates/outreach-email.md with
the worst-failing PDF's stats filled in) and emails it to you for
review.

1. Triton College, IL
   Contact: Dominique Dial, Director, Center for Access and Accommodative Services (CAAS) — dominiquedial@triton.edu
   Source: https://www.triton.edu/caas/
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[dominiquedial@triton.edu]'

2. Waubonsee Community College, IL
   Contact: Diana Torres, Benefits Manager / ADA & Section 504 Coordinator — dtorres@waubonsee.edu
   Source: https://www.waubonsee.edu/legal-noticesconsumer-information
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[dtorres@waubonsee.edu]'

3. North Iowa Area Community College (NIACC), IA
   Contact: Lisa Vance, Director of Disability Services / ADA Coordinator — lisa.vance@niacc.edu
   Source: https://www.niacc.edu/student-life/disability-services/policies-procedures/grievance-procedure/
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[lisa.vance@niacc.edu]'

4. Anoka-Ramsey Community College, MN
   Contact: Office for Students with Disabilities (role-based; named individual Heather Dibblee, Disability and Accessibility Specialist) — OSD@AnokaRamsey.edu
   Source: https://www.anokaramsey.edu/resources/office-for-students-with-disabilities/
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[OSD@AnokaRamsey.edu]'

5. Inver Hills Community College, MN
   Contact: Allison Jenson, Director of Accessibility Resources — allison.jenson@inverhills.edu
   Source: https://www.inverhills.edu/help-center/accessibility-resources/
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[allison.jenson@inverhills.edu]'

Best send days are Tuesday–Thursday. All five recipients are in Central Time,
so schedule each outreach for 9:15 a.m. Mountain Time to land at 10:15 a.m.
their local time.
