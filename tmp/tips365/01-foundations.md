### The core Title II web rule in one sentence

The 2024 ADA Title II rule requires state and local governments to make their web content and mobile apps conform to WCAG 2.1 Level AA. That single standard now governs your public-facing pages, PDFs and other documents, embedded media, and native mobile apps - not just your homepage. Treat WCAG 2.1 AA as the concrete, testable target for every remediation decision: when a stakeholder asks "is this accessible enough?", the answer is measured against those success criteria. Bookmark the WCAG 2.1 AA quick-reference and use it as your acceptance checklist so "accessible" stops being a vague goal and becomes a defined bar you can verify against.

*Reference: ADA Title II (2024 rule); WCAG 2.1 AA*

### Deadlines move the timeline, not the liability

The rule staggers compliance by population: roughly April 2026 for the largest entities and April 2027/2028 for smaller ones and special districts. It is tempting to file remediation under "later," but those dates only set when non-conformance becomes a clear rule violation. They do not create a safe harbor from lawsuits today. Plaintiffs have brought - and still bring - web and PDF accessibility claims right now under existing ADA and Section 504 theories. Lead your internal case for funding with present-day litigation and complaint risk, not "the deadline is coming." Start remediating the highest-traffic, highest-risk content immediately rather than waiting for your population tier's date.

*Reference: ADA Title II (2024 rule); compliance dates by population*

### Fix the source document, not just the PDF

The public consumes the actual document you post, so you are liable for that file - which means remediating the PDF export alone is a trap. If the Word or InDesign source lacks real headings, alt text, and reading order, every future re-export reintroduces the same defects. Always fix accessibility in the authoring tool first: apply true Heading styles in Word, set alt text on images, define table headers, then export with the "Create PDF/UA" or tagged-PDF option. Keep the remediated source as the canonical version. This makes updates repeatable and cheap, versus re-remediating a tagged PDF by hand every time the content changes.

*Reference: ADA Title II; WCAG 2.1 AA; PDF/UA*

### Section 504 covers your HHS-funded programs

If your entity receives federal financial assistance through HHS - Medicaid, public-health grants, funded clinics or programs - Section 504 of the Rehabilitation Act independently requires that your digital content and services be accessible. HHS's updated rule points to WCAG 2.1 AA for web and mobile content, so the technical target aligns with Title II. Practically, this means a county health department can face both a Title II obligation and a Section 504 obligation for the same portal. Inventory which programs are HHS-funded, because that funding brings its own enforcement path and its own deadlines. Do not assume Title II is your only exposure.

*Reference: Section 504, Rehabilitation Act; HHS rule; WCAG 2.1 AA*

### Section 504 deadlines also shifted - and still don't pause suits

HHS extended its Section 504 digital-accessibility deadlines: recipients with 15 or more employees now have until May 11, 2027, and those with fewer than 15 until May 10, 2028. As with Title II, this extension moves the compliance date, not the underlying liability - HHS-funded healthcare and education entities can be sued for inaccessible content today. Use the extra time to remediate systematically rather than to defer. Prioritize patient-facing and program-eligibility content first: appointment portals, benefit applications, consent forms, and notices, since those cause the most direct harm when a screen-reader user cannot complete them.

*Reference: Section 504; HHS interim final rule (May 2026)*

### What "accessible" actually means in practice

"Accessible" is not a certificate or a plugin; it means a person using assistive technology can perceive, operate, and understand your content as effectively as anyone else. Concretely: a screen-reader user hears headings and link purposes in a logical order, a keyboard-only user can reach and activate every control, someone with low vision can zoom to 200% without losing content, and captions carry the audio. Reframe every remediation task as "can this specific user complete this specific task?" That user-outcome lens keeps you from chasing green automated-checker scores while a form remains impossible to submit with a keyboard.

*Reference: WCAG 2.1 AA; POUR principles*

### Documents posted online are in scope - all of them

