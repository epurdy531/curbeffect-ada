Subject: prospect brief (cities batch A) for 2026-07-06
To: info@curbeffect.com

5 new ADA Title II city-government prospects today from IL / IA / MN.
For each one, run the scan command below: it scans up to 5 of the
entity's PDFs through veraPDF, then composes an outreach draft (using
templates/outreach-email.md with the worst-failing PDF's stats filled
in) and emails it to you for review.

(Three of today's prospects publish no direct staff email, so their DB
row uses a stable placeholder address — the scan command below already
uses that placeholder, so it will resolve correctly.)

1. City of Galesburg, IL
   Contact: Orlee Lucero, Director of Information Technology — email not publicly listed
   Source: https://www.ci.galesburg.il.us/government/administration/staff_directory.php
   Time zone: Central, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       bin/rails 'scan:by_email[noemail-city-of-galesburg-il@placeholder.invalid]'

2. City of Altoona, IA
   Contact: Randy Pierce, City Administrator / City Clerk — email not publicly listed
   Source: https://www.altoona-iowa.com/departments/administration/clerk/contact_us.php
   Time zone: Central, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       bin/rails 'scan:by_email[noemail-city-of-altoona-ia@placeholder.invalid]'

3. Village of Gurnee, IL
   Contact: Austin Pollack, Assistant to the Village Administrator (designated ADA contact) — email not publicly listed
   Source: https://www.gurnee.il.us/connect/contact-us/staff-directory
   Time zone: Central, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       bin/rails 'scan:by_email[noemail-village-of-gurnee-il@placeholder.invalid]'

4. City of Marshall, MN
   Contact: Sharon Hanson, City Administrator — sharon.hanson@ci.marshall.mn.us
   Source: https://ci.marshall.mn.us/community_services/aquatic_center_project/contact_us.php
   Time zone: Central, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       bin/rails 'scan:by_email[sharon.hanson@ci.marshall.mn.us]'

5. City of Freeport, IL
   Contact: Bryan Bridge, Communications Director — pr@cityoffreeport.org
   Source: https://cityoffreeport.org/people2/bryan-bridge/
   Time zone: Central, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       bin/rails 'scan:by_email[pr@cityoffreeport.org]'
