Subject: prospect brief (cities batch B) for 2026-06-25
To: info@curbeffect.com

5 more new ADA Title II city-government prospects today from IL / IA /
MN (in addition to the earlier cities-east batch). For each one, run
the scan command below: it seeds the new entity into the outreach-db,
scans up to 5 of the entity's PDFs through veraPDF, then composes an
outreach draft (using templates/outreach-email.md with the worst-
failing PDF's stats filled in) and emails it to you for review.

1. Village of Bridgeview, IL
   Contact: Ken J. Pannaralla, Jr., Director of Human Resources — kpannarallajr@villageofbridgeview.com
   Source: https://bridgeview-il.gov/administrative-officials/
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time (Central)
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[kpannarallajr@villageofbridgeview.com]'

2. City of Crystal, MN
   Contact: Michael Peterson, Communications Manager — email not publicly listed (Cloudflare-obfuscated on site)
   Source: https://www.crystalmn.gov/resident/communications
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time (Central)
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[<obtain a published email first — see note below>]'

3. City of Marshall, MN
   Contact: Sharon Hanson, City Administrator — email not publicly listed (directory-link only)
   Source: https://ci.marshall.mn.us/administration/index.php
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time (Central)
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[<obtain a published email first — see note below>]'

4. City of Willmar, MN
   Contact: Leslie Valiant, City Administrator — lvaliant@willmarmn.gov
   Source: https://www.willmarmn.gov/departments/administration/index.php
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time (Central)
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[lvaliant@willmarmn.gov]'

5. City of Freeport, IL
   Contact: Gertrude Heimerdinger, Director of Community & Economic Development — email not publicly listed (name + phone only on directory)
   Source: https://cityoffreeport.org/directory2/community-economic-development-department-3/
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time (Central)
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[<obtain a published email first — see note below>]'

---

Notes for review:

- All 5 confirmed NOT on CivicPlus (phase-1 excluded). Platforms detected:
  Bridgeview and Freeport are WordPress; Marshall and Willmar are Revize
  ("Powered by Revize" / "Website By Revize"); Crystal is CivicLive
  ("Powered by CivicLive") — note CivicLive is a separate Intrado/West
  product, NOT CivicPlus/CivicEngage, so it is in scope.

- Two published-plaintext emails (entries 1 & 4). Bridgeview IL
  (kpannarallajr@villageofbridgeview.com — note the contact-email domain is
  villageofbridgeview.com even though the site is bridgeview-il.gov) and
  Willmar MN (lvaliant@willmarmn.gov) both publish the email in readable
  plaintext on the cited page — ready to scan as-is. Useful plaintext
  alternates for Willmar: City Operations Director Kyle Box
  (kbox@willmarmn.gov), Community Growth Director Pablo Obregon
  (pobregon@willmarmn.gov). Bridgeview also publishes a general inbox
  (info@villageofbridgeview.com).

- Entries 2, 3 & 5 have no published email. Crystal MN (Cloudflare email
  obfuscation site-wide), Marshall MN (administration page links to a
  directory but renders no plaintext address), and Freeport IL (department
  directory shows name + phone only) are all confirmed eligible but publish
  no plaintext contact email. Before running scan:by_email for these, grab a
  published email by phone or contact form — or scan their PDFs directly by
  URL/dir if you prefer. Named contacts/alternates: Crystal — Communications
  Manager Michael Peterson, alternate City Clerk Chrissy Serres; Marshall —
  City Administrator Sharon Hanson, alternate City Clerk Steven Anderson;
  Freeport — Dir. of Community & Economic Development Gertrude Heimerdinger
  (general directory https://cityoffreeport.org/contact/). No address was
  guessed for any of these.

- Geographic check. All 5 are in scope (IL/MN only): Bridgeview is a Cook
  County Chicago suburb (not Chicago proper); Crystal is a Hennepin County
  Minneapolis suburb (not Rochester, MN); Marshall is the Lyon County seat
  in SW Minnesota; Willmar is the Kandiyohi County seat in central MN;
  Freeport is the Stephenson County seat in NW Illinois (not Chicago metro).

- Distinct from existing log rows: City of Marshall, MN is not the same as
  City of Marion, IA (already in log); Village of Bridgeview, IL is distinct
  from City of Bridgeport, CT (already in log).
