Subject: prospect brief (community colleges) for 2026-06-12
To: info@curbeffect.com

5 new ADA Title II community-college prospects today. For each one, run
the scan command below: it seeds the new entity into the outreach-db,
scans up to 5 of the entity's PDFs through veraPDF, then composes an
outreach draft (using templates/outreach-email.md with the worst-
failing PDF's stats filled in) and emails it to you for review.

1. Hillsborough College (HCC), FL
   Contact: Dr. Sharon Collins, Coordinator of Services for Students with Disabilities (Brandon Campus) — bcollins@hccfl.edu
   Source: https://www.hcfl.edu/student-services/services-students-disabilities
   Time zone: Eastern Time (Tampa, FL), so send the eventual outreach around 8:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[bcollins@hccfl.edu]'

2. Brookdale Community College, NJ
   Contact: David Stout, Ph.D., Vice President for Student Success / ADA & Section 504 Coordinator — dstout@brookdalecc.edu
   Source: https://www.brookdalecc.edu/about/about-the-college/ada-section-504/
   Time zone: Eastern Time (Lincroft, NJ), so send the eventual outreach around 8:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[dstout@brookdalecc.edu]'

3. Joliet Junior College, IL
   Contact: Angela Kaysen-Luzbetak, Compliance Officer / ADA & Section 504 Coordinator — compliance@jjc.edu
   Source: https://jjc.edu/disability-services
   Time zone: Central Time (Joliet, IL), so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[compliance@jjc.edu]'

4. Diablo Valley College, CA
   Contact: Vicki Ferguson, Vice President of Equity and Student Services / Title IX Coordinator (also Section 504, Sexual Harassment, and EEOC Officer) — vferguson@dvc.edu
   Source: https://www.dvc.edu/title-ix
   Time zone: Pacific Time (Pleasant Hill, CA), so send the eventual outreach around 11:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[vferguson@dvc.edu]'

5. Des Moines Area Community College (DMACC), IA
   Contact: Sharon Bittner, Section 504/ADA Coordinator — sgbittner@dmacc.edu
   Source: https://www.dmacc.edu/disabilities/ada.html
   Time zone: Central Time (Ankeny, IA), so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[sgbittner@dmacc.edu]'
