Subject: prospect brief (courts) for 2026-07-01
To: info@curbeffect.com

5 new ADA Title II county/district-court prospects today from IL / IA / MN.
For each one, run the scan command below: it seeds the new entity into the
outreach-db, scans up to 5 of the entity's PDFs through veraPDF, then composes
an outreach draft (using templates/outreach-email.md with the worst-failing
PDF's stats filled in) and emails it to you for review.

1. Iowa District Court for Polk County, IA
   Contact: (role-based) Clerk of the District Court / Court Administration (Fifth Judicial District) — email not publicly listed (best contact page: https://www.iowacourts.gov/iowa-courts/district-court/judicial-district-5/district/5/county/polk ; ADA Disability Access Coordinators: https://www.iowacourts.gov/for-the-public/ada — District 5 coordinator Christopher Patterson, 515-286-3394; clerk line 515-561-5718)
   Source: https://www.iowacourts.gov/iowa-courts/district-court/judicial-district-5/district/5/county/polk
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose: obtain a published email first, then —
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[<published email>]'

2. Iowa District Court for Woodbury County, IA
   Contact: (role-based) Clerk of the District Court / Court Administration (Third Judicial District) — email not publicly listed (best contact page: https://www.iowacourts.gov/iowa-courts/district-court/judicial-district-3/district/3/county/woodbury ; ADA Disability Access Coordinators: https://www.iowacourts.gov/for-the-public/ada — Woodbury coordinator Peggy Frericks, 712-279-6035; clerk line 712-279-6611)
   Source: https://www.iowacourts.gov/iowa-courts/district-court/judicial-district-3/district/3/county/woodbury
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose: obtain a published email first, then —
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[<published email>]'

3. Hennepin County District Court, MN
   Contact: Sharon Cain, ADA Accommodation Contact / Court Administration (Fourth Judicial District) — email not publicly listed (named ADA contact: https://mncourts.gov/adaaccommodation/ada-contacts ; phone 612-540-7300; Court Administrator Sara Gonsalves, 612-348-6000; contact page is a form, no plaintext email)
   Source: https://mncourts.gov/find-courts/hennepin
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose: obtain a published email first, then —
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[<published email>]'

4. Stearns County District Court, MN
   Contact: George Lock, Court Administrator / ADA Accommodation Contact (Seventh Judicial District) — email not publicly listed (ADA contacts: https://mncourts.gov/adaaccommodation/ada-contacts ; St. Cloud courthouse 320-656-3620; contact page is a form, no plaintext email)
   Source: https://mncourts.gov/find-courts/stearns
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose: obtain a published email first, then —
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[<published email>]'

5. Sixth Judicial Circuit Court of Champaign County, IL
   Contact: (role-based) Court Disability Coordinator (Sixth Judicial Circuit) — email not publicly listed (accommodation requests mailed to the CDC; forms via the Circuit Clerk's Office. Source page: https://sixthcircuitcourt.com/disabilities.php ; Champaign County Circuit Clerk 217-384-3725)
   Source: https://sixthcircuitcourt.com/disabilities.php
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose: obtain a published email first, then —
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[<published email>]'
