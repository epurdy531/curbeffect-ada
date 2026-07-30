Subject: prospect brief (k-12) for 2026-06-18
To: info@curbeffect.com

5 new ADA Title II K–12 school-district prospects today. For each one,
run the scan command below: it seeds the new entity into the outreach-
db, scans up to 5 of the entity's PDFs through veraPDF, then composes
an outreach draft (using templates/outreach-email.md with the worst-
failing PDF's stats filled in) and emails it to you for review.

1. Hillsborough County Public Schools, FL
   Contact: Marsha Alcorn, School Psychologist / Section 504 Coordinator — Marsha.Alcorn@sdhc.k12.fl.us
   Source: https://disabilityrightsflorida.org/disability-topics/disability_topic_info/section_504_county_by_county
   Time zone: Eastern Time, so send the eventual outreach around 8:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[Marsha.Alcorn@sdhc.k12.fl.us]'

2. Duval County Public Schools, FL
   Contact: Rebecca Scissors, ADAAA Coordinator and Title II Coordinator — scissorsr@duvalschools.org
   Source: https://www.duvalschools.org/page/adaaa
   Time zone: Eastern Time, so send the eventual outreach around 8:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[scissorsr@duvalschools.org]'

3. Baltimore City Public Schools, MD
   Contact: (role-based) Coordinator – Section 504, Special Education and Student Supports — 504support@bcps.k12.md.us
   Source: https://www.baltimorecityschools.org/page/section-504
   Time zone: Eastern Time, so send the eventual outreach around 8:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[504support@bcps.k12.md.us]'

4. Memphis-Shelby County Schools, TN
   Contact: Rosalind J. Davis, Section 504 Coordinator — davisrj@scsk12.org
   Source: https://www.scsk12.org/services/files/2016/504_Brochure_2016-17%20II.pdf
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[davisrj@scsk12.org]'

5. Cleveland Metropolitan School District, OH
   Contact: Dr. Trent Mosley, Chief of Excellence and Culture (district 504 procedure manual references a Section 504/ADA Compliance Officer role at 1111 Superior Ave E but does not name an individual; Mosley is the closest published executive leadership role) — Trent.Mosley@ClevelandMetroSchools.org
   Source: https://www.clevelandmetroschools.org/about-us/executive-leadership-team
   Time zone: Eastern Time, so send the eventual outreach around 8:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[Trent.Mosley@ClevelandMetroSchools.org]'
