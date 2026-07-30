Subject: prospect brief (cities-west) for 2026-06-11
To: info@curbeffect.com

5 new ADA Title II city-government prospects today (west of the
Mississippi). For each one, run the scan command below: it seeds the
new entity into the outreach-db, scans up to 5 of the entity's PDFs
through veraPDF, then composes an outreach draft (using
templates/outreach-email.md with the worst-failing PDF's stats filled
in) and emails it to you for review.

1. City of San Diego, CA
   Contact: Thyme Curtis, Program Manager & Citywide Accessibility Coordinator, Office of ADA Compliance and Accessibility — adacompliance@sandiego.gov
   Source: https://www.sandiego.gov/adacompliance/about
   Time zone: Pacific Time, so send the eventual outreach around 11:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[adacompliance@sandiego.gov]'

2. Municipality of Anchorage, AK
   Contact: Paul Deery, Municipal ADA Coordinator, Department of Employee Relations — ADA@Anchorageak.gov
   Source: https://www.muni.org/departments/employee_relations/pages/disabilityresources.aspx
   Time zone: Alaska Daylight Time (AKDT, UTC-8 in June, two hours behind Mountain), so send the eventual outreach around 12:15 p.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[ADA@Anchorageak.gov]'

3. City and County of Honolulu, HI
   Contact: Denise Tsukayama, Equal Opportunity Administrator / ADA Coordinator, Department of Human Resources — dhreoo@honolulu.gov
   Source: https://www.honolulu.gov/dhr/contact-eoo/
   Time zone: Hawaii Standard Time (HST, UTC-10, no DST observed; four hours behind Mountain in June), so send the eventual outreach around 2:15 p.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[dhreoo@honolulu.gov]'

4. City of Boise, ID
   Contact: Heather Zeitlin, Community Accessibility Program Manager (ADA & Section 504 contact), Community Engagement Department — hzeitlin@cityofboise.org
   Source: https://www.cityofboise.org/departments/community-engagement/ada-and-section-504/
   Time zone: Mountain Time (Boise is in the Mountain Time portion of Idaho), so send the eventual outreach around 10:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[hzeitlin@cityofboise.org]'

5. City of Las Vegas, NV
   Contact: Tammy Counts, Accessibility & ADA/504 Coordinator, Human Resources Department — TCounts@lasvegasnevada.gov
   Source: https://www.lasvegasnevada.gov/Government/Departments/Human-Resources/Accessibility
   Time zone: Pacific Time, so send the eventual outreach around 11:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[TCounts@lasvegasnevada.gov]'
