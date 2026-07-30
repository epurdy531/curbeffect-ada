Subject: prospect brief (courts) for 2026-06-30
To: info@curbeffect.com

5 new ADA Title II county/district-court prospects today from IL / IA / MN.
For each one, run the scan command below: it seeds the new entity into the
outreach-db, scans up to 5 of the entity's PDFs through veraPDF, then composes
an outreach draft (using templates/outreach-email.md with the worst-failing
PDF's stats filled in) and emails it to you for review.

1. 20th Judicial Circuit Court of St. Clair County, IL
   Contact: Mary Berneking, Court Disability Coordinator (Twentieth Judicial Circuit Court) — mary.berneking@co.st-clair.il.us
   Source: https://www.co.st-clair.il.us/departments/ada-information/court-access
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[mary.berneking@co.st-clair.il.us]'

2. Iowa District Court for Linn County, IA
   Contact: (role-based) Clerk of the District Court / Court Administration (Sixth Judicial District) — email not publicly listed (best contact page: https://www.iowacourts.gov/iowa-courts/district-court/judicial-district-6/district/6/county/linn ; ADA Disability Access Coordinators: https://www.iowacourts.gov/for-the-public/ada ; clerk line 319-398-3411)
   Source: https://www.iowacourts.gov/iowa-courts/district-court/judicial-district-6/district/6/county/linn
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose: obtain a published email first, then —
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[<published email>]'

3. Iowa District Court for Black Hawk County, IA
   Contact: (role-based) Clerk of the District Court / Court Administration (First Judicial District) — email not publicly listed (best contact page: https://www.iowacourts.gov/iowa-courts/district-court/judicial-district-1/district/1/county/black-hawk ; ADA Disability Access Coordinators: https://www.iowacourts.gov/for-the-public/ada ; clerk line 319-833-3331)
   Source: https://www.iowacourts.gov/iowa-courts/district-court/judicial-district-1/district/1/county/black-hawk
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose: obtain a published email first, then —
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[<published email>]'

4. Washington County District Court, MN
   Contact: Deb Lepper, ADA Accommodation Contact / Court Administration (Tenth Judicial District) — email not publicly listed (named ADA contact: https://mncourts.gov/adaaccommodation/ada-contacts ; phone 651-413-8030; contact page is a form, no plaintext email)
   Source: https://mncourts.gov/adaaccommodation/ada-contacts
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose: obtain a published email first, then —
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[<published email>]'

5. Anoka County District Court, MN
   Contact: Kristin Fish, ADA Accommodation Contact / Court Administration (Tenth Judicial District) — email not publicly listed (named ADA contact: https://mncourts.gov/adaaccommodation/ada-contacts ; phone 763-760-6576; contact page is a form, no plaintext email)
   Source: https://mncourts.gov/adaaccommodation/ada-contacts
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose: obtain a published email first, then —
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[<published email>]'
