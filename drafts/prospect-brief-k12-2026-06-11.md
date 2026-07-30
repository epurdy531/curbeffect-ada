Subject: prospect brief (k-12) for 2026-06-11
To: info@curbeffect.com

5 new ADA Title II K–12 school-district prospects today. For each one,
run the scan command below: it seeds the new entity into the outreach-
db, scans up to 5 of the entity's PDFs through veraPDF, then composes
an outreach draft (using templates/outreach-email.md with the worst-
failing PDF's stats filled in) and emails it to you for review.

1. Wake County Public School System, NC
   Contact: Joseph Man, Section 504/ADA Student Coordinator — jman@wcpss.net
   Source: https://www.wcpss.net/non-discrimination-and-title-ix
   Time zone: Eastern, so send the eventual outreach around 8:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[jman@wcpss.net]'

2. Orange County Public Schools, FL
   Contact: Jay Cardinali, ADA Compliance Officer, Office of Legal Services — ADA@ocps.net
   Source: https://www.ocps.net/departments/legal_services/ada_compliance
   Time zone: Eastern, so send the eventual outreach around 8:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[ADA@ocps.net]'

3. Broward County Public Schools, FL
   Contact: Evelyne Ng, Section 504/ADA Specialist (Exceptional Student Education) — Evelyne.ng@browardschools.com
   Source: https://disabilityrightsflorida.org/disability-topics/disability_topic_info/section_504_county_by_county
   Time zone: Eastern, so send the eventual outreach around 8:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[Evelyne.ng@browardschools.com]'

4. Montgomery County Public Schools, MD
   Contact: (role-based) ADA Compliance Coordinator, Office of Human Resources and Development / Department of Compliance and Investigations — DCI@mcpsmd.org
   Source: https://www.montgomeryschoolsmd.org/info/nondiscrimination/
   Time zone: Eastern, so send the eventual outreach around 8:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[DCI@mcpsmd.org]'

5. Metropolitan Nashville Public Schools, TN
   Contact: Jennifer Earwood, ADA Coordinator, Office of Facility Planning & Construction — ADA@mnps.org
   Source: https://www.mnps.org/about/departments/legal/ada-compliance
   Time zone: Central, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[ADA@mnps.org]'