A common misread is that Title II covers "web pages" but not the files linked from them. It covers your web content, and PDFs, Word docs, PowerPoint decks, and spreadsheets posted for the public are web content. A budget PDF, a permit application, a board-meeting agenda, or a downloadable form all fall under WCAG 2.1 AA. Build a document inventory: crawl your site for linked file types (.pdf, .docx, .xlsx, .pptx) and log each with its page traffic. That inventory becomes your remediation backlog and your evidence of a good-faith, prioritized plan if anyone asks what you are working on.

*Reference: ADA Title II; WCAG 2.1 AA (document scope)*

### Vendor and third-party content usually still counts

If you post it, link it as a service, or embed it into your site, you are generally responsible for its accessibility - even when a vendor built it. A hosted permit portal, an online payment system, an embedded video player, or a chatbot widget serving the public falls within your obligations. You cannot outsource the liability by outsourcing the technology. Track every third-party component that touches the public and hold each vendor to WCAG 2.1 AA contractually. Where a vendor tool is inaccessible, you need a documented plan: an accessible alternative path, a fix timeline, or replacement.

*Reference: ADA Title II; third-party/vendor content*

### Know the narrow exceptions - and don't over-rely on them

The Title II rule includes limited exceptions, including certain archived web content, some preexisting conventional electronic documents that are not currently used to apply for or access services, third-party content not posted by the entity, individualized password-protected documents, and preexisting social-media posts. These are narrow and conditional - not a general excuse to skip old files. If content is still used to apply for a benefit, get a service, or participate in a program, it is not "archived" no matter how old it is. Before invoking an exception, document specifically why the content qualifies, because misapplying an exception is a common and easily challenged mistake.

*Reference: ADA Title II (2024 rule) exceptions*

### The archived-content exception has strict conditions

"Archived" has a precise meaning here, not "old." To qualify, content generally must have been created before the compliance date or reproduce paper originals, be kept only for reference/research/recordkeeping, live in a special archive area, and not be changed since archiving. Miss any condition and it is regular web content owed full conformance. The practical risk: teams label a whole "documents" folder as archive to shrink the backlog, then keep linking those files from active service pages - which breaks the exception. Physically separate true archives, label them clearly, and stop pointing live service workflows at them.

*Reference: ADA Title II; archived-content exception*

### Conformance is not the same as usability

An interface can pass every WCAG success criterion on paper and still be miserable to use with a screen reader or keyboard. Conformance is the legal-technical floor; usability is whether real people can actually accomplish tasks efficiently. A form might meet the labels criterion yet bury errors in a way that leaves an AT user lost. Aim past bare conformance: run task-based testing with actual assistive-technology users on your highest-traffic flows. Conformance keeps you defensible; usability keeps the public served. Budget for at least a few sessions of real AT testing on critical journeys, not just automated scans.

*Reference: WCAG 2.1 AA; conformance vs. usability*

### Automated scanners catch a minority of issues

Tools like axe, WAVE, or Lighthouse are fast and valuable, but they reliably detect only a portion of WCAG problems - often cited around a third. They flag missing alt text or low contrast; they cannot judge whether alt text is meaningful, whether reading order makes sense, or whether a keyboard user can complete a task. Use scanners as a first pass to clear the obvious, then always follow with manual keyboard testing and a screen-reader pass. Treating a clean automated report as "fully accessible" is one of the most common and most legally exposed mistakes an entity can make.

*Reference: WCAG 2.1 AA; automated vs. manual testing*

### Ask vendors for a real VPAT before you buy

A VPAT (Voluntary Product Accessibility Template) is a supplier's self-reported accessibility conformance report, usually mapped to WCAG and Section 508. Request one during procurement - before signing - and read it critically. Look for the WCAG 2.1 AA edition, "Supports / Partially Supports / Does Not Support" ratings with real explanatory notes, and a recent date. Vague "Supports" claims with no detail are a red flag. A VPAT is a starting point for evaluation, not proof of accessibility, so pair it with your own test of the actual product on the tasks your public will perform.

