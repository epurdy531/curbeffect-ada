Subject: prospect brief (cities batch A) for 2026-06-23
To: info@curbeffect.com

5 new ADA Title II city-government prospects today from IL / IA / MN.
For each one, run the scan command below: it seeds the new entity into
the outreach-db, scans up to 5 of the entity's PDFs through veraPDF,
then composes an outreach draft (using templates/outreach-email.md with
the worst-failing PDF's stats filled in) and emails it to you for
review.

1. Village of Bolingbrook, IL
   Contact: Phillip Chau, Director of I.T. — pchau@bolingbrook.gov
   Source: https://www.bolingbrook.gov/village_directory
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time (Central)
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[pchau@bolingbrook.gov]'

2. City of Quincy, IL
   Contact: James Pioch, IT Director (role-based dept email) — ITDept@quincyil.gov
   Source: https://www.quincyil.gov/Government/Public-Information/Team-of-Directors
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time (Central)
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[ITDept@quincyil.gov]'

3. City of Des Moines, IA
   Contact: Alice Castle, ADA Coordinator — AACastle@dmgov.org
   Source: https://www.dsm.city/accessibility/
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time (Central)
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[AACastle@dmgov.org]'

4. City of Galesburg, IL
   Contact: (role-based) City Manager Eric Hanson / PIO Cathy St. George / IT Director Orlee Lucero — email not publicly listed (web-form links only)
   Source: https://www.ci.galesburg.il.us/ada_portal/ada_web_policy.php
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time (Central)
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[<obtain a published email first — see note below>]'

5. City of Aurora, IL
   Contact: (role-based) CIO Ram Tyagi / Communications Manager Jon Zaghloul — email not publicly listed (staff directory only)
   Source: https://www.aurora.il.us/Government-and-Engagement/Staff-Directory/Information-Technology/Information-Technology-Staff
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time (Central)
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[<obtain a published email first — see note below>]'

---

Notes for review:

- CivicPlus saturation. The bulk of mid-size IL/IA/MN city websites turned
  out to be CivicPlus customers (phase-1 excluded): Joliet, Elgin, Skokie,
  Decatur, Normal, Moline, Council Bluffs, Cedar Falls, Marion, Urbandale,
  Ankeny, Coralville, Wheaton, Pekin, Plymouth, Maple Grove, Burnsville,
  Woodbury, St. Cloud, Minnetonka, Blaine, Maplewood, Lakeville, Coon
  Rapids, Roseville, Northfield, Clinton, Waukegan, and more were all
  checked and skipped. The 5 above are confirmed NOT on CivicPlus.

- Two cities-west picks were already logged today. The cities-west brief
  ran earlier and added City of West Des Moines, IA and City of Shakopee,
  MN — the two clean MN/IA non-CivicPlus cities I'd found — so they were
  excluded here to avoid duplicates. That's why this batch skews IL.

- Entries 4 & 5 have no published email. Galesburg (Revize) and Aurora
  (Granicus/OpenCities) are both confirmed eligible, but neither publishes
  a plaintext contact email (Galesburg uses web-form links; Aurora's
  directory hides addresses, and the live site WAF-blocks automated reads).
  Before running scan:by_email for these two, grab a published email by
  calling or via the contact form — or scan their PDFs directly by URL/dir
  if you prefer. Galesburg phones: City Manager 309-345-3628, IT Director
  Orlee Lucero 309-345-3676. Aurora: route via the IT/Communications staff
  directory (CIO Ram Tyagi, Comms Mgr Jon Zaghloul).

- Contact overlap on Des Moines (entry 3). Alice Castle is the same person
  reached on 2026-06-11 about the Des Moines Public Library (whose log note
  says PDF/web procurement is handled at the city level). The City of Des
  Moines proper has never been prospected as its own entity, but confirm
  this isn't a duplicate touch before the composed outreach is sent.
