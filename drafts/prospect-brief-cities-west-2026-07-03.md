Subject: prospect brief (cities batch B) for 2026-07-03
To: info@curbeffect.com

5 more new ADA Title II city-government prospects today from IL / IA / MN (in
addition to the earlier cities-east batch). For each one, run the scan command
below: it seeds the new entity into the outreach-db, scans up to 5 of the
entity's PDFs through veraPDF, then composes an outreach draft (using
templates/outreach-email.md with the worst-failing PDF's stats filled in) and
emails it to you for review.

Note on today's batch: CivicPlus attrition was again very heavy — 15+ mid-size
IL/IA/MN city sites screened out as CivicPlus customers (phase-1 excluded)
before these 5 cleared the check. Batch skews to Granicus / ProudCity / custom
CMSs. The cities-east batch has not run yet today, so there are no same-day
duplicates to avoid; all 5 are new to contact-log.md.

1. City of Cloquet, MN
   Contact: Tim Peterson, City Administrator — tpeterson@cloquetmn.gov
   Source: https://www.cloquetmn.gov/departments/administration/contact-us-337
   Time zone: Central Time (MN), so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[tpeterson@cloquetmn.gov]'
   (Carlton County, NE Minnesota, ~12,500. Granicus GovAccess/OpenCities, no
   CivicPlus marker — uses a CivicPlus civicweb.net meeting-portal add-on only.
   No dedicated ADA coordinator published; City Administrator is best contact.
   Backup: City Clerk Kris St. Arnold kstarnold@cloquetmn.gov.)

2. City of Worthington, MN
   Contact: Cristina Adame, Community Relations & Communications — cadame@ci.worthington.mn.us
   Source: https://www.worthingtonmn.gov/Our-City/About-Worthington/Staff-Directory
   Time zone: Central Time (MN), so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[cadame@ci.worthington.mn.us]'
   (Nobles County, SW Minnesota, ~13,000. Granicus GovAccess/OpenCities, no
   CivicPlus marker. Communications staffer chosen as the on-topic
   digital-accessibility contact; backups: City Administrator Steve Robinson
   srobinson@ci.worthington.mn.us, City Clerk Mindy Eggers meggers@ci.worthington.mn.us.)

3. City of Effingham, IL
   Contact: Billie Bales, Communications Manager — BBales@EffinghamIL.com
   Source: https://www.effinghamil.com/people/
   Time zone: Central Time (IL), so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[BBales@EffinghamIL.com]'
   (Effingham County seat, ~12,300. ProudCity (WordPress-based), no CivicPlus
   marker. Full plaintext staff directory; strong backups: IT Josh Perkins
   JPerkins@EffinghamIL.com, City Administrator Steve Miller SMiller@EffinghamIL.com.)

4. City of Lincoln, IL
   Contact: Peggy Bateman, City Clerk — pbateman@lincolnil.gov
   Source: https://www.lincolnil.gov/contact
   Time zone: Central Time (IL), so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[pbateman@lincolnil.gov]'
   (Logan County seat, ~13,000. Custom/self-hosted CMS, no vendor attribution
   and no CivicPlus marker. No dedicated ADA coordinator, IT, or comms email
   published in plaintext; City Clerk is the best verifiable contact. Backups:
   role mailbox cityclerk@lincolnil.gov, Mayor Tracy Welch mayor@lincolnil.gov.)

5. City of Fairmont, MN
   Contact: (role-based) City government inbox — citygov@fairmont.org
   Source: https://fairmont.org/contact-us/
   Time zone: Central Time (MN), so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[citygov@fairmont.org]'
   (Martin County seat, southern Minnesota, ~10,000. AdMfg custom CMS, no
   CivicPlus marker. Only the general citygov@ inbox is published in plaintext —
   no individual staff emails. City Administrator is Jason Baker; if you'd
   rather reach him directly, obtain a published email by phone/contact form
   first, add it to contact-log.md, then re-run scan:by_email with that address.)

Best send days are Tuesday–Thursday. All five are Central Time year-round, so
schedule each outreach around 9:15 a.m. Mountain Time to land at ~10:15 a.m.
local. Every entity has been added to contact-log.md as a new prospect row
(Contact history left blank — not yet contacted).
