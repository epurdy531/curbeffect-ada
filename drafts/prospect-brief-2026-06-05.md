Subject: prospect brief for 2026-06-05
To: erica.mcdevitt@curbeffect.com

20 new ADA Title II prospects today (10 cities, 5 community colleges, 5 K–12 school districts). For each one, run the scan command below: it seeds the new entity into the outreach-db, scans up to 5 of the entity's PDFs through veraPDF, then composes an outreach draft (using templates/outreach-email.md with the worst-failing PDF's stats filled in) and emails it to you for review.

All 20 verified: not in contact-log.md previously, not in Colorado, not on CivicPlus, and (for higher ed) community colleges only.

## Cities (10)

1. City of Cincinnati, OH
   Contact: Tonia Smith, Chief Advocacy Officer for Aging & Accessibility / ADA Coordinator — tonia.smith@cincinnati-oh.gov
   Source: https://www.cincinnati-oh.gov/manager/aging-and-accessibility/ada/ada-coordinator/
   Time zone: Eastern Time, so send the eventual outreach around 8:15 a.m. Mountain Time to land at 10:15 a.m. their time. Best send days are Tuesday–Thursday.
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[tonia.smith@cincinnati-oh.gov]'

2. City of Detroit, MI
   Contact: Lesa Kent, Civil Rights Manager II / ADA Coordinator — Kentl@detroitmi.gov
   Source: https://detroitmi.gov/sites/detroitmi.localhost/files/2018-02/Designated%20ADA%20Coordinator_2.pdf
   Time zone: Eastern Time, so send the eventual outreach around 8:15 a.m. Mountain Time to land at 10:15 a.m. their time. Best send days are Tuesday–Thursday.
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[Kentl@detroitmi.gov]'

3. City of Boston, MA
   Contact: Kristen McCosh, Commissioner / ADA Title II Coordinator — disability@boston.gov
   Source: https://www.boston.gov/departments/disabilities-commission
   Time zone: Eastern Time, so send the eventual outreach around 8:15 a.m. Mountain Time to land at 10:15 a.m. their time. Best send days are Tuesday–Thursday.
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[disability@boston.gov]'

4. City of Madison, WI
   Contact: Rebecca Hoyt, Disability Rights and Services Specialist (ADA Coordinator) — RHoyt@cityofmadison.com
   Source: https://www.cityofmadison.com/civil-rights/programs/disability-rights-services-program/ada-enforcement
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time. Best send days are Tuesday–Thursday.
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[RHoyt@cityofmadison.com]'

5. City of Memphis, TN
   Contact: Dekeishia Tunstall, ADA Coordinator — Dekeishia.Tunstall@memphistn.gov
   Source: https://memphistn.gov/ada/
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time. Best send days are Tuesday–Thursday.
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[Dekeishia.Tunstall@memphistn.gov]'

6. City of Minneapolis, MN
   Contact: Guthrie Byard, Community Specialist for People with Disabilities / Title II Coordinator — Guthrie.Byard@minneapolismn.gov
   Source: https://www2.minneapolismn.gov/government/departments/ncr/accessible-spaces-services/
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time. Best send days are Tuesday–Thursday.
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[Guthrie.Byard@minneapolismn.gov]'

7. City of St. Louis, MO
   Contact: David J. Newburger, Commissioner on the Disabled and ADA Coordinator — newburgerd@stlouis-mo.gov
   Source: https://www.stlouis-mo.gov/government/departments/human-services/disabled-office/profiles/david-newburger.cfm
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time. Best send days are Tuesday–Thursday.
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[newburgerd@stlouis-mo.gov]'

8. City of Milwaukee, WI
   Contact: (role-based) ADA Coordinator, Department of Compliance and Engagement — adacoordinator@milwaukee.gov
   Source: https://city.milwaukee.gov/DCE/Accessibility/Policies
   Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time. Best send days are Tuesday–Thursday.
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[adacoordinator@milwaukee.gov]'

9. City of Sacramento, CA
   Contact: Jami Kinney, Citywide ADA Coordinator (HR / Labor Relations) — jkinney@cityofsacramento.org
   Source: https://www.cityofsacramento.gov/content/dam/portal/city-government/citywide-accessibility/Notice-of-Compliance-under-ADA-and-California-State-Law.pdf
   Time zone: Pacific Time, so send the eventual outreach around 11:15 a.m. Mountain Time to land at 10:15 a.m. their time. Best send days are Tuesday–Thursday.
   Scan + compose:
       cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[jkinney@cityofsacramento.org]'

10. City of Portland, OR
    Contact: Nickole Cheron, Citywide ADA Title II and Disability Equity Manager — Nickole.Cheron@portlandoregon.gov
    Source: https://www.portland.gov/officeofequity/disability/disability-division
    Time zone: Pacific Time, so send the eventual outreach around 11:15 a.m. Mountain Time to land at 10:15 a.m. their time. Best send days are Tuesday–Thursday.
    Scan + compose:
        cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[Nickole.Cheron@portlandoregon.gov]'

