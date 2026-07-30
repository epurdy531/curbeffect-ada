Subject: prospect brief (k-12) for 2026-06-17
To: info@curbeffect.com

5 new ADA Title II K–12 school-district prospects today. For each one,
run the scan command below: it seeds the new entity into the outreach-
db, scans up to 5 of the entity's PDFs through veraPDF, then composes
an outreach draft (using templates/outreach-email.md with the worst-
failing PDF's stats filled in) and emails it to you for review.

1. Cobb County School District, GA
   Contact: Gretchen Walton, Compliance and Legislative Affairs Officer / District Title IX Coordinator (published district-wide nondiscrimination contact) — gretchen.walton@cobbk12.org
   Source: https://www.cobbk12.org/page/49706/title-ix
   Time zone: Eastern Time, so send the eventual outreach around 8:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[gretchen.walton@cobbk12.org]'

2. Pittsburgh Public Schools, PA
   Contact: Rodney Necciai, Assistant Superintendent of Student Support Services / Section 504/Chapter 15 Coordinator for Students (published Section 504 page lists this designee inbox as the contact email) — mfriez1@pghschools.org
   Source: https://www.pghschools.org/student-supports/section-504
   Time zone: Eastern Time, so send the eventual outreach around 8:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[mfriez1@pghschools.org]'

3. Milwaukee Public Schools, WI
   Contact: Jeff Molter, 504/ADA Coordinator for Students, MPS Department of Specialized Services — email not publicly listed (phone (414) 475-8139)
   Source: https://dcf.wisconsin.gov/files/mcps/pdf/parent-resouce-guide.pdf (WI DCF parent guide citing MPS nondiscrimination notice)
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[email-not-publicly-listed@milwaukeepublicschools.org]'

4. Detroit Public Schools Community District, MI
   Contact: (role-based) Office of Employee Health Services — handles ADA / Section 504 inquiries per Board Policy 3123 — dps.ehs@detroitk12.org
   Source: https://www.detroitk12.org/services-and-supports/services/americans-with-disabilities
   Time zone: Eastern Time, so send the eventual outreach around 8:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[dps.ehs@detroitk12.org]'

5. Gwinnett County Public Schools, GA
   Contact: Marlena Wragg, Special Education Director of Compliance / District 504 Coordinator — email not publicly listed (phone 678-301-7104)
   Source: https://www.gcpsk12.org/about-us/divisions-and-teams/teaching-and-learning/special-education-and-psychological-services/section-504
   Time zone: Eastern Time, so send the eventual outreach around 8:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[email-not-publicly-listed@gcpsk12.org]'
