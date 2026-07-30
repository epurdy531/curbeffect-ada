Subject: prospect brief (cities batch A) for 2026-06-22
To: info@curbeffect.com

5 new ADA Title II city-government prospects today from IL / IA / MN.
For each one, run the scan command below: it seeds the new entity into
the outreach-db, scans up to 5 of the entity's PDFs through veraPDF,
then composes an outreach draft (using templates/outreach-email.md with
the worst-failing PDF's stats filled in) and emails it to you for
review.

1. Town of Cicero, IL
   Contact: Ryan Chlada, Executive Director, Office for People with Disabilities — rchlada@thetownofcicero.com
   Source: https://thetownofcicero.com/community/people-with-disabilities/
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[rchlada@thetownofcicero.com]'

2. Village of Tinley Park, IL
   Contact: Angela Arrigo, Human Resources Director (HR Dept handles ADA accommodation requests; no separately named ADA Coordinator) — humanresources@tinleypark.org
   Source: https://www.tinleypark.org/government/departments/human_resources_department/index.php
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[humanresources@tinleypark.org]'

3. City of Clive, IA
   Contact: Elizabeth Hansen, Director of Administrative Services (oversees HR; no separately named ADA Coordinator) — ehansen@cityofclive.com
   Source: https://www.cityofclive.com/phone_and_email_directory_listing/index.php
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[ehansen@cityofclive.com]'

4. City of North Liberty, IA
   Contact: Ryan Heiar, City Administrator (no separately named ADA Coordinator) — email not publicly listed (staff emails are JS-obfuscated, not in plaintext); best contact page: https://northlibertyiowa.org/government/contact-us/ — phone (319) 626-5700
   Source: https://northlibertyiowa.org/government/contact-us/
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[email not publicly listed]'
   (No published email — confirm a contact address by phone before running the scan/compose step for this one.)

5. City of Albert Lea, MN
   Contact: General City contact inbox (no individual ADA Coordinator named) — info@ci.albertlea.mn.us
   Source: https://cityofalbertlea.org/contact/
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[info@ci.albertlea.mn.us]'

---
Notes for review:
- All 5 entities verified eligible: city/town/village governments in IL/IA/MN,
  none already in contact-log.md (including today's other-brief additions),
  none on CivicPlus/CivicEngage, and each homepage fetched cleanly.
- CMS by entity: Cicero (WordPress), Tinley Park (Revize), Clive (Revize),
  North Liberty (WordPress/Maudience), Albert Lea (WordPress).
- Best send days are Tuesday–Thursday.
- A number of strong IL/IA/MN cities were screened out today: City of
  Bettendorf, City of Waterloo, and City of Eagan were already added to the
  tracker earlier today by the call-list brief; City of Peoria, Cedar Falls,
  Maple Grove, Apple Valley, Decatur, Urbandale, Muscatine, Coralville,
  Moline, Burlington, Red Wing, Roseville, Waukegan, DeKalb, Elgin, and
  Faribault are all on CivicPlus/CivicEngage (excluded in phase 1).
