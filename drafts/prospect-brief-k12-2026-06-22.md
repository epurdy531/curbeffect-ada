Subject: prospect brief (k-12) for 2026-06-22
To: info@curbeffect.com

5 new ADA Title II K–12 school-district prospects today from IL / IA /
MN. For each one, run the scan command below: it seeds the new entity
into the outreach-db, scans up to 5 of the entity's PDFs through
veraPDF, then composes an outreach draft (using templates/outreach-
email.md with the worst-failing PDF's stats filled in) and emails it
to you for review.

1. Elgin Area School District U-46, IL
   Contact: Trisha Olson, Chief Legal Officer / designated Section 504 Coordinator — trishaolson@u-46.org
   Source: https://www.u-46.org/our-district/departments/legal
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[trishaolson@u-46.org]'

2. Waterloo Community School District, IA
   Contact: Sam Kreassig, Director of Human Resources (designated nondiscrimination / Section 504 compliance contact) — kreassigs@waterlooschools.org
   Source: https://www.waterlooschools.org/unsubscribe-page/nondiscrimination-policy
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[kreassigs@waterlooschools.org]'

3. Anoka-Hennepin School District (ISD 11), MN
   Contact: (role-based) District accessibility contact — info@ahschools.us
   Source: https://www.ahschools.us/accessibility
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[info@ahschools.us]'

4. Rochester Public Schools (ISD 535), MN
   Contact: Tina Moga, HR Specialist (published responsibilities include ADA) — krmoga@rochesterschools.org
   Source: https://www.rochesterschools.org/page/human-resources
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[krmoga@rochesterschools.org]'

5. Osseo Area Schools (ISD 279), MN
   Contact: Rachel Koehler, ADA Coordinator (Risk Management / Health & Safety) — KoehlerR@district279.org
   Source: https://www.osseoschools.org/departments/health-safety
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[KoehlerR@district279.org]'

Best send days are Tuesday–Thursday.
