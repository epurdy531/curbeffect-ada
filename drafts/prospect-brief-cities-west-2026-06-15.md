Subject: prospect brief (cities-west) for 2026-06-15
To: info@curbeffect.com

5 new ADA Title II city-government prospects today (west of the
Mississippi). For each one, run the scan command below: it seeds the
new entity into the outreach-db, scans up to 5 of the entity's PDFs
through veraPDF, then composes an outreach draft (using
templates/outreach-email.md with the worst-failing PDF's stats filled
in) and emails it to you for review.

1. City of Salt Lake City, UT
   Contact: Angela Haylock, ADA Manager, Mayor's Office of Access & Belonging — ada@slc.gov
   Source: https://www.slc.gov/access-belonging/salt-lake-city-accessibility/
   Time zone: Mountain Time, so send the eventual outreach around 10:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[ada@slc.gov]'

2. City of Salem, OR
   Contact: (role-based), Title VI / Section 504 Coordinator — humanrights@cityofsalem.net
   Source: https://www.cityofsalem.net/government/equity-accessibility/notice-under-the-americans-with-disabilities-act-ada
   Time zone: Pacific Time, so send the eventual outreach around 11:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[humanrights@cityofsalem.net]'

3. City of Fresno, CA
   Contact: Joe Hinojosa, ADA Coordinator, Department of Public Works — ada@fresno.gov
   Source: https://www.fresno.gov/publicworks/ada/
   Time zone: Pacific Time, so send the eventual outreach around 11:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[ada@fresno.gov]'

4. City of Bellevue, WA
   Contact: Sharon Cini, ADA, Title VI, and Equal Opportunity Officer — ADATitleVI@bellevuewa.gov
   Source: https://bellevuewa.gov/resident-resources/adatitle-vi-resources/ada-title-vi-contacts
   Time zone: Pacific Time, so send the eventual outreach around 11:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[ADATitleVI@bellevuewa.gov]'

5. City of Olympia, WA
   Contact: Tobi Hill-Meyer, ADA and Accessibility Coordinator — adacoordinator@ci.olympia.wa.us
   Source: https://www.olympiawa.gov/info/ada_notice.php
   Time zone: Pacific Time, so send the eventual outreach around 11:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[adacoordinator@ci.olympia.wa.us]'