*Reference: VPAT / ITI Accessibility Conformance Report; Section 508*

### Bake accessibility into procurement language

The cheapest time to fix accessibility is before you own the product. Add contract clauses requiring WCAG 2.1 AA conformance, a current VPAT, remediation of defects at the vendor's cost within a defined window, and the right to withhold payment or exit for material non-conformance. Require the vendor to notify you of accessibility regressions in updates. Without these terms, you inherit an inaccessible system and the bill to fix it. Give your procurement and legal teams a standard accessibility rider so every RFP for public-facing technology - portals, forms, payment, agenda software - carries the same enforceable baseline.

*Reference: ADA Title II; procurement; WCAG 2.1 AA*

### Mobile apps are explicitly covered

Title II's rule names mobile applications alongside web content, so a native iOS or Android app your entity offers the public must meet WCAG 2.1 AA as applied to mobile. That means VoiceOver and TalkBack can navigate every screen, touch targets are large enough, controls have accessible labels and roles, and the app works in the device's larger text and high-contrast settings. If a third party built or maintains your app, put the same conformance and remediation terms in that contract. Do not let "it's an app, not a website" become a blind spot in your compliance inventory.

*Reference: ADA Title II (mobile apps); WCAG 2.1 AA*

### Population tier sets your date - confirm which you're in

Your compliance deadline depends on population served, so the first planning step is knowing your tier. Larger entities (serving 50,000 or more) face the earlier date; smaller public entities and special districts get the later one. Special districts - water, transit, library, and similar - fall in the later group regardless of the population they cover. Pull your official population figure and document your tier in writing so leadership plans against the right date. Even in the later tier, remember the date defines rule-violation timing, not immunity from suit - so sequence high-risk content ahead of your formal deadline.

*Reference: ADA Title II compliance dates by population*

### Special districts have their own clock and obligations

Special-purpose districts - transit authorities, water and sanitation districts, park and library districts, and similar - are public entities under Title II and carry the same WCAG 2.1 AA obligation, generally in the later compliance tier. Being small or single-purpose is not an exemption. A district's ratepayer portal, board agendas, service maps, and outage notices are all in scope. If your district relies on a shared county or vendor platform, confirm who is responsible for the digital content the public actually uses. Start with the content residents depend on to pay bills, request service, or attend meetings.

*Reference: ADA Title II (special districts); WCAG 2.1 AA*

### Courts' public-facing content is covered too

State and local courts are arms of government subject to Title II, so their public web content and documents must meet WCAG 2.1 AA. That includes e-filing portals, self-help and forms libraries, calendars and dockets, fee-payment systems, and posted opinions or notices. Inaccessible court content directly blocks people from exercising rights - filing, responding to a summons, or requesting an accommodation - which raises both the human and legal stakes. Prioritize self-represented-litigant materials and any form used to initiate or respond to a case, since those are the documents most likely to be needed under deadline by someone using assistive technology.

*Reference: ADA Title II (courts); WCAG 2.1 AA*

### Libraries and their databases are in scope

Public libraries are Title II entities, and accessibility extends beyond the library's own site to the catalog, event registration, e-book and database platforms, and program PDFs. Many of these are third-party services, which does not remove the library's responsibility for the content and services it offers the public. Inventory each vendor platform - catalog, digital-lending app, research databases - and request VPATs and remediation commitments. Where a critical platform is inaccessible, document an alternative way for patrons to get the same service. Since libraries often sit in the later compliance tier as districts, use the runway to pressure vendors now.

*Reference: ADA Title II (libraries); WCAG 2.1 AA; VPAT*

### PDF/UA supports WCAG but isn't the legal standard itself

