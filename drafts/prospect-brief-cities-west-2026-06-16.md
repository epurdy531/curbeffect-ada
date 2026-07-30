Subject: prospect brief (cities-west) for 2026-06-16
To: info@curbeffect.com

5 new ADA Title II city-government prospects today (west of the
Mississippi). For each one, run the scan command below: it seeds the
new entity into the outreach-db, scans up to 5 of the entity's PDFs
through veraPDF, then composes an outreach draft (using
templates/outreach-email.md with the worst-failing PDF's stats filled
in) and emails it to you for review.

1. City of Tacoma, WA
   Contact: Lucas Smiraldo, Staff Liaison, Tacoma Area Commission on Disabilities (published ADA contact for the City) — email not publicly listed (phone 253-591-5048; contact form at tacoma.gov/help-contact-us/)
   Source: https://tacoma.gov/ada-title-ii-policy/
   Time zone: Pacific, so send the eventual outreach around 11:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[email not publicly listed]'

2. City of Santa Fe, NM
   Contact: Daniel Lopez, Jr., Designated ADA Coordinator / Equity and ADA Manager — dxlopez@santafenm.gov
   Source: https://santafenm.gov/ada-compliance
   Time zone: Mountain, so send the eventual outreach around 10:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[dxlopez@santafenm.gov]'

3. City of Tulsa, OK
   Contact: (role-based) Resilience and Equity Department — oversees Justice and Human Rights / Accessible Tulsa ADA (no individual ADA Coordinator named on published pages) — resilient@cityoftulsa.org
   Source: https://www.cityoftulsa.org/government/departments/resilience-and-equity/our-staff/
   Time zone: Central, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[resilient@cityoftulsa.org]'

4. City of Berkeley, CA
   Contact: (role-based) ADA Compliance Coordinator, Disability Compliance Program (Department of Public Works) — ada@cityofberkeley.info
   Source: https://berkeleyca.gov/your-government/our-work/disability-compliance-program
   Time zone: Pacific, so send the eventual outreach around 11:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[ada@cityofberkeley.info]'

5. City of Fargo, ND
   Contact: Bekki Majerus, Buildings and Grounds Director of Facilities Management / ADA Coordinator — email not publicly listed (phone 701-298-6966; email behind contact-form link at fargond.gov/contact-us)
   Source: https://fargond.gov/accessibility/fargo-ada-notice
   Time zone: Central, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[email not publicly listed]'
