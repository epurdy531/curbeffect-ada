Subject: prospect brief (cities-west) for 2026-06-17
To: info@curbeffect.com

5 new ADA Title II city-government prospects today (west of the
Mississippi). For each one, run the scan command below: it seeds the
new entity into the outreach-db, scans up to 5 of the entity's PDFs
through veraPDF, then composes an outreach draft (using
templates/outreach-email.md with the worst-failing PDF's stats filled
in) and emails it to you for review.

1. City of Long Beach, CA
   Contact: Jennifer Kumiyama, Citywide Accessibility Coordinator (designated ADA Title II Coordinator) — ADA@LongBeach.gov
   Source: https://www.longbeach.gov/citymanager/ada/
   Time zone: Pacific, so send the eventual outreach around 11:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[ADA@LongBeach.gov]'

2. City of Vancouver, WA
   Contact: Jen Dugger Spalding, ADA Coordinator, City Manager's Office — adacoordinator@cityofvancouver.us
   Source: https://www.cityofvancouver.us/city-managers-office/disability-and-language-access/filing-an-americans-with-disabilities-act-ada-complaint-with-the-city-of-vancouver/
   Time zone: Pacific, so send the eventual outreach around 11:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[adacoordinator@cityofvancouver.us]'

3. City of Gresham, OR
   Contact: Rebecca Brooks, published ADA contact on City ADA page (individual title not stated alongside the email on that page) — Rebecca.Brooks@GreshamOregon.gov
   Source: https://www.greshamoregon.gov/government/city-codes-and-policies/americans-with-disabilities-act/
   Time zone: Pacific, so send the eventual outreach around 11:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[Rebecca.Brooks@GreshamOregon.gov]'

4. City of Bellingham, WA
   Contact: (role-based) ADA Coordinator, Public Works (no individual named on published Accessibility and Equal Opportunity page) — ada@cob.org
   Source: https://cob.org/about/access
   Time zone: Pacific, so send the eventual outreach around 11:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[ada@cob.org]'

5. City of Little Rock, AR
   Contact: Jon Honeywell, Title VI/ADA/504 Coordinator — email not publicly listed (phone 501-371-4475; published ADA Compliance page lists only phone and address)
   Source: https://www.littlerock.gov/city-administration/city-managers-office/divisions/intergovernmental-relations-office/ada-compliance/
   Time zone: Central, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[email not publicly listed]'
