Subject: prospect brief (cities-west) for 2026-06-18
To: info@curbeffect.com

5 new ADA Title II city-government prospects today (west of the
Mississippi). For each one, run the scan command below: it seeds the
new entity into the outreach-db, scans up to 5 of the entity's PDFs
through veraPDF, then composes an outreach draft (using
templates/outreach-email.md with the worst-failing PDF's stats filled
in) and emails it to you for review.

1. City of New Orleans, LA
   Contact: Eva M. Hurst, ADA Administrator — emhurst@nola.gov
   Source: https://nola.gov/next/americans-with-disabilities-act-(ada)/home/
   Time zone: Central, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[emhurst@nola.gov]'

2. City of Norman, OK
   Contact: (role-based) Accessibility / ADA contact — webteam@normanok.gov (no individual ADA-504 Coordinator named in plaintext on the City's published Accessibility page)
   Source: https://www.normanok.gov/about-norman/accessibility
   Time zone: Central, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[webteam@normanok.gov]'

3. City of Las Cruces, NM
   Contact: Saron McKee, ADA Coordinator (project manager of the City's ADA Transition Plan) — smckee@lascruces.gov (email is Cloudflare-obfuscated on the public HR page; decoded value is smckee@lascruces.gov)
   Source: https://lascruces.gov/government/departments/human-resources/
   Time zone: Mountain, so send the eventual outreach around 10:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[smckee@lascruces.gov]'

4. City of Scottsdale, AZ
   Contact: Felicia Beltran, ADA / Title VI Compliance Coordinator — felicia.beltran@scottsdaleaz.gov
   Source: https://www.scottsdaleaz.gov/accessibility
   Time zone: Arizona MST (no daylight saving) — in June, 10:15 a.m. AZ time = 11:15 a.m. Mountain Daylight Time, so send around 11:15 a.m. Mountain Time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[felicia.beltran@scottsdaleaz.gov]'

5. City of Stockton, CA
   Contact: Robert Hernandez, ADA Coordinator — ADA.Coordinator@stocktonca.gov
   Source: https://www.stocktonca.gov/services/claims_for_damages/americans_with_disabilities_act_(ada).php
   Time zone: Pacific, so send the eventual outreach around 11:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[ADA.Coordinator@stocktonca.gov]'
