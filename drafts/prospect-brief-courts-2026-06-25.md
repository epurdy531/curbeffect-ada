Subject: prospect brief (courts) for 2026-06-25
To: info@curbeffect.com

5 new ADA Title II county/district-court prospects today from IL / IA / MN.
For each one, run the scan command below: it seeds the new entity into the
outreach-db, scans up to 5 of the entity's PDFs through veraPDF, then composes
an outreach draft (using templates/outreach-email.md with the worst-failing
PDF's stats filled in) and emails it to you for review.

(Note: all 5 are Illinois Circuit Courts. Iowa District Court pages on
iowacourts.gov returned 403 and could not be fetched to confirm the CivicPlus
check, so they were skipped per the workflow; Minnesota district courts publish
phone-only ADA contacts with no plaintext email. The Illinois circuit courts
below each publish a Court Disability Coordinator email in plaintext, so each is
actionable with scan:by_email.)

1. 18th Judicial Circuit Court of DuPage County, IL
   Contact: (role-based) Court Disability Coordinator, Office of the Chief Judge — CDC@dupagecourts.gov
   Source: https://www.dupagecourts.gov/18th_judicial_circuit_court/services/disability_access.php
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[CDC@dupagecourts.gov]'

2. 12th Judicial Circuit Court of Will County, IL
   Contact: (role-based) Court Disability Coordinator — courtdc@willcountyillinois.com
   Source: https://www.willcountycourts.com/contact-us
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[courtdc@willcountyillinois.com]'

3. 16th Judicial Circuit Court of Kane County, IL
   Contact: Christy DeChristopher, Court Disability Coordinator — dechristopherchristy@16thcircuit.illinoiscourts.gov
   Source: https://www.illinois16thjudicialcircuit.org/Pages/Accessing-Court.aspx
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[dechristopherchristy@16thcircuit.illinoiscourts.gov]'

4. 22nd Judicial Circuit Court of McHenry County, IL
   Contact: (role-based) Court Disability Coordinator, county seat Woodstock — courtadmin@22ndcircuitil.gov
   Source: https://www.22ndcircuitil.gov/ada-access-to-the-court/
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[courtadmin@22ndcircuitil.gov]'

5. 23rd Judicial Circuit Court of DeKalb County, IL
   Contact: (role-based) Court Administrator / Court Disability Coordinator, county seat Sycamore — judicialadmin@dekalbcounty.org
   Source: https://dekalbcounty.org/departments/judiciary/ada/
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[judicialadmin@dekalbcounty.org]'

Best send days are Tuesday–Thursday.
