Subject: prospect brief (cities-east) for 2026-06-16
To: info@curbeffect.com

5 new ADA Title II city-government prospects today (east of the
Mississippi). For each one, run the scan command below: it seeds the
new entity into the outreach-db, scans up to 5 of the entity's PDFs
through veraPDF, then composes an outreach draft (using
templates/outreach-email.md with the worst-failing PDF's stats filled
in) and emails it to you for review.

1. City of Jacksonville, FL
   Contact: Kara Tucker, Americans with Disabilities Act (ADA) Coordinator — karat@coj.net
   Source: https://www.jacksonville.gov/departments/parks-and-recreation/disabled-services/ada-coordinator
   Time zone: Eastern, so send the eventual outreach around 8:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[karat@coj.net]'

2. City of Indianapolis, IN
   Contact: (role-based) Office of Disability Affairs, Department of Public Works — email not publicly listed
   Source: https://www.indy.gov/activity/office-of-disability-affairs
   Time zone: Eastern, so send the eventual outreach around 8:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[email not publicly listed]'

3. City of Toledo, OH
   Contact: (role-based) ADA Coordinator, Office of Diversity, Equity and Inclusion — Diversity&Inclusion@toledo.oh.gov
   Source: https://toledo.oh.gov/employee-resources/americans-with-disabilities-act
   Time zone: Eastern, so send the eventual outreach around 8:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[Diversity&Inclusion@toledo.oh.gov]'

4. City of Richmond, VA
   Contact: Veronica E. Kenner, ADA Coordinator (Human Resources) — email not publicly listed
   Source: https://www.rva.gov/human-resources/americans-disabilities-act-title-ii
   Time zone: Eastern, so send the eventual outreach around 8:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[email not publicly listed]'

5. City of Birmingham, AL
   Contact: Chaz Mitchell, ADA Coordinator, Office of the Birmingham City Council — email not publicly listed
   Source: https://www.birminghamal.gov/government/city-council/ada-policies-procedures-program-accessibility-accommodation
   Time zone: Central, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[email not publicly listed]'
