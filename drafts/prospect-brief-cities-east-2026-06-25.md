Subject: prospect brief (cities batch A) for 2026-06-25
To: info@curbeffect.com

5 new ADA Title II city-government prospects today from IL / IA / MN.
For each one, run the scan command below: it seeds the new entity into
the outreach-db, scans up to 5 of the entity's PDFs through veraPDF,
then composes an outreach draft (using templates/outreach-email.md with
the worst-failing PDF's stats filled in) and emails it to you for
review.

1. Village of Lansing, IL
   Contact: Maureen Grady-Perovich, Village Clerk (elected) — mgradyperovich@villageoflansing.org
   Source: https://www.villageoflansing.org/village_departments/clerks_office/index.php
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time (Central)
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[mgradyperovich@villageoflansing.org]'

2. City of Virginia, MN
   Contact: Britt See-Benes, City Administrator — britts@virginiamn.us
   Source: https://www.virginiamn.us/i_want_to/staff_directory.php
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time (Central)
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[britts@virginiamn.us]'

3. City of Spencer, IA
   Contact: Jessica J. Wright, Human Resources Director — jwright@spenceriowacity.com
   Source: https://spenceriowacity.com/how-do-i/contact/directory/
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time (Central)
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[jwright@spenceriowacity.com]'

4. Village of Morton Grove, IL
   Contact: Charles L. Meyer, Village Administrator (no named ADA Coordinator) — email not publicly listed (addresses obfuscated on-site)
   Source: https://www.mortongroveil.org/administration/
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time (Central)
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[<obtain a published email first — see note below>]'

5. City of McHenry, IL
   Contact: Ann Campanella, Director of Human Resources & Risk Management (no named ADA Coordinator; City Administrator Suzanne Ostrovsky) — email not publicly listed (contact-form system only)
   Source: https://cityofmchenry.org/your_government/departments/administration.php
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time (Central)
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[<obtain a published email first — see note below>]'

---

Notes for review:

- CivicPlus saturation (again). The overwhelming majority of mid-size
  IL/IA/MN city websites checked today were CivicPlus customers (phase-1
  excluded), including many of the candidate suburbs/cities scouted —
  Skokie, Palatine, Wheaton, Mount Prospect, Cedar Falls, Coralville,
  Eden Prairie, Maple Grove, Lakeville, St. Cloud, Council Bluffs,
  Marshalltown, Muscatine, Geneva, Lisle, and more. The 5 above are
  confirmed NOT on CivicPlus: Lansing, McHenry, and Virginia are on
  Revize; Morton Grove and Spencer are on WordPress.

- Three published-plaintext emails (entries 1–3). Lansing IL
  (mgradyperovich@villageoflansing.org), Virginia MN (britts@virginiamn.us),
  and Spencer IA (jwright@spenceriowacity.com) all publish the contact email
  in readable plaintext on the cited page — ready to scan as-is. Useful
  plaintext alternates if a different recipient is preferred: Virginia MN —
  HR & Safety Director Joy Ruedebusch (jruedebusch@virginiamn.us), City Clerk
  Pamela LaBine (plabine@virginiamn.us); Spencer IA — City Manager Kevin
  Robinson (krobinson@spenceriowacity.com).

- Entries 4 & 5 have no published email. Morton Grove (addresses obfuscated
  site-wide) and McHenry (department pages route through a contact-form
  system) are both confirmed eligible but publish no plaintext contact email.
  Before running scan:by_email for these, grab a published email by phone or
  contact form — or scan their PDFs directly by URL/dir if you prefer. Phones:
  Morton Grove 847-470-5220 (Village Administrator Charles Meyer; Village Hall
  847-965-4100); McHenry 815-363-2112 (HR Director Ann Campanella; City Hall
  815-363-2100). No address was guessed for either.

- Geographic check. All 5 are in scope: Lansing and Morton Grove are Cook
  County Chicago suburbs (not Chicago proper); McHenry is McHenry County
  (NW Chicago metro); Virginia, MN is on the Iron Range in St. Louis County
  (unrelated to Rochester); Spencer is the Clay County seat in NW Iowa.
  Morton Grove, IL is distinct from Village of Morton, IL (already in log).
