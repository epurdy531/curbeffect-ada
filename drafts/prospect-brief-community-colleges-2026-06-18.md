Subject: prospect brief (community colleges) for 2026-06-18
To: info@curbeffect.com

5 new ADA Title II community-college prospects today. For each one, run
the scan command below: it seeds the new entity into the outreach-db,
scans up to 5 of the entity's PDFs through veraPDF, then composes an
outreach draft (using templates/outreach-email.md with the worst-
failing PDF's stats filled in) and emails it to you for review.

1. Moraine Valley Community College, IL
   Contact: Nathan Payovich, Director, Center for Disability Services — disability.services@morainevalley.edu (role-based; individual email not in plaintext)
   Source: https://www.morainevalley.edu/student-success/disability-services/
   Time zone: Central, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[disability.services@morainevalley.edu]'

2. College of Lake County, IL
   Contact: Kristin Jones, Title IX & Compliance Coordinator / ADA Coordinator — kjones24@clcillinois.edu
   Source: https://www.clcillinois.edu/aboutclc/diversity-at-clc/access-and-disability-resources/standards-and-practices
   Time zone: Central, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[kjones24@clcillinois.edu]'

3. Hawkeye Community College, IA
   Contact: Susan Hauber, Executive Director of Human Resource Services / Equity Coordinator — susan.hauber@hawkeyecollege.edu
   Source: https://www.hawkeyecollege.edu/about/equal-opportunity
   Time zone: Central, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[susan.hauber@hawkeyecollege.edu]'

4. Iowa Western Community College, IA
   Contact: Reanna Heim, Dean of Student Life / Title IX, ADA/504, and Equal Opportunity Coordinator for Students — rheim@iwcc.edu
   Source: https://www.iwcc.edu/about/continuous/annual/
   Time zone: Central, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[rheim@iwcc.edu]'

5. Saint Paul College, MN
   Contact: One Yang, Accessibility Specialist, Access & Disability Resources — one.yang@saintpaul.edu (no named ADA Title II Coordinator published in plaintext)
   Source: https://www.saintpaul.edu/student-services/access-disability-resources/
   Time zone: Central, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[one.yang@saintpaul.edu]'
