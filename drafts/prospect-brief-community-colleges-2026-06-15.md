Subject: prospect brief (community colleges) for 2026-06-15
To: info@curbeffect.com

5 new ADA Title II community-college prospects today. For each one, run
the scan command below: it seeds the new entity into the outreach-db,
scans up to 5 of the entity's PDFs through veraPDF, then composes an
outreach draft (using templates/outreach-email.md with the worst-
failing PDF's stats filled in) and emails it to you for review.

1. Bergen Community College, NJ
   Contact: Amelia Malak, Compliance Officer (Human Resources); ADA grievance contact per published Grievance Procedure — amalak@bergen.edu
   Source: https://bergen.edu/oss/pertinent-regulations/
   Time zone: Eastern, so send the eventual outreach around 8:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[amalak@bergen.edu]'

2. Suffolk County Community College, NY
   Contact: Jennifer Forni, College Director of Disability Services / College-Wide ADA Coordinator — fornij@sunysuffolk.edu
   Source: https://www.sunysuffolk.edu/accessibility/ada-notice.jsp
   Time zone: Eastern, so send the eventual outreach around 8:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[fornij@sunysuffolk.edu]'

3. Santa Monica College, CA
   Contact: Maria Munoz, ADA/504 Compliance Officer (Center for Students with Disabilities) — munoz_maria@smc.edu
   Source: https://www.smc.edu/student-support/center-for-students-with-disabilities/policies-procedures.php
   Time zone: Pacific, so send the eventual outreach around 11:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[munoz_maria@smc.edu]'

4. Bristol Community College, MA
   Contact: Johanna Bielawski, Title IX Coordinator (also handles ADA / Section 504 per Affirmative Action and Title IX Section 504 page) — DiversityTitleIX@BristolCC.edu
   Source: https://bristolcc.edu/studentservices/resources/studenthandbook/policiesandprocedures/affirmativeactionandtitleixsection504.html
   Time zone: Eastern, so send the eventual outreach around 8:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[DiversityTitleIX@BristolCC.edu]'

5. Borough of Manhattan Community College (BMCC), NY
   Contact: Office of Compliance and Diversity (role-based; Title IX / Section 504 / ADA contact per BMCC nondiscrimination statement) — ocd@bmcc.cuny.edu
   Source: https://bmcc.catalog.cuny.edu/about/nondiscrimination-statement
   Time zone: Eastern, so send the eventual outreach around 8:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[ocd@bmcc.cuny.edu]'