For PDFs, PDF/UA (ISO 14289-1) is the technical specification for how a tagged, accessible PDF should be structured - correct tags, reading order, and metadata. It is the practical toolkit for making a document conform, but the ADA rule's benchmark is WCAG 2.1 AA. Think of it this way: aim your document remediation at meeting WCAG success criteria, and use PDF/UA structure as the reliable means to get there. Validate with a PDF/UA checker such as PAC, then still confirm the WCAG-level outcomes - meaningful alt text, logical order, and true form labels - because a file can pass structural checks yet fail a human's task.

*Reference: WCAG 2.1 AA; PDF/UA (ISO 14289-1)*

### Build an inventory before you build a plan

You cannot prioritize what you have not counted. Before remediation, crawl your web presence to list pages, linked documents by type, embedded media, third-party widgets, and mobile apps. Tag each item with owner, public traffic, and function (e.g., "apply for benefit," "pay a bill," "attend meeting"). This inventory is both your work backlog and your evidence of a reasonable, prioritized approach if a complaint arrives. Rank by risk: high-traffic transactional content first, static informational pages later, true archives last. A defensible plan on paper, actively worked, is far stronger than sporadic fixes with no map.

*Reference: ADA Title II; remediation planning*

### Publish and maintain an accessibility statement

An accessibility statement tells the public your conformance goal (WCAG 2.1 AA), how to report a barrier, and how to request an accessible alternative or accommodation. It is not a legal shield, but it demonstrates commitment and, crucially, gives users a fast path to get help - which can resolve issues before they become complaints. Include a monitored contact and commit to a response timeframe. Keep it honest: if some legacy content isn't yet conformant, say you're remediating and offer an alternative. Review the statement periodically so it reflects your actual progress rather than a stale, over-promising claim.

*Reference: ADA Title II; accessibility statement / feedback mechanism*

### Provide an accessible alternative while you remediate

Full remediation takes time, so Title II expects that people can still access services in the meantime. If a specific document or tool is not yet conformant, offer a documented alternative: an accessible HTML version, a phone or in-person path, or on-request accessible formatting within a stated timeframe. This is different from claiming an exception - it is meeting your effective-communication duty for content still in use. Make the alternative easy to find near the affected content, and track requests so recurring pain points rise up your remediation priority list rather than staying hidden.

*Reference: ADA Title II; effective communication; equally effective alternatives*

### "Accessible" is not a one-time project

Web content changes constantly - a new agenda posts weekly, staff upload PDFs daily, vendors push updates. A site remediated once drifts out of conformance fast without process. Treat accessibility as ongoing operations: train content authors to create accessible documents at the source, add an accessibility check to your publishing workflow, and re-scan on a schedule. Assign an owner. The goal is that new content ships accessible by default, so remediation shrinks to a manageable backlog instead of an endless firefight. Building this habit is also strong evidence of sustained good-faith compliance rather than a one-time cosmetic pass.

*Reference: ADA Title II; ongoing conformance / governance*

### Title II reaches the whole entity, not just IT

Accessibility obligations attach to the government function, wherever the content originates. A PDF a clerk posts, a form a program office links, a video communications publishes, and a portal IT procures are all in scope. Responsibility spread across departments is why gaps appear - everyone assumes someone else owns it. Name accountable owners per content area, give each authoring team training and templates, and route new public content through a shared accessibility check. Central IT can set standards and tooling, but the departments creating documents must produce them accessibly, because that is where most WCAG failures are actually born.

*Reference: ADA Title II; entity-wide responsibility*

### Complaints and OCR: existing enforcement is live now

Well before your population's deadline, people can file accessibility complaints - with the DOJ, with HHS's Office for Civil Rights for Section 504 matters, or directly in court. Investigations often start with common, findable failures: inaccessible PDFs, unlabeled forms, missing captions, keyboard traps. That is exactly why "we'll fix it by the deadline" is a weak posture. Reduce present risk by clearing the easy, high-visibility problems first and keeping records of your inventory, priorities, and progress. Documented, active remediation is the most useful thing you can show an investigator, and it directly lowers the odds of a complaint in the first place.

*Reference: ADA Title II; Section 504; DOJ/HHS OCR enforcement*