## Community Colleges (5)

11. Community College of Philadelphia, PA
    Contact: Leila E. Lawrence, Director of DEI / Title IX / Section 504/Title II and ADA Coordinator — ada@ccp.edu
    Source: https://www.myccp.online/college-policies/disability-and-pregnancy-accommodations-policy-employees-and-applicants
    Time zone: Eastern Time, so send the eventual outreach around 8:15 a.m. Mountain Time to land at 10:15 a.m. their time. Best send days are Tuesday–Thursday.
    Scan + compose:
        cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[ada@ccp.edu]'

12. Wake Technical Community College, NC
    Contact: Angelita M. Ragland, Director, DSS / ADA Compliance Officer (named on page; individual email Cloudflare-obfuscated, so role-based published email used) — accessibility@waketech.edu
    Source: https://www.waketech.edu/help-center/accessibility
    Time zone: Eastern Time, so send the eventual outreach around 8:15 a.m. Mountain Time to land at 10:15 a.m. their time. Best send days are Tuesday–Thursday.
    Scan + compose:
        cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[accessibility@waketech.edu]'

13. Tarrant County College District, TX
    Contact: Julie E. Grisham, Director of Digital Accessibility — accessibility@tccd.edu
    Source: https://www.tccd.edu/about/accessibility/
    Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time. Best send days are Tuesday–Thursday.
    Scan + compose:
        cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[accessibility@tccd.edu]'

14. Pierce College, WA
    Contact: Kelly Benson, 504/ADA Compliance Officer — KBenson@pierce.ctc.edu
    Source: https://www.pierce.ctc.edu/about/mission-vision/policy/accessibility/section-504-procedures.html
    Time zone: Pacific Time, so send the eventual outreach around 11:15 a.m. Mountain Time to land at 10:15 a.m. their time. Best send days are Tuesday–Thursday.
    Scan + compose:
        cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[KBenson@pierce.ctc.edu]'

15. Howard Community College, MD
    Contact: (role-based) Disability Support Services / 504-ADA Office — disabilitysupport@howardcc.edu
    Source: https://www.howardcc.edu/services--support/academic-support/disability-support-services/
    Time zone: Eastern Time, so send the eventual outreach around 8:15 a.m. Mountain Time to land at 10:15 a.m. their time. Best send days are Tuesday–Thursday.
    Scan + compose:
        cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[disabilitysupport@howardcc.edu]'

## K–12 School Districts (5)

16. Atlanta Public Schools, GA
    Contact: Deanna Rogers, Ed.D., District Section 504 Coordinator — dtrogers@atlanta.k12.ga.us
    Source: https://globaldatebooksonline.com/flipbooks/aps/files/basic-html/page25.html
    Time zone: Eastern Time, so send the eventual outreach around 8:15 a.m. Mountain Time to land at 10:15 a.m. their time. Best send days are Tuesday–Thursday.
    Scan + compose:
        cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[dtrogers@atlanta.k12.ga.us]'

17. Indianapolis Public Schools, IN
    Contact: Antoinette Austin, Social Services Coordinator / District Section 504 Coordinator — austinantoinette@myips.org
    Source: https://myips.org/section-504-resources/
    Time zone: Eastern Time, so send the eventual outreach around 8:15 a.m. Mountain Time to land at 10:15 a.m. their time. Best send days are Tuesday–Thursday.
    Scan + compose:
        cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[austinantoinette@myips.org]'

18. Newark Public Schools, NJ
    Contact: (role-based) 504/ADA Accommodation Office, Employee Services — ada_accommodations@nps.k12.nj.us
    Source: https://www.nps.k12.nj.us/departments/human-resources/employee-services/
    Time zone: Eastern Time, so send the eventual outreach around 8:15 a.m. Mountain Time to land at 10:15 a.m. their time. Best send days are Tuesday–Thursday.
    Scan + compose:
        cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[ada_accommodations@nps.k12.nj.us]'

19. Tulsa Public Schools, OK
    Contact: Tracy Storck, Director of Program Compliance / Section 504-ADA Coordinator — storctr@tulsaschools.org
    Source: https://www.tulsaschools.org/about/teams/exceptional-student-services
    Time zone: Central Time, so send the eventual outreach around 9:15 a.m. Mountain Time to land at 10:15 a.m. their time. Best send days are Tuesday–Thursday.
    Scan + compose:
        cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[storctr@tulsaschools.org]'

20. Charlotte-Mecklenburg Schools, NC
    Contact: Beth Hayes, CMS ADA Coordinator — beth.hayes@cms.k12.nc.us
    Source: https://www.cmsk12.org/families/handbooks-forms/parent-student-handbook/students-with-disabilities
    Time zone: Eastern Time, so send the eventual outreach around 8:15 a.m. Mountain Time to land at 10:15 a.m. their time. Best send days are Tuesday–Thursday.
    Scan + compose:
        cd outreach-db && bin/rails db:seed_from_log && bin/rails 'scan:by_email[beth.hayes@cms.k12.nc.us]'
