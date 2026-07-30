Subject: prospect brief (community colleges) for 2026-06-16
To: info@curbeffect.com

5 new ADA Title II community-college prospects today. For each one, run
the scan command below: it seeds the new entity into the outreach-db,
scans up to 5 of the entity's PDFs through veraPDF, then composes an
outreach draft (using templates/outreach-email.md with the worst-
failing PDF's stats filled in) and emails it to you for review.

1. Prince George's Community College, MD
   Contact: Sabrina Thomas, ADA Coordinator (coordinates Title II / Section 504 compliance per published Other Miscellaneous Information page) — thomassm@pgcc.edu
   Source: https://www.pgcc.edu/about-pgcc/institutional-information--policies/student-consumer-information/other-miscellaneous-information/
   Time zone: Eastern, so send the eventual outreach around 8:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[thomassm@pgcc.edu]'

2. St. Louis Community College, MO
   Contact: Shannon Nicholson, Director for Community Standards / Title IX Coordinator (named civil-rights contact in published Statement of Nondiscrimination; no separately named ADA Coordinator) — snicholson29@stlcc.edu
   Source: https://stlcc.edu/college-policy-procedures/statement-of-nondiscrimination.aspx
   Time zone: Central, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[snicholson29@stlcc.edu]'

3. Pellissippi State Community College, TN
   Contact: George Underwood, Executive Director of Institutional Compliance / Title IX Coordinator / ADA Compliance Coordinator — gtunderwood@pstcc.edu
   Source: https://www.pstcc.edu/compliance/staff/
   Time zone: Eastern (Knoxville observes Eastern Time), so send the eventual outreach around 8:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[gtunderwood@pstcc.edu]'

4. College of DuPage, IL
   Contact: (role-based) Dean of Students — serves as ADA Compliance Officer per published Student Services catalog (role-based email; individual name not published on Dean of Students page) — deanofstudents@cod.edu
   Source: https://catalog.cod.edu/student-services-general-student-information/
   Time zone: Central, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[deanofstudents@cod.edu]'

5. J. Sargeant Reynolds Community College, VA
   Contact: Dr. Danielle Filipchuk, Dean of Students / College Title IX Coordinator / ADA & Section 504 Compliance Officer — dfilipchuk@reynolds.edu
   Source: https://www.reynolds.edu/who_we_are/about/access.html
   Time zone: Eastern, so send the eventual outreach around 8:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[dfilipchuk@reynolds.edu]'
