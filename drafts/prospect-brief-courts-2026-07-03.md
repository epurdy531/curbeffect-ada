Subject: prospect brief (courts) for 2026-07-03
To: info@curbeffect.com

5 new ADA Title II county/district-court prospects today from IL / IA / MN.
For each one, run the scan command below: it seeds the new entity into the
outreach-db, scans up to 5 of the entity's PDFs through veraPDF, then composes
an outreach draft (using templates/outreach-email.md with the worst-failing
PDF's stats filled in) and emails it to you for review.

(Note: this round is all Iowa + Minnesota courts. The three Illinois circuit
courts screened today — 19th Circuit/Lake, 10th Circuit/Peoria, 14th
Circuit/Rock Island — all run on CivicPlus and were skipped per the phase-1
CivicPlus exclusion.)

1. Iowa District Court for Story County, IA
   Contact: Bill Watson, Disability Access Coordinator, Judicial District 2 — bill.watson@iowacourts.gov (email HTML-entity-encoded on the ADA page but renders as plaintext; phone 515-576-6336. Alt: Clerk of District Court countyclerk.story@iowacourts.gov, 515-382-7410, Story County Justice Center, 1315 South B Avenue, Nevada, IA 50201)
   Source: https://www.iowacourts.gov/for-the-public/ada
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[bill.watson@iowacourts.gov]'

2. Iowa District Court for Dubuque County, IA
   Contact: Linda Nilges, Disability Access Coordinator, Judicial District 1 — linda.nilges@iowacourts.gov (published plaintext in the official ADA coordinators doc; phone 319-833-3332. Alt: Clerk of District Court countyclerk.dubuque@iowacourts.gov, 563-589-4418, Dubuque County Courthouse, 720 Central Avenue, Dubuque, IA 52001)
   Source: https://www.iowacourts.gov/for-the-public/ada
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[linda.nilges@iowacourts.gov]'

3. Iowa District Court for Johnson County, IA
   Contact: (role-based) Clerk of the District Court, Johnson County (Sixth Judicial District) — countyclerk.johnson@iowacourts.gov (email HTML-entity-encoded on the county court page but renders as plaintext; phone 319-356-6060. Named alts: District Court Administrator Kellee Cortez, 319-398-3920 ext. 1100; District 6 ADA coordinator Paula Underwood, email Cloudflare-obfuscated / not plaintext. DISTINCT from Johnson County government)
   Source: https://www.iowacourts.gov/iowa-courts/district-court/judicial-district-6/district/6/county/johnson
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[countyclerk.johnson@iowacourts.gov]'

4. Blue Earth County District Court, MN
   Contact: Therese Kadrlik, Court Administrator / ADA Accommodation Contact (Fifth Judicial District) — email not publicly listed (contact page and ADA-contacts page use a form, no plaintext email; phone 507-594-3055; Blue Earth County Justice Center, 401 Carver Road, Mankato, MN 56001. County seat Mankato — does NOT serve Rochester)
   Source: https://mncourts.gov/find-courts/blue-earth
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose: obtain a published email first, then —
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[<published email>]'

5. St. Louis County District Court, MN
   Contact: Mark Hoyne, ADA Accommodation Contact / Court Administration (Sixth Judicial District) — email not publicly listed (ADA-contacts page names Hoyne, phone 218-221-7656; court page uses a form, no plaintext email; St. Louis County Courthouse, 100 N. Fifth Ave W., Duluth, MN 55802. This is St. Louis County MINNESOTA, distinct from St. Louis, MO)
   Source: https://mncourts.gov/find-courts/stlouis
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose: obtain a published email first, then —
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[<published email>]'
