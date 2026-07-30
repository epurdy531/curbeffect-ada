Subject: prospect brief (courts) for 2026-06-26
To: info@curbeffect.com

5 new ADA Title II county/district-court prospects today from IL / IA / MN.
For each one, run the scan command below: it seeds the new entity into the
outreach-db, scans up to 5 of the entity's PDFs through veraPDF, then composes
an outreach draft (using templates/outreach-email.md with the worst-failing
PDF's stats filled in) and emails it to you for review.

NOTE: only Madison County, IL had a genuinely published plaintext email. The
other four courts publish no plaintext email (MN courts use contact forms; the
17th Circuit and Scott County emails are JS/Cloudflare-obfuscated, so per the
"never guess an email" rule they're recorded as "email not publicly listed").
For those four, the scan:by_email command needs a real address first — grab one
from the contact page listed, or seed/scan the entity by URL instead, before
running.

1. Third Judicial Circuit Court of Madison County, IL
   Contact: (role-based), Court Disability Coordinator, Office of the Chief Judge — cdc@madisoncountyil.gov
   Source: https://www.madisoncountyil.gov/departments/circuit_court/disabilityaccess.php
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[cdc@madisoncountyil.gov]'

2. 17th Judicial Circuit Court of Winnebago County, IL
   Contact: Michael Smith, Deputy Court Administrator / Court Disability Coordinator — email not publicly listed (best contact page below; phone 815-319-4806)
   Source: https://illinois17th.com/courthouse-info/ada-accessibility
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose (needs a published email first):
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[<obtain email from contact page above>]'

3. Iowa District Court for Scott County, IA
   Contact: Andrea Dosland, District Court Administrator (Seventh Judicial District) — email not publicly listed (best contact page below; clerk line 563-326-8647)
   Source: https://www.scottcountyiowa.gov/courts/court-administration
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose (needs a published email first):
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[<obtain email from contact page above>]'

4. Ramsey County District Court, MN
   Contact: Jill Ramaker, ADA Coordinator, Ramsey County District Court (Second Judicial District) — email not publicly listed (contact form only; phone 651-266-5127)
   Source: https://mncourts.gov/adaaccommodation/ada-contacts (named coordinator); contact page https://mncourts.gov/find-courts/ramsey/contact-us
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose (needs a published email first):
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[<obtain email from contact page above>]'

5. Dakota County District Court, MN
   Contact: Maria King, Court Administrator, Dakota County District Court (First Judicial District) — email not publicly listed (contact form only; Judicial Center–Hastings 651-377-7180). Per-location ADA coordinators: Holly Bohlken (Hastings), Brenda Jerde (Apple Valley), Becky Schneider (West St. Paul).
   Source: https://mncourts.gov/find-courts/dakota/contact-us (administrator); https://mncourts.gov/adaaccommodation/ada-contacts (ADA coordinators)
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose (needs a published email first):
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[<obtain email from contact page above>]'
