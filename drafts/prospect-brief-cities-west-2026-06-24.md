Subject: prospect brief (cities batch B) for 2026-06-24
To: info@curbeffect.com

5 more new ADA Title II city-government prospects today from IL / IA / MN
(in addition to the earlier cities-east batch). For each one, run the scan
command below: it seeds the new entity into the outreach-db, scans up to 5
of the entity's PDFs through veraPDF, then composes an outreach draft
(using templates/outreach-email.md with the worst-failing PDF's stats
filled in) and emails it to you for review.

1. City of Des Plaines, IL
   Contact: (role-based) ADA Coordinator, Department of Human Resources — hr@desplainesil.gov
   Source: https://www.desplainesil.gov/access-your-government/city-departments/human-resources/ada-accessibility-and-compliance
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[hr@desplainesil.gov]'

2. Village of Orland Park, IL
   Contact: Khurshid Hoda, Accessibility Coordinator (ADA Title II/III Coordinator) — email not publicly listed (best contact page: https://www.orlandpark.org/i-want-to/contact-us; ADA phone (708) 403-6128)
   Source: https://www.orlandpark.org/government/transparency-and-accountability
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[email not publicly listed]'

3. City of Ottumwa, IA
   Contact: Barb Codjoe, Director of Human Resources (City routes ADA accommodation requests to HR) — codjoeb@ottumwa.us
   Source: https://www.ottumwa.us/departments/department_heads.php
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[codjoeb@ottumwa.us]'

4. City of Edina, MN
   Contact: Amy Murray, Risk & Safety Coordinator / ADA Coordinator — email not publicly listed (email Cloudflare-obfuscated on all pages; direct phone 952-903-5779; ADA grievance page: https://www.edinamn.gov/221/ADA-Grievance-Procedure)
   Source: https://www.edinamn.gov/221/ADA-Grievance-Procedure
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[email not publicly listed]'

5. City of Moorhead, MN
   Contact: (role-based) Communications Department (designated accessibility contact) — email not publicly listed (best contact form: https://forms.moorheadmn.gov/Contact-Form; phone 218-299-5373)
   Source: https://www.moorheadmn.gov/government/policies/accessibility/
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[email not publicly listed]'
