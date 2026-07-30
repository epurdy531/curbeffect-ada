Subject: prospect brief (courts) for 2026-07-07
To: info@curbeffect.com

5 new ADA Title II county/district-court prospects today from IL / IA / MN.
For each one, run the scan command below: it scans up to 5 of the entity's
PDFs through veraPDF, then composes an outreach draft (using
templates/outreach-email.md with the worst-failing PDF's stats filled in)
and emails it to you for review.

Note: 3 of the 5 have a verified, published contact email (scan:by_email is
ready to run). The other 2 have no email publicly listed — grab a contact
email from the contact page first, then run the scan.

1. 17th Judicial Circuit Court of Winnebago County, IL
   Contact: Thomas Jakeway, Trial Court Administrator — email not publicly listed
     (ADA/disability contact: Michael Smith, Deputy Court Administrator;
      site emails are JavaScript-hidden)
   Source: https://illinois17th.com/about/staff-directory
   Time zone: Central Time (IL), so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       No published email yet — get a contact email from the page above, then run:
       bin/rails 'scan:by_email[<contact email>]'

2. Iowa District Court for Polk County, IA
   Contact: Clerk of District Court (role-based) — countyclerk.polk@iowacourts.gov
   Source: https://www.polkia.org/Clerk_of_Court.html
   Time zone: Central Time (IA), so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       bin/rails 'scan:by_email[countyclerk.polk@iowacourts.gov]'

3. Ramsey County District Court, MN
   Contact: Heather Kendall, District Administrator (Second Judicial District) — Heather.Kendall@courts.state.mn.us
   Source: https://cfb.mn.gov/reports-and-data/officials-financial-disclosure/agency/80403001
   Time zone: Central Time (MN), so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       bin/rails 'scan:by_email[Heather.Kendall@courts.state.mn.us]'

4. Iowa District Court for Linn County, IA
   Contact: Clerk of District Court (role-based) — email not publicly listed
   Source: https://www.linncountyiowa.gov/1123/Clerk-of-Court (phone 319-398-3411)
   Time zone: Central Time (IA), so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       No published email yet — get a contact email from the page above, then run:
       bin/rails 'scan:by_email[<contact email>]'

5. Washington County District Court, MN
   Contact: Sarah Lindahl-Pfieffer, District Administrator (Tenth Judicial District, role-based) — sarah.lindahl-pfieffer@courts.state.mn.us
   Source: https://cfb.mn.gov/reports-and-data/officials-financial-disclosure/agency/80403009
   Time zone: Central Time (MN), so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       bin/rails 'scan:by_email[sarah.lindahl-pfieffer@courts.state.mn.us]'

---
Best send days are Tuesday–Thursday. All five recipients are in Central Time.
Every entity is a state/local trial-level court (Clerk of the Circuit/District
Court or the district's Court Administrator) and is subject to ADA Title II.
None is a CivicPlus customer on its own court homepage, none is a
university/4-year college, and none was already in the outreach database.
