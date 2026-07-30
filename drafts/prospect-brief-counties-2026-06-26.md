Subject: prospect brief (counties) for 2026-06-26
To: info@curbeffect.com

5 new ADA Title II county-government prospects today from IL / IA / MN.
For each one, run the scan command below: it seeds the new entity into
the outreach-db, scans up to 5 of the entity's PDFs through veraPDF,
then composes an outreach draft (using templates/outreach-email.md with
the worst-failing PDF's stats filled in) and emails it to you for review.

1. Winnebago County, IL
   Contact: (role-based) County Board Office / Administration, Rockford — boardoffice@admin.wincoil.gov
   Source: https://wincoil.gov/directory
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[boardoffice@admin.wincoil.gov]'

2. Carver County, MN
   Contact: David Hemze, County Administrator — dhemze@carvercountymn.gov
   Source: https://www.carvercountymn.gov/departments/county-administration
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[dhemze@carvercountymn.gov]'

3. Sangamon County, IL
   Contact: (role-based) Human Resources / ADA contact, Springfield — charlies@sangamonil.gov
   Source: https://sangamonil.gov/departments/d-l/human-resources/ada-information
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[charlies@sangamonil.gov]'

4. Ramsey County, MN
   Contact: (role-based) County Manager's Office, St. Paul — email not publicly listed (named contact: County Manager Ling Becker; ADA requests routed via 651-266-8500, "say ADA")
   Source: https://www.ramseycountymn.gov/your-government/open-government/digital-accessibility
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose: no plaintext email is published — obtain one (call/contact form) first, then run:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[<obtained email>]'

5. Johnson County, IA
   Contact: Erin Shane, Board Office Executive Director / County ADA Coordinator, Iowa City — email not publicly listed (all county emails Cloudflare-obfuscated; Board Office 319-356-6000)
   Source: https://johnsoncountyiowa.gov/ada-resources
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose: no plaintext email is published — obtain one (call/contact form) first, then run:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[<obtained email>]'

Best send days are Tuesday–Thursday.
