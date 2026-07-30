Subject: prospect brief (cities batch A) for 2026-06-24
To: info@curbeffect.com

5 new ADA Title II city-government prospects today from IL / IA / MN.
For each one, run the scan command below: it seeds the new entity into
the outreach-db, scans up to 5 of the entity's PDFs through veraPDF,
then composes an outreach draft (using templates/outreach-email.md with
the worst-failing PDF's stats filled in) and emails it to you for
review.

1. Village of Hoffman Estates, IL
   Contact: Dr. Monica Saavedra, Psy.D., Director of Health and Human Services / ADA Coordinator — monica.saavedra@hoffmanestates.org
   Source: https://www.hoffmanestates.org/community/accessibility.php
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time (Central)
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[monica.saavedra@hoffmanestates.org]'

2. City of Charleston, IL
   Contact: (role-based) HR Director — HRdirector@co.coles.il.us (city directory uses the shared Coles County @co.coles.il.us domain; no dedicated ADA Coordinator named)
   Source: https://www.charlestonillinois.org/how_do_i/contact_us/city_directory.php
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time (Central)
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[HRdirector@co.coles.il.us]'

3. City of Macomb, IL
   Contact: Melissa Worley, Finance and Human Resources Director (no named ADA Coordinator) — email not publicly listed (CleanTalk-encoded on-site)
   Source: https://www.cityofmacomb.com/finance-and-human-resources/
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time (Central)
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[<obtain a published email first — see note below>]'

4. City of Altoona, IA
   Contact: (role-based) Human Resources Office (no named ADA Coordinator; City Administrator/Clerk Randy Pierce as proxy) — email not publicly listed (Report-a-Concern form only)
   Source: https://www.altoona-iowa.com/departments/administration/human_resources/index.php
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time (Central)
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[<obtain a published email first — see note below>]'

5. City of Jacksonville, IL
   Contact: Cheryl Cooper, Director of Human Resources (no named ADA Coordinator) — email not publicly listed (contact page lists phone only)
   Source: https://www.jacksonvilleil.gov/how_do_i/contact_us.php
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time (Central)
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[<obtain a published email first — see note below>]'

---

Notes for review:

- CivicPlus saturation (again). The overwhelming majority of mid-size
  IL/IA/MN city websites checked today were CivicPlus customers (phase-1
  excluded). Confirmed-and-skipped this run: Decatur, Normal, Elgin,
  Joliet (incl. their CivicEngage variants), Waukegan, Rock Island,
  Lombard, Buffalo Grove, Pekin, Carbondale, Geneva, Danville, Ottawa,
  Pella, Storm Lake (IL/IA) and Burnsville, Apple Valley, Blaine,
  Cottage Grove, Roseville, Richfield, Golden Valley, New Brighton,
  Maplewood, Maple Grove, Waukee, Newton, Indianola, Owatonna, Faribault,
  Council Bluffs, Cedar Falls, Coralville, Urbandale, Ankeny, Johnston,
  Muscatine, Burlington, St. Cloud, Woodbury (MN/IA), and more. CivicEngage
  catch: Apple Valley and Blaine present clean-looking new .gov homepages
  but are still CivicPlus/CivicEngage (the /####/Page-Name numeric URL
  pattern + "Government Websites by CivicPlus®" footer give them away) —
  excluded. The 5 above are confirmed NOT on CivicPlus (Revize x4; Macomb
  is WordPress/Electric Oak).

- Dedup vs. today's cities batch B. Cities batch B (cities-west slug) ran
  before this brief and had already grabbed the two cleanest non-CivicPlus
  picks I found — City of Ottumwa, IA and City of Moorhead, MN — plus
  Des Plaines IL, Orland Park IL, and Edina MN. All were excluded here to
  avoid duplicates, which is why this batch is all IL/IA (no MN city
  survived that wasn't either CivicPlus or already taken).

- Entries 3, 4 & 5 have no published email. Macomb (CleanTalk-encoded),
  Altoona (Report-a-Concern form), and Jacksonville (phone-only contact
  page) are all confirmed eligible but publish no plaintext contact email.
  Before running scan:by_email for these, grab a published email by phone
  or contact form — or scan their PDFs directly by URL/dir if you prefer.
  Phones: Macomb (309) 833-2575 (HR/Finance Dir. Melissa Worley); Altoona
  (515) 967-5136 (HR ext. 239); Jacksonville 217-479-3507 (HR Dir. Cheryl
  Cooper). A search snippet surfaced ccooper@jacksonvilleil.gov for
  Jacksonville, but it is not published in plaintext on-site — verify
  before using.

- Charleston email caveat (entry 2). The City of Charleston's directory
  publishes role-based emails on the shared Coles County domain
  (@co.coles.il.us): HRdirector@, citymanager@, cityclerk@, cityhall@.
  These appear in plaintext on the city directory page, but the unusual
  county-shared domain is worth a quick confirm before the composed
  outreach is sent.
