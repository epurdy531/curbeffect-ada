Subject: prospect brief (community colleges) for 2026-06-24
To: info@curbeffect.com

5 new ADA Title II community-college prospects today from IL / IA / MN.
For each one, run the scan command below: it seeds the new entity into
the outreach-db, scans up to 5 of the entity's PDFs through veraPDF,
then composes an outreach draft (using templates/outreach-email.md with
the worst-failing PDF's stats filled in) and emails it to you for
review.

1. Prairie State College, IL
   Contact: Shelley Tekeste, Access and Disability Services Coordinator — disabilityservices@prairiestate.edu (role-based office email, published in plaintext)
   Source: https://prairiestate.edu/student-resources/access-disabilities.aspx
   Time zone: Central Time (Chicago Heights, IL — Cook County Chicago suburb, eligible; not Chicago proper), so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[disabilityservices@prairiestate.edu]'

2. Parkland College, IL
   Contact: Michael Trame, VP for Student Services / designated Section 504 & ADA Compliance Officer — mtrame@parkland.edu
   Source: https://www.parkland.edu/Main/About-Parkland/Administration/Directory
   Time zone: Central Time (Champaign, IL), so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[mtrame@parkland.edu]'

3. Iowa Central Community College, IA
   Contact: Emily Lane, ARC Coordinator – Accommodations (Academic Resource Center) — lane_e@iowacentral.edu
   Source: https://www.iowacentral.edu/ARC/the_law.asp
   Time zone: Central Time (Fort Dodge, IA), so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[lane_e@iowacentral.edu]'

4. Ridgewater College, MN
   Contact: Jay Morrison, Accessibility & Disability Services Coordinator (Willmar campus) — jay.morrison@ridgewater.edu
   Source: https://ridgewater.edu/student-services-activities/academic-support-tutoring-disability/disability-services/
   Time zone: Central Time (Willmar & Hutchinson, MN), so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[jay.morrison@ridgewater.edu]'

5. Illinois Central College, IL
   Contact: Pachaunce Allen-Walker, Title IX / Civil Rights Equity / ADA Coordinator — Title9@icc.edu (role-based office email, published in plaintext)
   Source: https://icc.edu/civil-rights/
   Time zone: Central Time (East Peoria, IL), so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[Title9@icc.edu]'

---
Notes:
- All five are public 2-year community colleges (eligible higher-ed type), in IL/IA/MN, none on CivicPlus, none previously in contact-log.md. Best send days are Tuesday–Thursday.
- Illinois Central College: use the role-based Title9@icc.edu (the coordinator's individual address is Cloudflare-obfuscated on-site). A DOJ ADA settlement involving ICC surfaced in search — verify, but it could be a strong outreach hook.
- Lead with continued litigation risk, not the deadline (DOJ Title II web deadline now April 2027 for 50k+ entities / April 2028 for smaller; the extension moves the deadline, not the liability).
