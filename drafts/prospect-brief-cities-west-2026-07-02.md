Subject: prospect brief (cities batch B) for 2026-07-02
To: info@curbeffect.com

5 more new ADA Title II city-government prospects today from IL / IA / MN (in
addition to the earlier cities-east batch). For each one, run the scan command
below: it seeds the new entity into the outreach-db, scans up to 5 of the
entity's PDFs through veraPDF, then composes an outreach draft (using
templates/outreach-email.md with the worst-failing PDF's stats filled in) and
emails it to you for review.

Note on today's batch: CivicPlus attrition was unusually heavy — the great
majority of mid-size IL/IA/MN city sites screened out as CivicPlus customers
(phase-1 excluded). The 5 below all cleared the CivicPlus check and are not
duplicates of the cities-east cities added earlier today (Kankakee, Zion,
Carroll, Norwalk, Bemidji).

1. City of Alton, IL
   Contact: Jarvis Swope, Director of Information Technology — jswope@cityofaltonil.gov
   Source: https://cityofaltonil.gov/information-technology/
   Time zone: Central Time (IL), so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[jswope@cityofaltonil.gov]'
   (Madison County, ~25,700. WordPress, no CivicPlus marker. Formal ADA
   Coordinator Andi Campbell has no plaintext email; IT Director is the
   verifiable digital-accessibility contact.)

2. City of Granite City, IL
   Contact: Brian Daniels, IT Department — bdaniels@granitecity.illinois.gov
   Source: https://www.granitecity.illinois.gov/government/directory.php
   Time zone: Central Time (IL), so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[bdaniels@granitecity.illinois.gov]'
   (Madison County, ~27,500. Revize, no CivicPlus marker. No dedicated ADA
   coordinator published; backup contacts: City Clerk Jenna DeYong
   jdeyong@granitecity.illinois.gov, Mayor's Office mayor@granitecity.illinois.gov.)

3. City of Perry, IA
   Contact: Sven Peterson, City Administrator — sven.peterson@perryia.org
   Source: https://perrybrownfields.com/contact (official City of Perry Brownfields Program page — email in published plaintext)
   Time zone: Central Time (IA), so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[sven.peterson@perryia.org]'
   (Dallas County / Des Moines metro, ~7,800. Weebly, no CivicPlus marker.
   Main-site emails are CDN-obfuscated; the Brownfields page publishes this
   one in plaintext.)

4. City of Waverly, IA
   Contact: (role-based) City Administrator's Office — email not publicly listed
   Source: https://www.waverlyia.com/contact-us.aspx (200 1st St NE; phone 319-352-9211)
   Time zone: Central Time (IA), so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       (No published plaintext email — scan:by_email cannot run until a contact
       email is obtained. Get one by phone/contact form first, add it to
       contact-log.md, then run:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[<email>]')
   (Bremer County seat, ~10,400. Spinutech CMS, no CivicPlus marker. Staff
   emails not published in plaintext.)

5. City of Columbia Heights, MN
   Contact: Jesse Hauf, Information Technology Director — jhauf@columbiaheightsmn.gov
   Source: https://columbiaheightsmn.gov/contact_city_staff.php
   Time zone: Central Time (MN), so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[jhauf@columbiaheightsmn.gov]'
   (Anoka County, first-ring Minneapolis suburb, ~21,000 — not Rochester.
   Revize, no CivicPlus marker. No dedicated ADA coordinator published;
   backup contacts: Comms & Engagement Coordinator Will Rottler
   wrottler@columbiaheightsmn.gov, City Manager Aaron Chirpich
   achirpich@columbiaheightsmn.gov.)

Best send days are Tuesday–Thursday. All five are Central Time year-round, so
schedule each outreach around 9:15 a.m. Mountain Time to land at ~10:15 a.m.
local. Every entity has been added to contact-log.md as a new prospect row
(Contact history left blank — not yet contacted).
