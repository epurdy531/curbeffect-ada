Subject: prospect brief (cities-west) for 2026-06-19
To: info@curbeffect.com

5 new ADA Title II city-government prospects today (west of the
Mississippi). For each one, run the scan command below: it seeds the
new entity into the outreach-db, scans up to 5 of the entity's PDFs
through veraPDF, then composes an outreach draft (using
templates/outreach-email.md with the worst-failing PDF's stats filled
in) and emails it to you for review.

1. City of Austin, TX
   Contact: Megan Dere, ADA Administrator (City of Austin Title II ADA Coordinator) — ada@austintexas.gov
   Source: https://www.austintexas.gov/page/americans-disabilities-act-ada
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[ada@austintexas.gov]'

2. City of Houston, TX
   Contact: Shalyn Musgrove, ADA Coordinator (Mayor's Office for People with Disabilities) — adacoordinator@houstontx.gov
   Source: https://www.houstontx.gov/adainfo/
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[adacoordinator@houstontx.gov]'

3. City of El Paso, TX
   Contact: Maricruz Chavez, ADA (Accessibility) Coordinator, Office of Title VI & ADA — ChavezMX1@elpasotexas.gov
   Source: https://www.elpasotexas.gov/ada/ (email is Cloudflare-obfuscated on the public page; decoded plaintext value)
   Time zone: Mountain Time (El Paso is one of the two TX counties on MT; observes DST — currently MDT), so send the eventual outreach around 10:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[ChavezMX1@elpasotexas.gov]'

4. City of Baton Rouge, LA
   Contact: Micheline D. Millender, ADA Coordinator / Recorder, Human Resources Employee Relations Division (City-Parish ADA Task Force grievance contact) — mmillender@brgov.com
   Source: https://www.brla.gov/761/Requests-Complaints-Grievance-Procedures
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[mmillender@brgov.com]'

5. City of Columbia, MO
   Contact: (role-based) ADA Coordinator, Law Department — email not publicly listed (City Counselor Nancy Thompson heads the Law Department, whose role includes ADA Coordinator; no plaintext ADA email is published)
   Source: https://www.como.gov/contacts/ada-coordinator/
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time
   Scan + compose:
       (no published email — Law Department phone 573-874-7223; reach out via city contact form at https://www.como.gov/contacts/ada-coordinator/ before scanning)
