Subject: prospect brief (cities-east) for 2026-06-18
To: info@curbeffect.com

5 new ADA Title II city-government prospects today (east of the
Mississippi). For each one, run the scan command below: it seeds the
new entity into the outreach-db, scans up to 5 of the entity's PDFs
through veraPDF, then composes an outreach draft (using
templates/outreach-email.md with the worst-failing PDF's stats filled
in) and emails it to you for review.

1. City of Grand Rapids, MI
   Contact: Patti Caudill, ADA Coordinator — pcaudill@grcity.us
   Source: https://www.grandrapidsmi.gov/departments/human-resources/file-a-title-ii-americans-with-disabilities-act-ada-complaint/
   Time zone: Eastern, so send the eventual outreach around 8:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[pcaudill@grcity.us]'

2. City of Cambridge, MA
   Contact: Rachel Tanenhaus, ADA Coordinator, Cambridge Commission for Persons with Disabilities (role-based commission email) — ccpd@cambridgema.gov
   Source: https://www.cambridgema.gov/Departments/commissionforpersonswithdisabilities
   Time zone: Eastern, so send the eventual outreach around 8:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[ccpd@cambridgema.gov]'

3. City of Chattanooga, TN
   Contact: Toni Morgan, ADA Compliance Officer, Office of the City Attorney — email not publicly listed (accessibility page lists only phone in plaintext)
   Source: https://chattanooga.gov/accessibility
   Time zone: Eastern, so send the eventual outreach around 8:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       (no plaintext email published — call 423-643-8240 to confirm the correct address before running scan:by_email)

4. City of Fort Wayne, IN
   Contact: Heather Van Wagner, Director of Risk Management / ADA Coordinator — Heather.VanWagner@cityoffortwayne.org
   Source: https://www.cityoffortwayne.in.gov/1078/ADA-Title-VI-Compliance (email appears as a plaintext hyperlink in the city's Department Head Chart PDF at https://www.cityoffortwayne.in.gov/DocumentCenter/View/4230/City-of-Fort-Wayne-Department-Head-Chart-PDF)
   Time zone: Eastern, so send the eventual outreach around 8:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[Heather.VanWagner@cityoffortwayne.org]'

5. City of Lancaster, PA
   Contact: Malinda Rodriguez-Fryberger, ADA Coordinator — email not publicly listed (ADA notice page lists only phone in plaintext)
   Source: https://www.cityoflancasterpa.gov/notice-under-the-americans-with-disabilities-act/
   Time zone: Eastern, so send the eventual outreach around 8:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       (no plaintext email published — call 717-847-0713 to confirm the correct address before running scan:by_email)
