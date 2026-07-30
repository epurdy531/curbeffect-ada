Subject: prospect brief (cities batch A) for 2026-06-29
To: info@curbeffect.com

5 new ADA Title II city-government prospects today from IL / IA / MN.
For each one, run the scan command below: it seeds the new entity into
the outreach-db, scans up to 5 of the entity's PDFs through veraPDF,
then composes an outreach draft (using templates/outreach-email.md with
the worst-failing PDF's stats filled in) and emails it to you for
review.

1. City of Minnetonka, MN
   Contact: Mike Kuno, ADA Coordinator for public facilities — mkuno@minnetonkamn.gov
   Source: https://www.minnetonkamn.gov/our-city/about-minnetonka/diversity-equity-and-inclusion/ada
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[mkuno@minnetonkamn.gov]'

2. City of Decorah, IA
   Contact: Chopper Albert, Information Technology Director — chopper@decorah.iowa.gov
   Source: https://www.decorahia.org/staff/chopper-albert
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[chopper@decorah.iowa.gov]'

3. City of Clear Lake, IA
   Contact: Steven T. Diers, City Administrator — sdiers@cityofclearlake.org
   Source: https://www.cityofclearlake.com/pview.aspx?id=2084&catid=0
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[sdiers@cityofclearlake.org]'

4. City of Alexandria, MN
   Contact: Martin Schultz, City Administrator — mschultz@alexandriamn.city
   Source: https://alexandriamn.city/city-staff-contacts/
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[mschultz@alexandriamn.city]'

5. City of Hutchinson, MN
   Contact: Matt Jaunich, City Administrator — mjaunich@hutchinsonmn.gov
   Source: https://www.mcleodcountymn.gov/departments/administration/county_directory/hutchinson.php
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[mjaunich@hutchinsonmn.gov]'

Best send days are Tuesday–Thursday.
