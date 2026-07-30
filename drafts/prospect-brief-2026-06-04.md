Subject: prospect brief for 2026-06-04
To: erica.mcdevitt@curbeffect.com

4 new ADA Title II prospects today. For each one, run the scan command
below: it seeds the new entity into the outreach-db, scans up to 5 of the
entity's PDFs through veraPDF, then composes an outreach draft (using
templates/outreach-email.md with the worst-failing PDF's stats filled in)
and emails it to you for review.

1. Lone Star College, TX
   Contact: Angie Maxey, Executive Director, Accessibility Services and Resources (ADA Coordinator and Section 504 Coordinator per published EO page) — Angie.Maxey@lonestar.edu
   Source: https://www.lonestar.edu/accessibility-services-resources.htm
   Time zone: Houston-area campuses are in Central Time, so send around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time. Best send days are Tuesday–Thursday.
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[Angie.Maxey@lonestar.edu]'

2. Sinclair Community College, OH
   Contact: Lorrie Spivey, Manager of Accessibility and Counseling Services and ADA/504 Coordinator — lorrie.spivey@sinclair.edu
   Source: https://www.sinclair.edu/about/consumer-info/accessibility/concerns-or-complaints/
   Time zone: Dayton, OH is in Eastern Time, so send around 8:15 a.m. Mountain Time to land at 10:15 a.m. their time. Best send days are Tuesday–Thursday.
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[lorrie.spivey@sinclair.edu]'

3. Cuyahoga Community College (Tri-C), OH
   Contact: Julie Gran, Deputy General Counsel / Executive Director of Legal Services & Institutional Access (Section 504/ADA Coordinator per Tri-C handbook) — julianne.gran@tri-c.edu
   Source: https://www.tri-c.edu/administrative-departments/office-of-legal-services/legal-services-staff.html
   Time zone: Cleveland, OH is in Eastern Time, so send around 8:15 a.m. Mountain Time to land at 10:15 a.m. their time. Best send days are Tuesday–Thursday.
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[julianne.gran@tri-c.edu]'

4. St. Petersburg College, FL
   Contact: (role-based) ADA/504 Officer — ADA504@spcollege.edu
   Source: https://www.spcollege.edu/friends-partners/about/compliance-statements/accessibility-services
   Time zone: St. Petersburg, FL is in Eastern Time, so send around 8:15 a.m. Mountain Time to land at 10:15 a.m. their time. Best send days are Tuesday–Thursday.
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[ADA504@spcollege.edu]'
