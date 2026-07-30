# CurbEffect — 365 Accessibility Remediation Tips

A one-year bank of 365 daily tips for document and web accessibility remediation, spanning every major document type, exporting to PDF, and website content. Written for ADA Title II entities (US state & local governments, courts, libraries) and HHS-funded organizations.

**Key legal framing woven throughout:** Under ADA Title II, a public entity's web content and the documents it posts must meet WCAG 2.1 Level AA — and the *original/source* document (not just a PDF export) is what must be remediated, because the entity is liable for the content the public actually uses. Compliance deadlines (April 2026/2027/2028) move the timeline, not the liability: plaintiffs can sue today.

_Generated 2026-07-06. Draft for proofreading._

---

## Contents

- **Foundations, the Law & ADA Title II** — tips 1–26 (26)
- **Microsoft Word** — tips 27–58 (32)
- **PDF Remediation in Acrobat** — tips 59–90 (32)
- **Converting & Exporting to PDF** — tips 91–114 (24)
- **Microsoft PowerPoint** — tips 115–138 (24)
- **Microsoft Excel & Spreadsheets** — tips 139–160 (22)
- **Google Workspace (Docs, Slides, Sheets)** — tips 161–180 (20)
- **EPUB & E-Books** — tips 181–198 (18)
- **Websites & Web Content (WCAG 2.1 AA)** — tips 199–235 (37)
- **Images, Alt Text & Complex Graphics** — tips 236–257 (22)
- **Tables Across Formats** — tips 258–275 (18)
- **Forms Across Formats** — tips 276–295 (20)
- **Color & Visual Design** — tips 296–311 (16)
- **Multimedia: Captions, Transcripts & Audio Description** — tips 312–327 (16)
- **Testing, Validation & Tools** — tips 328–349 (22)
- **Assistive Technology & How People Read** — tips 350–365 (16)

---

## Foundations, the Law & ADA Title II

### 1. The core Title II web rule in one sentence

The 2024 ADA Title II rule requires state and local governments to make their web content and mobile apps conform to WCAG 2.1 Level AA. That single standard now governs your public-facing pages, PDFs and other documents, embedded media, and native mobile apps - not just your homepage. Treat WCAG 2.1 AA as the concrete, testable target for every remediation decision: when a stakeholder asks "is this accessible enough?", the answer is measured against those success criteria. Bookmark the WCAG 2.1 AA quick-reference and use it as your acceptance checklist so "accessible" stops being a vague goal and becomes a defined bar you can verify against.

*Reference: ADA Title II (2024 rule); WCAG 2.1 AA*

### 2. Deadlines move the timeline, not the liability

The rule staggers compliance by population: roughly April 2026 for the largest entities and April 2027/2028 for smaller ones and special districts. It is tempting to file remediation under "later," but those dates only set when non-conformance becomes a clear rule violation. They do not create a safe harbor from lawsuits today. Plaintiffs have brought - and still bring - web and PDF accessibility claims right now under existing ADA and Section 504 theories. Lead your internal case for funding with present-day litigation and complaint risk, not "the deadline is coming." Start remediating the highest-traffic, highest-risk content immediately rather than waiting for your population tier's date.

*Reference: ADA Title II (2024 rule); compliance dates by population*

### 3. Fix the source document, not just the PDF

The public consumes the actual document you post, so you are liable for that file - which means remediating the PDF export alone is a trap. If the Word or InDesign source lacks real headings, alt text, and reading order, every future re-export reintroduces the same defects. Always fix accessibility in the authoring tool first: apply true Heading styles in Word, set alt text on images, define table headers, then export with the "Create PDF/UA" or tagged-PDF option. Keep the remediated source as the canonical version. This makes updates repeatable and cheap, versus re-remediating a tagged PDF by hand every time the content changes.

*Reference: ADA Title II; WCAG 2.1 AA; PDF/UA*

### 4. Section 504 covers your HHS-funded programs

If your entity receives federal financial assistance through HHS - Medicaid, public-health grants, funded clinics or programs - Section 504 of the Rehabilitation Act independently requires that your digital content and services be accessible. HHS's updated rule points to WCAG 2.1 AA for web and mobile content, so the technical target aligns with Title II. Practically, this means a county health department can face both a Title II obligation and a Section 504 obligation for the same portal. Inventory which programs are HHS-funded, because that funding brings its own enforcement path and its own deadlines. Do not assume Title II is your only exposure.

*Reference: Section 504, Rehabilitation Act; HHS rule; WCAG 2.1 AA*

### 5. Section 504 deadlines also shifted - and still don't pause suits

HHS extended its Section 504 digital-accessibility deadlines: recipients with 15 or more employees now have until May 11, 2027, and those with fewer than 15 until May 10, 2028. As with Title II, this extension moves the compliance date, not the underlying liability - HHS-funded healthcare and education entities can be sued for inaccessible content today. Use the extra time to remediate systematically rather than to defer. Prioritize patient-facing and program-eligibility content first: appointment portals, benefit applications, consent forms, and notices, since those cause the most direct harm when a screen-reader user cannot complete them.

*Reference: Section 504; HHS interim final rule (May 2026)*

### 6. What "accessible" actually means in practice

"Accessible" is not a certificate or a plugin; it means a person using assistive technology can perceive, operate, and understand your content as effectively as anyone else. Concretely: a screen-reader user hears headings and link purposes in a logical order, a keyboard-only user can reach and activate every control, someone with low vision can zoom to 200% without losing content, and captions carry the audio. Reframe every remediation task as "can this specific user complete this specific task?" That user-outcome lens keeps you from chasing green automated-checker scores while a form remains impossible to submit with a keyboard.

*Reference: WCAG 2.1 AA; POUR principles*

### 7. Documents posted online are in scope - all of them

A common misread is that Title II covers "web pages" but not the files linked from them. It covers your web content, and PDFs, Word docs, PowerPoint decks, and spreadsheets posted for the public are web content. A budget PDF, a permit application, a board-meeting agenda, or a downloadable form all fall under WCAG 2.1 AA. Build a document inventory: crawl your site for linked file types (.pdf, .docx, .xlsx, .pptx) and log each with its page traffic. That inventory becomes your remediation backlog and your evidence of a good-faith, prioritized plan if anyone asks what you are working on.

*Reference: ADA Title II; WCAG 2.1 AA (document scope)*

### 8. Vendor and third-party content usually still counts

If you post it, link it as a service, or embed it into your site, you are generally responsible for its accessibility - even when a vendor built it. A hosted permit portal, an online payment system, an embedded video player, or a chatbot widget serving the public falls within your obligations. You cannot outsource the liability by outsourcing the technology. Track every third-party component that touches the public and hold each vendor to WCAG 2.1 AA contractually. Where a vendor tool is inaccessible, you need a documented plan: an accessible alternative path, a fix timeline, or replacement.

*Reference: ADA Title II; third-party/vendor content*

### 9. Know the narrow exceptions - and don't over-rely on them

The Title II rule includes limited exceptions, including certain archived web content, some preexisting conventional electronic documents that are not currently used to apply for or access services, third-party content not posted by the entity, individualized password-protected documents, and preexisting social-media posts. These are narrow and conditional - not a general excuse to skip old files. If content is still used to apply for a benefit, get a service, or participate in a program, it is not "archived" no matter how old it is. Before invoking an exception, document specifically why the content qualifies, because misapplying an exception is a common and easily challenged mistake.

*Reference: ADA Title II (2024 rule) exceptions*

### 10. The archived-content exception has strict conditions

"Archived" has a precise meaning here, not "old." To qualify, content generally must have been created before the compliance date or reproduce paper originals, be kept only for reference/research/recordkeeping, live in a special archive area, and not be changed since archiving. Miss any condition and it is regular web content owed full conformance. The practical risk: teams label a whole "documents" folder as archive to shrink the backlog, then keep linking those files from active service pages - which breaks the exception. Physically separate true archives, label them clearly, and stop pointing live service workflows at them.

*Reference: ADA Title II; archived-content exception*

### 11. Conformance is not the same as usability

An interface can pass every WCAG success criterion on paper and still be miserable to use with a screen reader or keyboard. Conformance is the legal-technical floor; usability is whether real people can actually accomplish tasks efficiently. A form might meet the labels criterion yet bury errors in a way that leaves an AT user lost. Aim past bare conformance: run task-based testing with actual assistive-technology users on your highest-traffic flows. Conformance keeps you defensible; usability keeps the public served. Budget for at least a few sessions of real AT testing on critical journeys, not just automated scans.

*Reference: WCAG 2.1 AA; conformance vs. usability*

### 12. Automated scanners catch a minority of issues

Tools like axe, WAVE, or Lighthouse are fast and valuable, but they reliably detect only a portion of WCAG problems - often cited around a third. They flag missing alt text or low contrast; they cannot judge whether alt text is meaningful, whether reading order makes sense, or whether a keyboard user can complete a task. Use scanners as a first pass to clear the obvious, then always follow with manual keyboard testing and a screen-reader pass. Treating a clean automated report as "fully accessible" is one of the most common and most legally exposed mistakes an entity can make.

*Reference: WCAG 2.1 AA; automated vs. manual testing*

### 13. Ask vendors for a real VPAT before you buy

A VPAT (Voluntary Product Accessibility Template) is a supplier's self-reported accessibility conformance report, usually mapped to WCAG and Section 508. Request one during procurement - before signing - and read it critically. Look for the WCAG 2.1 AA edition, "Supports / Partially Supports / Does Not Support" ratings with real explanatory notes, and a recent date. Vague "Supports" claims with no detail are a red flag. A VPAT is a starting point for evaluation, not proof of accessibility, so pair it with your own test of the actual product on the tasks your public will perform.

*Reference: VPAT / ITI Accessibility Conformance Report; Section 508*

### 14. Bake accessibility into procurement language

The cheapest time to fix accessibility is before you own the product. Add contract clauses requiring WCAG 2.1 AA conformance, a current VPAT, remediation of defects at the vendor's cost within a defined window, and the right to withhold payment or exit for material non-conformance. Require the vendor to notify you of accessibility regressions in updates. Without these terms, you inherit an inaccessible system and the bill to fix it. Give your procurement and legal teams a standard accessibility rider so every RFP for public-facing technology - portals, forms, payment, agenda software - carries the same enforceable baseline.

*Reference: ADA Title II; procurement; WCAG 2.1 AA*

### 15. Mobile apps are explicitly covered

Title II's rule names mobile applications alongside web content, so a native iOS or Android app your entity offers the public must meet WCAG 2.1 AA as applied to mobile. That means VoiceOver and TalkBack can navigate every screen, touch targets are large enough, controls have accessible labels and roles, and the app works in the device's larger text and high-contrast settings. If a third party built or maintains your app, put the same conformance and remediation terms in that contract. Do not let "it's an app, not a website" become a blind spot in your compliance inventory.

*Reference: ADA Title II (mobile apps); WCAG 2.1 AA*

### 16. Population tier sets your date - confirm which you're in

Your compliance deadline depends on population served, so the first planning step is knowing your tier. Larger entities (serving 50,000 or more) face the earlier date; smaller public entities and special districts get the later one. Special districts - water, transit, library, and similar - fall in the later group regardless of the population they cover. Pull your official population figure and document your tier in writing so leadership plans against the right date. Even in the later tier, remember the date defines rule-violation timing, not immunity from suit - so sequence high-risk content ahead of your formal deadline.

*Reference: ADA Title II compliance dates by population*

### 17. Special districts have their own clock and obligations

Special-purpose districts - transit authorities, water and sanitation districts, park and library districts, and similar - are public entities under Title II and carry the same WCAG 2.1 AA obligation, generally in the later compliance tier. Being small or single-purpose is not an exemption. A district's ratepayer portal, board agendas, service maps, and outage notices are all in scope. If your district relies on a shared county or vendor platform, confirm who is responsible for the digital content the public actually uses. Start with the content residents depend on to pay bills, request service, or attend meetings.

*Reference: ADA Title II (special districts); WCAG 2.1 AA*

### 18. Courts' public-facing content is covered too

State and local courts are arms of government subject to Title II, so their public web content and documents must meet WCAG 2.1 AA. That includes e-filing portals, self-help and forms libraries, calendars and dockets, fee-payment systems, and posted opinions or notices. Inaccessible court content directly blocks people from exercising rights - filing, responding to a summons, or requesting an accommodation - which raises both the human and legal stakes. Prioritize self-represented-litigant materials and any form used to initiate or respond to a case, since those are the documents most likely to be needed under deadline by someone using assistive technology.

*Reference: ADA Title II (courts); WCAG 2.1 AA*

### 19. Libraries and their databases are in scope

Public libraries are Title II entities, and accessibility extends beyond the library's own site to the catalog, event registration, e-book and database platforms, and program PDFs. Many of these are third-party services, which does not remove the library's responsibility for the content and services it offers the public. Inventory each vendor platform - catalog, digital-lending app, research databases - and request VPATs and remediation commitments. Where a critical platform is inaccessible, document an alternative way for patrons to get the same service. Since libraries often sit in the later compliance tier as districts, use the runway to pressure vendors now.

*Reference: ADA Title II (libraries); WCAG 2.1 AA; VPAT*

### 20. PDF/UA supports WCAG but isn't the legal standard itself

For PDFs, PDF/UA (ISO 14289-1) is the technical specification for how a tagged, accessible PDF should be structured - correct tags, reading order, and metadata. It is the practical toolkit for making a document conform, but the ADA rule's benchmark is WCAG 2.1 AA. Think of it this way: aim your document remediation at meeting WCAG success criteria, and use PDF/UA structure as the reliable means to get there. Validate with a PDF/UA checker such as PAC, then still confirm the WCAG-level outcomes - meaningful alt text, logical order, and true form labels - because a file can pass structural checks yet fail a human's task.

*Reference: WCAG 2.1 AA; PDF/UA (ISO 14289-1)*

### 21. Build an inventory before you build a plan

You cannot prioritize what you have not counted. Before remediation, crawl your web presence to list pages, linked documents by type, embedded media, third-party widgets, and mobile apps. Tag each item with owner, public traffic, and function (e.g., "apply for benefit," "pay a bill," "attend meeting"). This inventory is both your work backlog and your evidence of a reasonable, prioritized approach if a complaint arrives. Rank by risk: high-traffic transactional content first, static informational pages later, true archives last. A defensible plan on paper, actively worked, is far stronger than sporadic fixes with no map.

*Reference: ADA Title II; remediation planning*

### 22. Publish and maintain an accessibility statement

An accessibility statement tells the public your conformance goal (WCAG 2.1 AA), how to report a barrier, and how to request an accessible alternative or accommodation. It is not a legal shield, but it demonstrates commitment and, crucially, gives users a fast path to get help - which can resolve issues before they become complaints. Include a monitored contact and commit to a response timeframe. Keep it honest: if some legacy content isn't yet conformant, say you're remediating and offer an alternative. Review the statement periodically so it reflects your actual progress rather than a stale, over-promising claim.

*Reference: ADA Title II; accessibility statement / feedback mechanism*

### 23. Provide an accessible alternative while you remediate

Full remediation takes time, so Title II expects that people can still access services in the meantime. If a specific document or tool is not yet conformant, offer a documented alternative: an accessible HTML version, a phone or in-person path, or on-request accessible formatting within a stated timeframe. This is different from claiming an exception - it is meeting your effective-communication duty for content still in use. Make the alternative easy to find near the affected content, and track requests so recurring pain points rise up your remediation priority list rather than staying hidden.

*Reference: ADA Title II; effective communication; equally effective alternatives*

### 24. "Accessible" is not a one-time project

Web content changes constantly - a new agenda posts weekly, staff upload PDFs daily, vendors push updates. A site remediated once drifts out of conformance fast without process. Treat accessibility as ongoing operations: train content authors to create accessible documents at the source, add an accessibility check to your publishing workflow, and re-scan on a schedule. Assign an owner. The goal is that new content ships accessible by default, so remediation shrinks to a manageable backlog instead of an endless firefight. Building this habit is also strong evidence of sustained good-faith compliance rather than a one-time cosmetic pass.

*Reference: ADA Title II; ongoing conformance / governance*

### 25. Title II reaches the whole entity, not just IT

Accessibility obligations attach to the government function, wherever the content originates. A PDF a clerk posts, a form a program office links, a video communications publishes, and a portal IT procures are all in scope. Responsibility spread across departments is why gaps appear - everyone assumes someone else owns it. Name accountable owners per content area, give each authoring team training and templates, and route new public content through a shared accessibility check. Central IT can set standards and tooling, but the departments creating documents must produce them accessibly, because that is where most WCAG failures are actually born.

*Reference: ADA Title II; entity-wide responsibility*

### 26. Complaints and OCR: existing enforcement is live now

Well before your population's deadline, people can file accessibility complaints - with the DOJ, with HHS's Office for Civil Rights for Section 504 matters, or directly in court. Investigations often start with common, findable failures: inaccessible PDFs, unlabeled forms, missing captions, keyboard traps. That is exactly why "we'll fix it by the deadline" is a weak posture. Reduce present risk by clearing the easy, high-visibility problems first and keeping records of your inventory, priorities, and progress. Documented, active remediation is the most useful thing you can show an investigator, and it directly lowers the odds of a complaint in the first place.

*Reference: ADA Title II; Section 504; DOJ/HHS OCR enforcement*

---

## Microsoft Word

### 27. Use built-in Heading styles, not manual formatting

The single biggest thing that determines whether an exported PDF starts accessible is whether your Word document uses real Heading styles. In the Home tab's Styles gallery, apply Heading 1, Heading 2, and so on to section titles instead of just bolding text and bumping the font size. Manually formatted text looks like a heading but exports as ordinary body text with no structure, so screen reader users can't navigate by heading. Click into a line, pick the correct style from the gallery, and Word tags it as a heading in the PDF. Reserve Title style for the document's main title and use Headings for the outline.

*Reference: WCAG 1.3.1 (A); PDF/UA clause 7.4*

### 28. Nest heading levels without skipping

Heading styles must describe a logical outline, so don't jump from Heading 1 straight to Heading 3 because you prefer the smaller look. Screen reader users rely on levels to understand how sections relate, and a skipped level reads as a missing or broken branch. If Heading 2 is too large for your taste, don't demote it to Heading 3 - instead modify the Heading 2 style's appearance (right-click it in the Styles gallery, choose Modify) so it looks the way you want while keeping the correct level. Use the View tab's Navigation Pane to see your heading tree at a glance and confirm each level follows its parent in order.

*Reference: WCAG 1.3.1 (A), 2.4.10 (AAA)*

### 29. Build real bulleted and numbered lists

Create lists with the Bullets and Numbering buttons on the Home tab, never by typing a hyphen, asterisk, or "1." followed by a tab. Real lists export as tagged list structures (L, LI, LBody) that screen readers announce as "list, 5 items," letting users understand grouping and count. Fake lists made of manual characters are just paragraphs of text with no relationship between items. If you have a manually typed list, select it and click the Bullets or Numbering button to convert it. For ordered steps use Numbering so the sequence is conveyed; for unordered items use Bullets.

*Reference: WCAG 1.3.1 (A); PDF/UA clause 7.6*

### 30. Use the Multilevel List tool for nested lists

When a list has sub-items, don't fake indentation with tabs or spaces - use Home tab's Multilevel List button. Choose a list style, then press Tab to demote an item to a sub-level and Shift+Tab to promote it. This creates properly nested list structures in the exported PDF, so a screen reader announces the hierarchy (for example, item 2, then its two sub-items) rather than reading a flat run of paragraphs. Consistent multilevel lists also make numbering restart and continue correctly. Avoid mixing manual indents with the tool, which produces inconsistent nesting that confuses assistive technology and looks fine only visually.

*Reference: WCAG 1.3.1 (A)*

### 31. Insert tables with Insert Table, not tabs or spaces

Build data tables through the Insert tab's Table command so cells become real table structure in the PDF. Never simulate a table by aligning text with tabs, spaces, or by drawing text boxes - that produces no row/column relationships and screen reader users lose the ability to associate a value with its headers. A genuine Word table exports as tagged Table, TR, TH, and TD elements. Keep the layout simple: avoid merged or split cells where possible, since complex spans are hard to make accessible. If your content is a list rather than a data grid, use a list instead of a table.

*Reference: WCAG 1.3.1 (A); PDF/UA clause 7.5*

### 32. Designate a header row and repeat it

After inserting a table, mark its top row as a header so screen readers announce column names when navigating cells. Click inside the table, go to the Table Layout (Table Tools Layout) tab, and turn on Repeat Header Rows for the first row; also confirm the Table Design tab has Header Row checked. Repeat Header Rows makes the header reappear when a long table breaks across pages and, more importantly, tags that row as header cells (TH) in the PDF. Without a designated header, every cell is plain data and users can't tell which column a value belongs to. Set this on every data table before exporting.

*Reference: WCAG 1.3.1 (A); PDF/UA clause 7.5*

### 33. Avoid splitting tables across pages awkwardly

Long tables should flow naturally with a repeating header, but you should still control how rows break. In Table Properties (right-click the table, choose Table Properties, Row tab), turn OFF "Allow row to break across pages" so a single row's content isn't split between two pages, which fragments cell relationships and reading order in the PDF. Keep the header row set to repeat so context follows the data. Don't insert manual blank rows or hard page breaks inside a table to force spacing - those create empty cells that screen readers announce as blank and disrupt the table's row and column counts.

*Reference: WCAG 1.3.1 (A)*

### 34. Don't use tables for page layout

Tables in Word should hold tabular data only, not arrange text and images into columns or a grid. Layout tables export as data tables in the PDF, so a screen reader announces meaningless "column 1, row 2" navigation over content that has no rows-and-columns meaning. For side-by-side content use the Columns tool; for positioning use paragraph alignment and spacing. If you inherit a document that uses a table purely for layout, rebuild the content with proper styles, columns, or text flow. Reserve the Insert Table command for information that genuinely has a header-and-data relationship the reader needs to perceive.

*Reference: WCAG 1.3.1 (A); PDF/UA clause 7.5*

### 35. Add alt text to every image, chart, and shape

Right-click any picture, chart, icon, or shape, choose View Alt Text (or Edit Alt Text), and write a concise description of what the image conveys. This text exports into the PDF as the element's alternate description so screen reader users get the meaning. Describe the purpose, not the pixels: for a chart, summarize the trend or key figure rather than saying "chart." Keep it brief - a sentence or two is usually enough - and don't start with "image of," which screen readers already announce. Do this for grouped shapes and SmartArt too, or replace them with real text and a described image.

*Reference: WCAG 1.1.1 (A); PDF/UA clause 7.3*

### 36. Mark decorative images as decorative

Not every image needs a description. If a graphic is purely ornamental - a divider line, a background flourish, a repeated logo watermark that carries no information - open View Alt Text and check the "Mark as decorative" box instead of writing alt text. This tags the image as an artifact in the exported PDF so screen readers skip it, sparing users from meaningless announcements. Be honest about the distinction: a logo that identifies the issuing agency in a letterhead often does convey information and needs alt text, while the same logo used only as decoration does not. Never leave the alt text field simply blank hoping it's ignored.

*Reference: WCAG 1.1.1 (A); PDF/UA clause 7.1*

### 37. Write meaningful hyperlink text

Select the words that should be the link, then use Insert tab, Link, and set the display text to something descriptive rather than pasting a raw URL or using "click here." A screen reader user pulling up a list of links needs each one to make sense out of context, so "Read the 2026 accessibility policy" beats "click here" and a bare "https://..." string. In the Insert Hyperlink dialog, put the friendly text in the "Text to display" field and the URL in the Address field. For documents meant to be printed as well, you can include the URL in text but still give the link a meaningful anchor phrase.

*Reference: WCAG 2.4.4 (A)*

### 38. Create columns with the Columns tool

For newsletter-style or side-by-side text, use the Layout tab's Columns command, not multiple tab stops or two text boxes side by side. The Columns tool keeps a single, correct reading order in the exported PDF - the reader finishes the left column, then moves to the right. Tabs and text boxes scramble that order, causing screen readers to jump mid-sentence or read the wrong content first. If you need content to stop and start a new column at a specific point, insert a column break (Layout, Breaks, Column) rather than pressing Enter repeatedly. Verify the flow afterward with the Navigation Pane or by reading top to bottom.

*Reference: WCAG 1.3.2 (A)*

### 39. Generate a Table of Contents from heading styles

Once your document uses real Heading styles, insert an automatic Table of Contents from the References tab, Table of Contents. Word builds it from your headings, and in the exported PDF each entry becomes a working link to its section plus contributes to the document's navigational structure. Never type a table of contents by hand with page numbers and dot leaders - it won't update, the page numbers drift, and the entries aren't linked. If you add or reorder sections, right-click the TOC and choose Update Field to refresh it. A generated TOC is also a quick audit: missing sections reveal headings you forgot to style.

*Reference: WCAG 2.4.1 (A), 2.4.5 (AA)*

### 40. Set the document's default editing language

Screen readers use the document language to choose the correct pronunciation rules, so set it explicitly. Go to the Review tab, Language, Set Proofing Language, pick the correct language (for example English United States), and click "Set As Default" so new content inherits it. This language exports as the PDF's primary language attribute. Without it, a screen reader may read English text with a Spanish voice or the reverse, making content unintelligible. Confirm the setting on inherited documents too - files created from foreign templates sometimes default to the wrong language even when the visible text is English.

*Reference: WCAG 3.1.1 (A); PDF/UA clause 7.2*

### 41. Tag foreign-language passages inline

When a paragraph or phrase switches languages - a Spanish notice inside an English document, a Latin motto, a quoted French term - select just that text and set its language separately through Review, Language, Set Proofing Language. Do not check "Set As Default"; this marks only the selection so the exported PDF carries a language change on that span. A screen reader then switches to the correct voice for those words and back again. This matters most for the public-facing bilingual notices common on government documents, where an untagged Spanish block read in an English voice is unusable to Spanish-speaking residents.

*Reference: WCAG 3.1.2 (AA)*

### 42. Fill in the document Title property

A PDF should present a human-readable title in the reader's title bar and tab, and that comes from the Word file's Title property, not the filename. Go to File, Info, and in the Properties panel set the Title field to a clear name like "City of Example 2026 Budget Summary." When you export, this becomes the PDF's document title. Without it, the reader falls back to the filename, which is often cryptic (final_v3.pdf). After exporting, many workflows also need the PDF set to display the document title instead of the filename - but authoring it in Word first ensures the metadata is present to begin with.

*Reference: WCAG 2.4.2 (A); PDF/UA clause 7.1*

### 43. Run the built-in Accessibility Checker before exporting

Word ships with an Accessibility Checker under the Review tab (Check Accessibility). Run it before every export; it flags missing alt text, tables without header rows, low-contrast text, blank headings, and more, with an Inspection Results pane that jumps you to each issue and suggests fixes. Turn on "Keep accessibility checker running while I work" so problems surface as you author rather than at the end. It won't catch everything - it can't judge whether your alt text is meaningful or your reading order makes sense - but clearing every error and warning it reports removes a large class of defects before they ever reach the PDF.

*Reference: ADA Title II; WCAG 2.1 AA*

### 44. Modify styles instead of overriding formatting

When a heading or body style doesn't look right, resist the urge to manually change the font, size, or color on the text itself. Right-click the style in the Home tab Styles gallery, choose Modify, and change it there. This keeps the semantic style intact - the text stays a Heading 2 - while giving you the look you want, and every instance updates consistently. Manual overrides pile up as direct formatting that can mask the underlying structure and make the document harder to audit. Consistent, style-driven formatting also exports cleaner tags and makes later remediation far simpler than hunting through one-off changes.

*Reference: WCAG 1.3.1 (A)*

### 45. Add footnotes and endnotes with the References tab

Insert footnotes and endnotes using References, Insert Footnote or Insert Endnote, rather than typing a superscript number by hand and putting the note at the bottom manually. The References tool creates a real reference-note relationship, so in the exported PDF the reference marker links to its note and screen readers can associate them. Hand-typed superscripts are just characters with no connection to the note text, leaving users unable to find or return from a note. The automatic numbering also renumbers correctly when you add or remove notes. This is the accessible way to handle citations, legal references, and explanatory asides.

*Reference: WCAG 1.3.1 (A)*

### 46. Caption figures and tables with the References tool

Use References, Insert Caption to label figures and tables rather than typing "Figure 1" as loose text underneath. Captions stay associated with their object, renumber automatically, and can feed a Table of Figures. In the exported PDF the caption reads in proper order with its image or table. Remember that a caption is not a substitute for alt text - a caption is visible to everyone and names the figure, while alt text describes the visual content for screen reader users. Provide both: a caption identifying "Figure 3: Annual permit volume" and alt text summarizing what the chart actually shows.

*Reference: WCAG 1.1.1 (A), 1.3.1 (A)*

### 47. Avoid text boxes for meaningful content

Text boxes float outside the main text flow, so content placed in them frequently lands in the wrong reading order in the exported PDF or gets dropped from the tag tree entirely. Don't use a text box for pull quotes, sidebars, callouts, or any words the reader needs. Instead put the content in the normal document body and style it - use a bordered paragraph, a shaded style, or a single-cell table only if truly needed. If a template forces text boxes on you, verify the reading order after export and move essential content into the main flow before delivering the document.

*Reference: WCAG 1.3.2 (A); PDF/UA clause 7.18*

### 48. Don't put meaningful text in WordArt

WordArt turns text into a decorative graphic, and while Word can attach alt text to it, the styled letters are not real, selectable, searchable text and often carry poor contrast and distortion. Never use WordArt for headings, titles, or any content that conveys meaning. Use a proper Heading style with the font and color you want instead - it looks polished, stays real text, and exports as navigable structure. If you inherit a document with a WordArt title, replace it with a Title or Heading 1 styled paragraph. Reserve any purely decorative WordArt for elements you mark as decorative.

*Reference: WCAG 1.4.5 (AA); PDF/UA clause 7.3*

### 49. Replace SmartArt with real text plus a described image

SmartArt diagrams look organized but export unpredictably: the reading order of nodes is often scrambled and the text inside shapes may not tag reliably. For process flows, org charts, or cycle diagrams that carry information, don't rely on raw SmartArt in a document headed for PDF. Either provide the same information as a real bulleted or numbered list nearby, or convert the SmartArt to a picture and give it thorough alt text describing the relationships. If you keep SmartArt, add alt text to the whole graphic explaining its meaning, and always verify the reading order after export before delivering.

*Reference: WCAG 1.1.1 (A), 1.3.2 (A)*

### 50. Accept or reject all tracked changes before exporting

Tracked changes and their markup can carry into or confuse an exported PDF, and leftover revision marks clutter the reading order and may expose content that should be gone. Before exporting, open the Review tab, and under Accept choose "Accept All Changes and Stop Tracking" (or reject as appropriate). Also set the display to "No Markup" is not enough - hidden tracked changes still exist until resolved. Finalizing revisions gives you a clean document whose tags reflect only the real content. This is also a privacy step for government documents, since tracked edits can reveal internal deliberations you didn't intend to publish.

*Reference: WCAG 1.3.1 (A)*

### 51. Delete all comments before delivery

Review comments are notes for collaborators, not content for the public, and they can linger in a delivered file. Before exporting to PDF, go to the Review tab, click the Comments dropdown, and choose Delete All Comments in Document. Leftover comments clutter the exported file, may appear in the PDF's markup, and on government documents can leak internal discussion. Pair this with resolving tracked changes and running Document Inspector (File, Info, Check for Issues, Inspect Document) to sweep for hidden metadata, comments, and revision data. A clean source document produces a cleaner, safer, and more navigable accessible PDF.

*Reference: ADA Title II; WCAG 2.1 AA*

### 52. Start from an accessible template

Save your team repeated effort by building or adopting a Word template (.dotx) that already has correct Heading styles, a set language, a filled Title placeholder, accessible list styles, and no reliance on text boxes or WordArt. Store it in File, New so every new document inherits good structure from the first keystroke. An accessible template prevents the most common defects - unstyled headings, wrong language, missing title - before they happen, which is far cheaper than remediating each finished document. Review the template itself with the Accessibility Checker, and update it whenever you discover a recurring issue so the fix propagates to all future documents.

*Reference: ADA Title II; WCAG 2.1 AA*

### 53. Create white space with paragraph spacing, not empty lines

Don't press Enter repeatedly to push content down the page. Empty paragraphs export as blank lines that a screen reader announces as "blank, blank, blank," and they disrupt the reading flow. To add space before or after a heading or paragraph, use the paragraph's Space Before and Space After settings in the Layout tab or in the Paragraph dialog, ideally baked into the style. For a fresh page, insert a real page break (Ctrl+Enter or Insert, Page Break) instead of hitting Enter until the cursor jumps. The result is clean spacing that looks the same but produces no phantom blank lines in the PDF.

*Reference: WCAG 1.3.1 (A)*

### 54. Handle watermarks so they don't disrupt reading

A "DRAFT" or "CONFIDENTIAL" watermark added via Design, Watermark sits in the header layer and normally exports as a background artifact, which is fine - but a watermark inserted as a floating text box or WordArt in the body can land in the reading order and be announced mid-content. Use the built-in Watermark feature so the mark is treated as decorative, and if the watermark carries essential meaning (a legal status the reader must know), don't rely on the visual alone - state it in real text somewhere in the document. After export, confirm the watermark isn't read aloud as stray text within the content.

*Reference: WCAG 1.3.1 (A); PDF/UA clause 7.1*

### 55. Keep essential content out of headers and footers

Content placed in the Word header/footer area (Insert, Header/Footer) is treated as a running artifact and repeated on every page, and screen readers typically skip it as background. That's correct for page numbers and running titles - but it means any information the reader actually needs must live in the main body, not only in the footer. Don't hide a phone number, effective date, or legal notice solely in a footer where assistive technology may not surface it. Use headers and footers for genuine page furniture (page numbers, document name) and put substantive content in the body where it's tagged as real reading material.

*Reference: WCAG 1.3.1 (A); PDF/UA clause 7.8*

### 56. Auto-number pages instead of typing page numbers

Insert page numbers through Insert, Page Number so they live in the header or footer as running content that updates automatically. Never type a page number by hand into the body text - it won't update when content shifts, it can land in the reading order and be read aloud in the wrong place, and it clutters the tag tree. Automatic page numbers are treated as pagination artifacts in the exported PDF and stay out of the way of assistive technology. This also keeps long documents correct as you edit, avoiding the mismatched numbers that plague hand-numbered files.

*Reference: WCAG 1.3.1 (A); PDF/UA clause 7.8*

### 57. Set table reading order and check cell flow

Even a properly built Word table can read in an unexpected order if cells are merged or if the table is nested. Word reads tables left to right, top to bottom, so design your data grid to make sense that way and avoid merged cells that break the pattern. Tab through the cells in the order you expect them to be read; if the logical order doesn't match, restructure the table. For a table that must convey a specific sequence, keep it a simple grid with one header row. Verifying cell flow in Word prevents scrambled table narration in the exported PDF.

*Reference: WCAG 1.3.2 (A); PDF/UA clause 7.5*

### 58. Don't convey information with color or formatting alone

When a document uses red text, highlighting, or bold to flag something - "items in red are overdue," "highlighted rows need action" - that cue is invisible to screen reader users and to people who can't distinguish the colors. In Word, add a real text label alongside the visual: write "(overdue)" next to the item, add a status column to the table, or state the meaning in a sentence. Formatting like bold and color does not carry into the PDF as information a screen reader announces. Build the meaning into words so every reader gets it, then use color as reinforcement rather than the sole signal.

*Reference: WCAG 1.4.1 (A), 1.3.3 (A)*

---

## PDF Remediation in Acrobat

### 59. Run the Accessibility Checker first, then plan

Before touching anything, open All Tools > Prepare for Accessibility > Check Accessibility, accept the defaults, and read the report tree it generates in the left panel. Do not start fixing at random; the report groups issues under Document, Page Content, Forms, Tables, and Alternate Text, and it tells you which failures are machine-checkable versus flagged "Needs manual check" (like logical reading order and color contrast). Right-click any item for Fix, Skip Rule, or Explain. Use the report as your worklist and your final sign-off, but remember it only detects roughly a third of real barriers, so a clean report is a starting point, not proof of conformance.

*Reference: Adobe Acrobat Accessibility Checker; WCAG 2.1 AA*

### 60. Autotag as a starting draft, never a finish line

All Tools > Prepare for Accessibility > Autotag Document makes Acrobat guess a tag tree from visual layout. Treat that output as a rough first draft only. Autotag routinely mislabels headings as paragraphs, merges columns, turns real tables into streams of paragraphs, tags decorative lines as figures, and drops list structure. After autotagging, always open the Tags panel and the Reading Order tool to verify and repair. For a document with heavy layout, autotag then fix is far faster than manual tagging, but for a clean single-column report the machine output may need little correction. The point: autotag saves keystrokes, it does not confer accessibility.

*Reference: PDF/UA clause 7.1; WCAG 1.3.1 (A)*

### 61. Understand the three views of structure

Acrobat exposes three different panels and they are not the same thing. The Tags panel shows the real logical structure tree that assistive technology reads. The Order panel (from the Reading Order tool) shows a simplified, page-by-page numbered sequence that is easier to reshuffle but hides tag detail. The Reading Order tool itself paints colored boxes over content so you can retag regions visually. Changes in one view affect the others, but the Tags tree is authoritative. Use Order for quick sequence fixes, Reading Order for bulk region retagging, and always confirm the final result in the Tags panel, which is where scope, headings, and nesting truly live.

*Reference: PDF/UA clause 7.1; WCAG 1.3.2 (A)*

### 62. Turn on the Tags panel and read the tree

Open the Tags panel (Accessibility tools, or View > Show/Hide > Navigation Panes > Tags). This tree of <Document>, <H1>, <P>, <Table>, <L>, and <Figure> elements is the actual structure screen readers announce. Expand it fully and walk it top to bottom while watching the document; enable Options > Highlight Content so selecting a tag outlines the matching content on the page. If highlighting a tag lights up nothing, or lights up the wrong region, the tree is out of sync with reality. Learning to read this tree fluently is the single most important Acrobat remediation skill, because almost every other fix is verified here.

*Reference: PDF/UA clause 7.1; WCAG 1.3.1 (A)*

### 63. Set the document Title and DisplayDocTitle

A screen reader announces the document Title, not the filename, so an untitled PDF is announced as a cryptic filename. In File > Properties > Description, enter a meaningful Title. Then, critically, go to File > Properties > Initial View and set "Show" to "Document Title" so the title actually gets used; this flips the DisplayDocTitle flag to true. The Accessibility Checker flags "Title" as failed until both the Title field is populated and DisplayDocTitle is on. Test by watching the window title bar update to your text. This one-minute fix resolves a rule that assistive-technology users notice immediately when opening a document.

*Reference: PDF/UA clause 7.1; WCAG 2.4.2 (A)*

### 64. Set the document's primary language

Assistive technology needs to know the primary language to choose the correct pronunciation engine, otherwise English text may be read with Spanish phonemes or vice versa. In File > Properties > Advanced, set the Language field (for example English or Spanish), or use the Set Reading Language item in the Accessibility Checker's fix menu. This sets a Lang attribute on the document catalog. It is a single dropdown and it clears the "Primary language" checker rule instantly. Do not skip it because the document "is obviously in English"; the flag is metadata that software reads, and its absence is a genuine failure for text-to-speech tools.

*Reference: PDF/UA clause 7.2; WCAG 3.1.1 (A)*

### 65. Mark passages in another language

When a document is mostly English but contains a foreign-language phrase, quotation, or a Spanish notice block, set language at the passage level so pronunciation switches correctly. In the Tags panel, right-click the tag wrapping that content (for example a <P> or a <Span> you create around the phrase), choose Properties, and on the Tag tab set the Language dropdown to the passage's language. Nested Lang attributes override the document default for their subtree. Proper nouns and common loanwords do not need this, but a full sentence or block in another language does. This is tedious but it is what makes bilingual government notices read intelligibly aloud.

*Reference: PDF/UA clause 7.2; WCAG 3.1.2 (AA)*

### 66. Fix reading order with the Order panel

When a screen reader reads content in the wrong sequence (footer before body, sidebar interrupting a paragraph), open the Reading Order tool and its Order panel. The panel lists numbered regions per page; drag entries up or down to reorder, and the numbered overlays on the page update live. This is the fastest way to correct gross sequence problems without editing the Tags tree by hand. Remember the Order panel governs the order content is encountered, which must match the logical reading flow a sighted reader would follow. After reordering, re-run the checker's "Logical Reading Order" manual check and tab through with a screen reader to confirm.

*Reference: PDF/UA clause 7.1; WCAG 1.3.2 (A)*

### 67. Handle multi-column layouts deliberately

Multi-column pages are where autotag most often fails, reading straight across both columns line by line instead of down column one then column two. Use the Reading Order tool to draw a region box around all of column one and tag it, then a separate box around column two, in the order they should be read. Alternatively, fix the sequence in the Tags tree by dragging the column-two <P> elements to follow column one. Verify by turning on Highlight Content and stepping through tags in order, watching the highlight travel down the first column completely before jumping to the second. Newspaper-style and two-column report layouts always need this check.

*Reference: PDF/UA clause 7.1; WCAG 1.3.2 (A)*

### 68. Fix heading levels so they nest correctly

Headings must form a logical outline: an H1 for the document title, H2 for sections, H3 for subsections, without skipping a level (no H1 jumping straight to H3). Autotag frequently assigns heading tags by font size, producing wrong or skipped levels. In the Tags panel, right-click a heading tag, choose Properties, and change its Type on the Tag tab, or retype it directly. Walk the whole document and confirm the hierarchy makes sense as an outline. Screen-reader users navigate by heading level and jump between them, so a broken heading structure destroys their ability to skim a long government document efficiently.

*Reference: PDF/UA clause 7.4; WCAG 1.3.1 (A)*

### 69. Add real alt text to meaningful images

Every <Figure> that conveys information needs alternate text. In the Tags panel, right-click the <Figure> tag and choose Properties, then type a concise description in the Alternate Text field; or use All Tools > Prepare for Accessibility > Set Alternate Text to step through every figure in the document one at a time. Describe the image's purpose and content, not "image of"; a chart's alt text should summarize the data point it makes. Keep it brief and do not duplicate a caption that already appears as visible text. The checker's "Figures alternate text" rule fails until every informative figure has non-empty alt text.

*Reference: PDF/UA clause 7.3; WCAG 1.1.1 (A)*

### 70. Artifact decorative images and page furniture

Not every image needs alt text; decorative rules, background watermarks, repeated logos, header and footer graphics, and page borders should be hidden from assistive technology as artifacts, not described. In the Reading Order tool, select the region and click "Background/Artifact," or in the Set Alternate Text dialog check "Decorative figure." This removes the element from the tag tree so a screen reader skips it silently. The judgment call is whether the image carries meaning; a decorative divider does not, an org chart does. Over-describing decoration is as harmful as missing real alt text because it adds noise the user must wade through.

*Reference: PDF/UA clause 7.1; WCAG 1.1.1 (A)*

### 71. Artifact running headers, footers, and page numbers

Repeating page furniture, running page headers, footers, and page numbers, should be marked as pagination artifacts so screen readers do not re-announce them on every page. In the Reading Order tool, select the header or footer region and click "Background/Artifact," or select the text and use the Tags panel to remove it from the structure tree. A user reading a fifty-page ordinance does not want "Page 12 of 50, City of Springfield" spoken between every paragraph. Genuine content that merely sits in the margin, however, is not furniture and must stay tagged. Distinguish repeated boilerplate from real information before artifacting.

*Reference: PDF/UA clause 7.8; WCAG 1.3.1 (A)*

### 72. Distinguish real text from figures

Scanned pages and some exports place actual readable text inside a <Figure> tag, so a screen reader announces only the alt text (or nothing) instead of reading the words. Conversely, a stylized text logo may be genuine text that should be a figure with alt text. When a paragraph is trapped in a figure, it usually means the page is an image and needs OCR (Scan & OCR > Recognize Text) before tagging, or the tag must be changed to <P> once real characters exist underneath. Highlight the tag and check whether selectable characters appear. If there is no underlying text, no retagging will fix it; recognize text first.

*Reference: PDF/UA clause 7.3; WCAG 1.4.5 (AA)*

### 73. Tag tables with a real Table structure

A data table must be a genuine <Table> containing <TR> rows and <TH>/<TD> cells, not a grid of loose <P> paragraphs or, worse, tab-spaced text. Autotag often flattens tables. Use the Reading Order tool to select the whole grid and click "Table," then verify a <Table> tag appeared with proper row and cell children in the Tags panel. If the structure is wrong, the Table Editor (right-click the table region in the Reading Order tool > Table Editor) lets you inspect and correct the cell grid visually. Only a properly structured table lets a screen reader announce "row 3, column 2" and read associated headers.

*Reference: PDF/UA clause 7.5; WCAG 1.3.1 (A)*

### 74. Mark header cells and set scope

In a data table, the cells that label rows or columns must be <TH> (table header), not <TD> (data), and each <TH> needs a Scope of Row or Column so screen readers associate the right header with each data cell. Open the Table Editor from the Reading Order tool, right-click a header cell, choose Table Cell Properties, set the type to Header Cell, and select the appropriate Scope. Color-coding in the Table Editor shows headers versus data at a glance. Without scope, a user hearing "$4,200" has no idea which quarter and which department it belongs to. Every table with headers needs this pass.

*Reference: PDF/UA clause 7.5; WCAG 1.3.1 (A)*

### 75. Use the Table Editor for complex grids

For tables with merged cells, spanning headers, or multiple header rows, the Table Editor is essential. Right-click the table in the Reading Order tool and choose Table Editor to see every cell outlined and labeled. Here you can set ColSpan and RowSpan on cells via Table Cell Properties, assign an ID to a header, and reference it with Associated Header Cell IDs on the data cells that a simple Row/Column scope cannot reach. This is how you make a two-level header table (say, "2025" spanning "Q1" and "Q2") readable. It is fiddly work, but complex financial and statistical tables in government reports require it.

*Reference: PDF/UA clause 7.5; WCAG 1.3.1 (A)*

### 76. Build ordered and unordered lists correctly

A real list is an <L> tag containing <LI> items, each holding an <Lbl> (the bullet or number) and an <LBody> (the item text). Autotag and conversion often produce loose paragraphs with literal bullet characters instead, which a screen reader cannot announce as "list, 5 items." In the Tags panel, wrap the items in an <L>, give each an <LI> with <Lbl> and <LBody> children, and move the marker character into the <Lbl>. This lets assistive technology announce list boundaries and item counts. Do not fake lists with tabs and bullet glyphs; the structure, not the visible symbol, is what conveys "this is a list."

*Reference: PDF/UA clause 7.6; WCAG 1.3.1 (A)*

### 77. Nest sublists inside the parent list item

For multi-level lists (outline numbering, indented sub-bullets), the nested <L> belongs inside the parent item's <LBody>, not as a sibling of the parent <LI>. A common mistake is placing the child list after the parent item at the same level, which flattens the hierarchy and loses the "sub-item" relationship. In the Tags panel, drag the child <L> so it lives within the correct <LBody>. Expand the tree to confirm each level of indentation corresponds to one level of nesting. Complex agendas, statutes with subsections, and procedural documents rely on correct nesting so users understand which points are subordinate to which.

*Reference: PDF/UA clause 7.6; WCAG 1.3.1 (A)*

### 78. Tag links as Link with an OBJR

An accessible link is a <Link> tag that contains both the visible link text and a <Link - OBJR> object reference pointing at the actual link annotation. If the OBJR is missing, the annotation floats free of the structure and a screen reader may not announce it as a link at all. The simplest repair is All Tools > Prepare for Accessibility > run the checker, then right-click the "Tagged annotations" failure and choose Fix, or use Autotag which usually creates the OBJR. Verify in the Tags panel that each <Link> has both its text run and its OBJR child. Also make the visible link text descriptive rather than a bare URL.

*Reference: PDF/UA clause 7.18; WCAG 2.4.4 (A)*

### 79. Give links meaningful, distinguishable text

Beyond correct link tagging, the visible text matters. "Click here" and raw URLs like "https://example.gov/docs/2025/final-v3.pdf" are useless to a screen-reader user pulling up a links list. Edit the link text so it describes the destination, such as "2025 Budget Ordinance (PDF)." In Acrobat you may need to edit the underlying text run and ensure the <Link> tag wraps the descriptive phrase. Where you cannot change visible text, an Alternate Text on the <Link> tag can supply an accessible name. Distinct, purposeful link text also helps sighted users skimming a document full of references.

*Reference: PDF/UA clause 7.18; WCAG 2.4.4 (A)*

### 80. Create a bookmark outline for long documents

Documents longer than a handful of pages should have a bookmark panel (the PDF outline) so users can jump to sections without scrolling. In the Bookmarks panel, you can auto-generate bookmarks from tagged headings: with structure in place, select your headings and use the panel Options > "New Bookmarks from Structure," choosing the heading tags. This builds a navigable table of contents that mirrors your heading hierarchy. Bookmarks are not strictly required by every checkpoint, but they are an expected usability affordance for long government PDFs and they reinforce the same logical structure your headings already define.

*Reference: PDF/UA clause 7.17; WCAG 2.4.1 (A)*

### 81. Set tab order to follow document structure

Interactive PDFs (those with links or form fields) must let keyboard users tab through elements in logical order. In the Page Thumbnails panel, select all pages, then Options > Page Properties > Tab Order, and choose "Use Document Structure." This ties the tab sequence to your tag tree instead of an arbitrary or creation order. The Accessibility Checker's "Tab order" rule fails on any page where tab order is unspecified. Do this after your reading order and structure are correct, since "Use Document Structure" inherits whatever sequence the tags define. Then tab through with the keyboard to confirm focus moves sensibly and never gets trapped.

*Reference: PDF/UA clause 7.18; WCAG 2.4.3 (A)*

### 82. Tag form fields with names and tooltips

Every interactive form field needs an accessible name so a screen reader announces its purpose. In Prepare Form mode, double-click each field, open Properties, and fill the Tooltip, which Acrobat exposes as the field's accessible name; "Applicant last name" is far better than "Text1." Ensure each field is also represented in the tag tree (autotagging a form usually creates the field tags). Group related radio buttons and checkboxes correctly, and provide the visible label text as the tooltip so what users see matches what they hear. The checker flags fields lacking descriptions; unlabeled form fields make an application form impossible to complete non-visually.

*Reference: PDF/UA clause 7.18; WCAG 3.3.2 (A), 4.1.2 (A)*

### 83. Verify the reading order includes every field's label

For forms, the visible label text and its field must be adjacent in reading order so a screen reader announces "First name" immediately before landing on the input. Autotag sometimes separates the label paragraph from the field tag, so the label reads at the top of the page and the field far below. In the Tags tree, position each field's <Form> tag right after its label text, or ensure the tooltip carries the label so association survives regardless. Tab through the completed form with a screen reader running and confirm every field speaks a clear prompt at the moment focus arrives, with no orphaned labels or silent inputs.

*Reference: PDF/UA clause 7.18; WCAG 3.3.2 (A)*

### 84. Set the PDF/UA identifier once conformance is met

After a document genuinely conforms, embedding the PDF/UA-1 identifier flag signals to software that it claims conformance. Acrobat's Accessibility Checker offers this, or preflight profiles can add it; some remediation validators (like PAC) check for it. Only set this flag when the file actually meets the requirements; a PDF/UA claim on a broken file is worse than no claim because it asserts something false. The identifier itself changes nothing about how the document reads; it is metadata. Treat it as the last step after tags, reading order, tables, alt text, language, and title are all verified, not as a checkbox that confers conformance.

*Reference: PDF/UA (ISO 14289-1) conformance identifier*

### 85. Validate beyond Acrobat with PAC

Acrobat's built-in checker misses many PDF/UA requirements, so run a finished file through a dedicated validator such as PAC (PDF Accessibility Checker), which tests against the full ISO 14289-1 machine-checkable rule set and offers a screen-reader preview and a logical-structure view. PAC will surface issues Acrobat is silent on, like missing OBJR references, malformed tables, or an absent PDF/UA flag. Use it as an independent second opinion, then return to Acrobat to fix what it reports. No automated tool catches everything, so still test with an actual screen reader, but a clean PAC result plus a clean Acrobat check is a much stronger baseline than either alone.

*Reference: PDF/UA (ISO 14289-1); WCAG 2.1 AA*

### 86. Read the checker report items, do not just click Fix All

The Accessibility Checker lets you right-click failures for a Fix option, but blindly auto-fixing can create wrong results, autotagging can shred a table, auto-setting reading order can misorder columns. Read each item, use Explain to understand what it wants, and decide whether the automatic fix or a manual repair is appropriate. Items marked "Needs manual check" (logical reading order, color contrast) will never clear automatically; you must inspect and then right-click Pass or Fail yourself. Treat the report as a checklist you reason through, not a button that makes the document accessible. Understanding why each rule exists is what separates real remediation from box-ticking.

*Reference: Adobe Acrobat Accessibility Checker; WCAG 2.1 AA*

### 87. Watch out for empty and orphaned tags

Conversion and editing leave behind empty <P> or <Span> tags with no content, and orphaned tags whose content was deleted, both add noise or confusion for screen readers. In the Tags panel, enable Highlight Content and step through; any tag that highlights nothing is a candidate for deletion. Remove genuinely empty structural tags, but be careful not to delete a tag that legitimately wraps children. The Accessibility Checker does not always flag these, so a manual sweep of the tree is worthwhile on documents that went through several conversions. A tidy tag tree with no dead entries reads cleanly and is far easier to audit later.

*Reference: PDF/UA clause 7.1; WCAG 1.3.1 (A)*

### 88. Correct mojibake and unmapped characters

Sometimes tags and reading order look perfect but a screen reader speaks gibberish because glyphs lack a proper Unicode mapping (common with certain fonts, ligatures, or symbol characters). Test by using Save As Text or having a screen reader read a suspect line; if "fi" ligatures, bullets, or accented letters come out wrong, the font's ToUnicode map is broken. Fixes include using the Reading Order tool's actual-text feature, adding an ActualText attribute in tag properties to spell out the intended characters, or, if widespread, rebuilding from source with a better font. Perfect structure over garbled characters still produces an unusable document, so verify the words themselves are spoken correctly.

*Reference: PDF/UA clause 7.2; WCAG 1.3.1 (A)*

### 89. Add ActualText for stylized or split words

When a word is visually rendered in pieces, split across a line break, drawn as decorative characters, or built from a logo font, add an ActualText attribute so assistive technology speaks the intended word instead of fragments. In the Tags panel, right-click the tag, choose Properties, and enter the correct text in the ActualText field on the Tag tab. Unlike Alternate Text, ActualText replaces the reading of the actual characters, so use it precisely for the exact word or phrase. This is the right tool for a heading where "COVID-19" is spaced oddly or a drop cap separates the first letter from its word. Use sparingly and only where character reading genuinely fails.

*Reference: PDF/UA clause 7.3; WCAG 1.3.1 (A)*

### 90. Know when a PDF is too broken to remediate

Remediation has a point of diminishing returns. If a PDF is a flat scan with no text layer, has hundreds of malformed tables, uses fonts that will not map to Unicode, or was produced by a tool that mangles structure beyond hand-repair, it is faster and more reliable to rebuild from the source file. Fix accessibility in the original Word, InDesign, or web content, then re-export a tagged PDF, rather than spending hours patching a corrupt tag tree that will still fail validation. Ask for the source before quoting a remediation. Recognizing this early saves budget and produces a genuinely accessible result instead of a heroic but fragile patch job.

*Reference: PDF/UA (ISO 14289-1); WCAG 2.1 AA*

---

## Converting & Exporting to PDF

### 91. Never use Print to PDF from Word

When you export a Word document, avoid the "Print to PDF" or "Microsoft Print to PDF" printer driver at all costs. Printing flattens your document into an image-like page stream that strips out every heading, list, table, and reading-order tag, leaving a completely untagged PDF that screen readers cannot navigate. Instead use File > Save As (or File > Export > Create PDF/XPS), which routes through Word's accessibility-aware engine. The difference is invisible on screen but total for assistive technology: one path produces a tagged, structured document, the other produces an inaccessible page picture. Train every author on your team that "Print to PDF" is banned for any document destined for public distribution.

*Reference: PDF/UA (ISO 14289-1); WCAG 1.3.1 (A)*

### 92. Turn on structure tags in Word's Save As Options

The single most important checkbox when exporting from Word lives in a dialog most people never open. In File > Save As, choose PDF as the file type, then click the Options button before saving. In that Options dialog, confirm that "Document structure tags for accessibility" is checked. This setting is what carries your headings, lists, tables, and reading order into the tag tree of the PDF. It is normally on by default, but macros, older templates, or a colleague's earlier session can silently disable it. Making a habit of opening Options and verifying the box every export takes five seconds and prevents shipping a document with no tags at all.

*Reference: PDF/UA (ISO 14289-1) clause 7*

### 93. Include headings and bookmarks in the export

While you have Word's PDF Options dialog open, check "Create bookmarks using: Headings" so your Heading 1 through Heading 6 styles become navigable PDF bookmarks. Bookmarks give sighted and assistive-technology users a clickable table of contents in the reader's navigation pane, which is invaluable for long documents like agendas, ordinances, and reports. This option only works if you built the document with real heading styles rather than manually bolded text, so it doubles as a check on your source structure. Also confirm "Document properties" is checked so the title and language you set in the source travel into the PDF metadata rather than defaulting to the filename.

*Reference: WCAG 2.4.1 (A), 2.4.5 (AA)*

### 94. Set the document title and language before exporting

A tagged PDF still fails accessibility checks if it lacks a real title and a declared language. In Word, before you export, open File > Info and set the Title property to a human-readable name, and confirm the editing language under Review > Language > Set Proofing Language matches the document's actual language. When you Save As PDF with "Document properties" enabled, both values carry over: the title becomes the metadata that screen readers announce and that the reader displays in its title bar instead of the filename, and the language tells assistive technology which pronunciation rules to use. Setting these at the source is far faster than adding them by hand in Acrobat afterward.

*Reference: WCAG 3.1.1 (A), 2.4.2 (A)*

### 95. Export accessible PDFs from PowerPoint

PowerPoint exports tagged PDFs through the same File > Save As / Export path as Word, and the same "Document structure tags for accessibility" option applies. Before you export, fix the two things PowerPoint gets wrong most often: reading order and slide titles. Open Home > Arrange > Selection Pane and reorder objects so the bottom of the list reads first (PowerPoint reads bottom-to-top), and give every slide a unique title via the Outline view or an off-slide title placeholder. Add alt text to images through the Alt Text pane. Then Save As PDF with tags enabled. Never export via Print, and never rely on speaker notes to carry information a screen reader user needs.

*Reference: WCAG 1.3.2 (A), 2.4.2 (A)*

### 96. Handle Excel exports carefully

Excel is the hardest Office app to export accessibly, because spreadsheets have no reading order and no heading structure the way documents do. When you Save As PDF from Excel with structure tags enabled, the tags produced are minimal, so consider whether a spreadsheet is even the right delivery format for public content. If the data is truly tabular, define a print area, set the header row to repeat, name the sheet meaningfully, and give each table a defined range so the export has something to tag. For anything that is really a report rather than a data grid, rebuild it in Word where you have real headings and table markup, then export from there.

*Reference: WCAG 1.3.1 (A)*

### 97. Know the difference between Microsoft's and Adobe's PDF engines

Word can produce a PDF two ways, and they are not the same. The built-in Microsoft engine (File > Save As > PDF) is free, always available, and produces good tags for most documents. The Adobe Acrobat add-in installs an "Acrobat" ribbon tab with a "Create PDF" button that uses Adobe's PDFMaker engine instead. PDFMaker sometimes handles complex tables, cross-references, and multi-column layouts better and preserves more metadata, but it can also introduce its own quirks. Pick one engine and standardize on it across your team so your results are predictable, then verify tags either way. Do not assume the Acrobat button is automatically more accessible than Save As.

*Reference: PDF/UA (ISO 14289-1)*

### 98. Preserve hyperlinks as real links on export

When a document has clickable links, exporting correctly keeps them as live, tagged link annotations rather than blue underlined text that goes nowhere. In Word, always insert links with Ctrl+K (Insert > Link) rather than typing a bare URL and hoping autoformat catches it, and give each link meaningful display text instead of a raw address. Both the Microsoft and Adobe export engines preserve properly inserted hyperlinks, including their tooltip text, into the PDF. After export, tab through the document in the reader to confirm links are focusable and activate. A link that renders as styled text but is not actually clickable is a common casualty of Print-to-PDF and copy-paste workflows.

*Reference: WCAG 2.4.4 (A), 1.3.1 (A)*

### 99. Export tagged PDFs from Adobe InDesign

InDesign produces excellent tagged PDFs, but only if you export the right way. Use File > Export, choose Adobe PDF (Print) — not (Interactive) for most accessible documents — and in the export dialog's General tab, check "Create Tagged PDF" and "Create Acrobat Layers" only as needed. Confirm "Bookmarks" and "Hyperlinks" are checked so navigation and links carry over. The tagging quality depends entirely on the structure you built with paragraph styles mapped to export tags, the Articles panel, and Object Export Options. Never export a print-only PDF and try to tag it in Acrobat afterward; set up the source correctly so the export does the work.

*Reference: PDF/UA (ISO 14289-1) clause 7*

### 100. Map InDesign paragraph styles to export tags

InDesign will not guess your document structure, so you must tell it which paragraph styles become which PDF tags. Open a paragraph style, go to the Export Tagging section, and set the PDF Tag (H1, H2, P, and so on) for each style; do the same for character styles. You can also open the Tags-to-Styles mapping from the Paragraph Styles panel menu to set them all at once. This mapping is what turns your visually styled headings into a real tag tree at export time. Without it, everything exports as generic paragraphs and the document has no heading navigation, no matter how good it looks on the page.

*Reference: WCAG 1.3.1 (A), 2.4.6 (AA)*

### 101. Control reading order with the InDesign Articles panel

Visual layout order and reading order are different things, and in InDesign the Articles panel (Window > Articles) is how you control what a screen reader encounters first. Drag your text frames and graphics into the Articles panel in the sequence they should be read, then check "Use for Reading Order in Tagged PDF" from the panel menu. This overrides InDesign's default guess, which is based on page geometry and often wrong for multi-column or sidebar layouts. At export time, make sure "Use Structure for Tab Order" or the Articles reading order option is honored. Verify the result by reading the exported PDF's tag tree top to bottom in Acrobat.

*Reference: WCAG 1.3.2 (A)*

### 102. Add alt text via InDesign Object Export Options

Rather than adding alternate text to every image after export in Acrobat, set it at the source in InDesign so it survives every re-export. Select an image or graphic frame, then open Object > Object Export Options. On the Alt Text tab, choose "Custom" and type the description, or map it from a metadata field. On the Tagged PDF tab you can set whether the object is tagged as a figure or marked as an artifact if it is purely decorative. Because this data lives with the object in the .indd file, regenerating the PDF next month keeps all your alt text intact instead of forcing a full re-remediation.

*Reference: WCAG 1.1.1 (A)*

### 103. Understand Google Docs export limits

Google Docs can export a PDF via File > Download > PDF Document, and it does carry over heading styles, list structure, and alt text you added through Format > Alt text, producing a basically tagged file. But its tagging is less complete than Microsoft Word's: complex tables, nested lists, and reading order in multi-column layouts often need cleanup afterward. For simple documents this export is adequate; for anything complex, a common workflow is to download as .docx, open in Word, and export from there for finer control, or plan for a remediation pass in Acrobat. Know the tool's ceiling so you set the right expectation with the author.

*Reference: PDF/UA (ISO 14289-1)*

### 104. Run OCR to turn scanned paper into real text

A scanned document is just a picture of a page: it has no selectable text, no tags, and is completely inaccessible until you run optical character recognition. In Acrobat, use Scan & OCR > Recognize Text > In This File to convert the page images into a searchable, selectable text layer. Choose "Searchable Image" to keep the original scan appearance while adding text behind it. OCR is only the first step, not the finish line — after recognition you still must add tags, set reading order, and correct any garbled words, especially on faded or handwritten originals. Always proofread the recognized text against the source before distributing.

*Reference: WCAG 1.4.5 (AA), 1.3.1 (A)*

### 105. Re-scan bad originals rather than fighting OCR

Optical character recognition is only as good as the scan you feed it, and no export setting fixes a poor capture. If OCR produces garbled words, missed columns, or recognizes a stamp as text, the fastest remediation is often to re-scan the original at 300 dpi or higher, straightened, with good contrast, before recognizing text. Skewed pages, colored backgrounds, and low resolution all wreck recognition accuracy. For bound documents, a flatbed capture beats a phone photo. Spending five extra minutes on a clean scan saves an hour of manually correcting the text layer later, and it produces text that assistive technology and search can actually read reliably.

*Reference: WCAG 1.4.5 (AA)*

### 106. Configure batch OCR and export for large jobs

When you have dozens or hundreds of scanned documents to make accessible, do not process them one at a time. Acrobat's Action Wizard (Tools > Action Wizard) lets you build a reusable action that runs Recognize Text, sets document properties, and saves each file, then apply it to an entire folder in one pass. For enterprise volumes, Adobe's Autotag and server-side tools can OCR and tag in bulk. Batch processing gets you consistent settings and a mechanical first draft, but scanned material almost always needs individual review afterward for reading order and correct tags, so treat the batch output as a starting point, not a finished deliverable.

*Reference: PDF/UA (ISO 14289-1)*

### 107. Standardize enterprise export settings with a preset

In an office that produces many public PDFs, inconsistent export settings are a top source of accessibility failures. In InDesign, save an Adobe PDF Export preset (File > Adobe PDF Presets > Define) with tagging, bookmarks, and hyperlinks locked on, and share the .joboptions file across the team. In Word environments, distribute a template with the correct language and heading styles baked in and document the Save As Options steps in a one-page guide. Standardizing removes the chance that each author's individual habits determine whether a document is accessible. The goal is that the accessible export path is the default, easy path — not something each person has to remember to configure.

*Reference: PDF/UA (ISO 14289-1)*

### 108. Preserve document language on export

Every exported PDF needs a declared primary language so screen readers pronounce content correctly, and the cleanest way is to set it at the source rather than patch it in Acrobat. In Word, set the language under Review > Language before export; in InDesign, the document language derives from your character styles and can be set per paragraph for multilingual content. When the source language is set, the export writes a /Lang entry into the PDF catalog automatically. For documents that mix languages — an English report quoting a Spanish statute, for instance — mark the passages in their own language at the source so those spans export with their own language tag.

*Reference: WCAG 3.1.1 (A), 3.1.2 (AA)*

### 109. Verify the tags actually survived the export

Never assume an export worked just because the settings were right. Open the finished PDF in Acrobat Pro and run Tools > Accessibility > Check for Accessibility (the Full Check) to get a report of missing tags, alt text, titles, and reading-order issues. Then open the Tags panel (View > Show/Hide > Navigation Panes > Tags) and confirm a real tag tree exists rather than a single "No Tags Available" node. Use the Reading Order tool or Read Out Loud to spot-check the sequence. This verification step catches silently disabled options, engine quirks, and source problems before the document reaches the public — it is the difference between believing a file is accessible and knowing it.

*Reference: PDF/UA (ISO 14289-1); WCAG 1.3.1 (A)*

### 110. Check reading order with the Order panel after export

A PDF can pass an automated tag check and still read in a nonsensical order, because automated tools cannot judge whether the sequence makes sense. After exporting, open Acrobat's Reading Order tool or the Order panel (Accessibility Tags in newer versions) and step through the content in sequence. Confirm that a sidebar does not interrupt the main text, that a caption follows its figure, and that multi-column layouts flow down each column rather than across. This is especially important for InDesign exports where the Articles panel was misconfigured and for Word documents with text boxes. Fixing order at the source and re-exporting is cleaner than dragging tags around in Acrobat.

*Reference: WCAG 1.3.2 (A)*

### 111. Confirm tables exported with real structure

Tables are where exports most often quietly break, so verify them specifically. After export, open the Tags panel in Acrobat and confirm each table appears as a Table tag containing TR rows with TH header cells and TD data cells — not as a loose pile of paragraphs or, worse, an image. Header cells must be tagged as TH with a scope so screen readers can associate data with the right row and column headers. If the structure is wrong, fix it at the source: in Word, use a real inserted table with a designated header row; in InDesign, use proper table styles. Re-export rather than rebuilding the table by hand in Acrobat.

*Reference: WCAG 1.3.1 (A)*

### 112. Do not tag decorative images as content on export

Purely decorative graphics — background flourishes, divider lines, logos that repeat in a header — should be marked as artifacts so screen readers skip them, not tagged as figures demanding alt text. Set this at the source: in InDesign use Object Export Options > Tagged PDF > "Artifact," and in Word mark decorative images via the Alt Text pane's "Mark as decorative" checkbox before exporting. Getting this right at export time means the tag tree contains only meaningful content, so assistive-technology users are not forced to hear "image" over and over for elements that carry no information. Over-tagging decoration is as much a barrier as under-tagging real content.

*Reference: WCAG 1.1.1 (A)*

### 113. Preserve form fields and their labels on export

If your document contains fillable fields, exporting correctly must keep them as real, tagged, labeled form controls rather than flattening them into static lines on the page. When exporting an interactive PDF from InDesign, use File > Export > Adobe PDF (Interactive) so buttons and fields survive, and confirm each field has a descriptive name that becomes its accessible label. From Word, fields created with content controls export better than drawn boxes. After export, tab through the form in Acrobat to confirm every field is reachable by keyboard, announces a label, and follows a logical tab order. A form that looks fillable but has no labeled controls is unusable with a screen reader.

*Reference: WCAG 1.3.1 (A), 3.3.2 (A), 4.1.2 (A)*

### 114. Re-export from source instead of remediating in Acrobat

When you find a tagging problem in an exported PDF, resist the urge to fix it only in Acrobat. Manual Acrobat repairs are lost the moment the author updates the source and re-exports, which for recurring documents like monthly agendas or quarterly reports means redoing the same work forever. Instead, trace each defect back to its cause in the Word or InDesign source — a missing heading style, an unmapped export tag, a wrong reading order — fix it there, and re-export. This front-loads effort but makes accessibility repeatable and cheap over the document's life. Reserve Acrobat remediation for one-off legacy files whose source is gone.

*Reference: PDF/UA (ISO 14289-1); WCAG 1.3.1 (A)*

---

## Microsoft PowerPoint

### 115. Build slides from Layouts, not blank canvases

Start every slide in PowerPoint by choosing a real layout from Home > New Slide (or Layout), never by dropping a blank slide and adding floating text boxes. Layouts come from the slide master and carry titled placeholders that screen readers announce in a predictable order. Floating text boxes added on top of a blank slide have no semantic role, often land at the end of the reading order, and get skipped or read out of sequence. When you remediate an inherited deck, retag stray text by cutting it into the correct placeholder or, if none exists, into a layout that has one. This single habit fixes most reading-order and structure problems before you ever open the checker.

*Reference: ADA Title II; WCAG 2.1 AA (1.3.1, 1.3.2)*

### 116. Give every slide a unique, meaningful title

Each slide needs its own title, and no two should be identical. Titles are how screen-reader users navigate a deck, jumping slide to slide the way sighted users skim. Type titles into the built-in Title placeholder, then verify coverage fast in View > Outline: any slide showing no text at the top level is missing its title. If a design calls for a title you don't want shown, keep the title text but move it off the visible canvas rather than deleting it, or set it via the Selection Pane. Duplicate titles like three slides all named "Overview" defeat navigation, so append a distinguishing word to each.

*Reference: WCAG 2.4.2 (A), 2.4.6 (AA)*

### 117. Use the Outline view to audit titles and text hierarchy

View > Outline strips a deck down to just the text that lives in real title and content placeholders, which makes it the fastest structural audit you have. Anything typed into a floating text box, WordArt, or SmartArt shape simply won't appear here, so blanks in the outline flag content that a screen reader may miss or misorder. Walk the outline top to bottom to confirm every slide has a title and that bulleted content reads as intended. You can even retype or reorganize titles directly in this pane. Treat a clean, complete outline as your first pass before running the formal Accessibility Checker.

*Reference: WCAG 1.3.1 (A), 2.4.10 (AAA)*

### 118. Set reading order in the Selection Pane

Screen readers announce shapes on a slide in the order they sit in the Selection Pane (Home > Arrange > Selection Pane, or Alt+F10), read from bottom to top. To fix reading order, select a slide, open the pane, and drag items so the sequence from bottom upward matches the logical reading flow: title first, then content, then decorative extras. In newer builds a dedicated Reading Order pane (Review > Check Accessibility > Reading Order) lets you reorder top to bottom and hide decorative items from the tab order. Reordering here changes nothing visually but everything for assistive tech, so test with a screen reader after adjusting.

*Reference: WCAG 1.3.2 (A)*

### 119. Add concise alt text to every meaningful image

Right-click any image, chart, icon, or grouped graphic and choose View Alt Text (or Alt Text in the ribbon) to describe what it conveys, not what it literally is. Aim for a sentence or two that captures the purpose in context: "Bar chart showing permit applications doubling from 2023 to 2025," not "chart." Skip phrases like "image of" since the screen reader already announces the element type. For a photo that sets a mood, describe the essential content a sighted reader would take away. Do this on grouped shapes too, because a group without alt text may be read piece by piece and become noise.

*Reference: WCAG 1.1.1 (A)*

### 120. Mark purely decorative graphics as decorative

Not every graphic needs a description. Background swooshes, divider lines, repeated logos, and purely aesthetic shapes should be flagged so screen readers skip them entirely. In the Alt Text pane, check "Mark as decorative"; PowerPoint then removes the object from the reading order instead of announcing empty or meaningless content. This keeps navigation crisp for users who otherwise have to tab past dozens of ornamental elements. Be deliberate: if a graphic carries any information a sighted user relies on, it is not decorative and needs real alt text. Reserve the decorative flag for elements that add nothing to comprehension when removed.

*Reference: WCAG 1.1.1 (A)*

### 121. Describe data charts in words, not just alt text

A single alt-text line rarely does justice to a complex chart. For a chart that carries real data, write alt text summarizing the key takeaway (the trend, the outlier, the comparison), then make the underlying numbers available too. The cleanest approach is to place the source data in an accessible table on the same or an adjacent slide, or in the speaker notes, so a screen-reader user can reach the actual figures. Government dashboards and budget decks especially need this. Never rely on color alone in the chart to distinguish series; add patterns, direct labels, or distinct markers so the meaning survives in grayscale.

*Reference: WCAG 1.1.1 (A), 1.4.1 (A)*

### 122. Build accessible tables with a real header row

Insert tables through Insert > Table so PowerPoint creates a genuine table structure, not a grid faked with text boxes or tab stops. Select the table, and on the Table Design tab enable "Header Row" so the top row is marked as headers that assistive tech can associate with each cell. Keep tables simple: avoid merged or split cells, nested tables, and blank cells used purely for spacing, all of which confuse linear reading. Do not use a table just to position content visually. For anything genuinely complex, split it into smaller tables or move the data to an accessible source document and summarize on the slide.

*Reference: WCAG 1.3.1 (A)*

### 123. Never bake important text into an image

Text saved inside a screenshot, scanned flyer, or exported graphic is invisible to screen readers and blurs when users zoom. If a slide's message lives inside a picture (an infographic, a quote card, a pasted table image), rebuild it as live PowerPoint text and shapes, or at minimum move the full wording into alt text or the adjacent placeholder. This is common in remediation of agency decks that reuse marketing artwork. Live text also lets users change the theme, enlarge fonts, and search the content. When you must keep an image of text for fidelity, ensure the identical text is available in an accessible form on the same slide.

*Reference: WCAG 1.4.5 (AA)*

### 124. Write link text that makes sense out of context

Screen-reader users often pull up a list of all links and hear them with no surrounding sentence, so "click here," "read more," and bare URLs like https://www.example.gov/dept/2025/report-final are useless or unpronounceable. To fix a link, select the descriptive words, press Ctrl+K (Insert > Link), and set the Text to display to something meaningful such as "2025 accessibility compliance report." Each link's visible text should describe its destination. If you must show a raw URL for print, still give it a readable text label. Consistent, unique link text across a deck also helps users tell similar destinations apart at a glance.

*Reference: WCAG 2.4.4 (A), 2.4.9 (AAA)*

### 125. Meet contrast minimums for text on slides

Low-contrast text is one of the most common failures on branded government decks. Body text and other normal-size text need a contrast ratio of at least 4.5:1 against their background; large text (roughly 18pt, or 14pt bold, and up) needs 3:1. Check pairings with a contrast tool and adjust the theme colors in the slide master so every slide inherits compliant defaults. Watch for text placed over photos or gradients, where contrast varies across the image; add a solid or semi-opaque overlay behind the text if needed. Fixing contrast at the master level once beats recoloring text slide by slide.

*Reference: WCAG 1.4.3 (AA)*

### 126. Don't rely on color alone to carry meaning

If red text means "overdue" and green means "on track," a colorblind user or anyone viewing a grayscale printout loses the message. Pair every color cue with a second signal: an icon, a text label, a shape, an asterisk, or a pattern fill. In a status table, add a word ("Complete," "Late") beside the colored cell. In a chart, use distinct markers or direct labels rather than a color-only legend. Review each slide by imagining it in black and white. This applies to hyperlinks too, where the built-in underline plus sufficient contrast keeps links identifiable without depending on the link color alone.

*Reference: WCAG 1.4.1 (A)*

### 127. Keep speaker notes and on-slide content in sync

Speaker notes are a legitimate accessibility asset, but only if you use them consistently. Put narration, context, and full data details in the Notes pane (View > Notes Page) rather than cramming everything onto crowded slides. When a deck is distributed to be read rather than presented, remember that many exports and some assistive workflows do not surface notes automatically, so anything essential to understanding a slide must also exist in the accessible slide content or in the exported document. Use notes to expand and explain; do not use them as the only home for information a reader needs to grasp the slide.

*Reference: WCAG 1.3.1 (A)*

### 128. Caption and describe embedded video and audio

If you embed video via Insert > Video, the content must be perceivable to users who cannot hear or cannot see it. Provide synchronized captions for all speech and important sounds; PowerPoint supports adding a caption file through Video Tools > Insert Captions using a WebVTT (.vtt) file. For content where meaningful visual information isn't conveyed by the audio, supply audio description or a text alternative on the slide. Embedded audio-only clips need a transcript. Don't set media to autoplay, which can startle users and collide with screen readers; let users start playback and reach the controls by keyboard.

*Reference: WCAG 1.2.2 (A), 1.2.5 (AA)*

### 129. Run the built-in Accessibility Checker before every handoff

Review > Check Accessibility scans the deck and lists errors, warnings, and tips, with a "Why fix" explanation and one-click navigation to each flagged object. Errors (missing alt text, missing slide titles, unreadable table structure) are your priority; warnings (like duplicate titles or hard-to-read contrast) come next. Keep "Keep accessibility checker running while I work" enabled so a status indicator flags new issues as you build. Treat a clean checker as a floor, not a ceiling: it can't judge whether alt text is meaningful, whether reading order is logical, or whether link text is descriptive, so pair it with manual review and a screen-reader pass.

*Reference: ADA Title II; WCAG 2.1 AA*

### 130. Bake accessibility into the slide master and layouts

Fix problems once at the source by editing View > Slide Master. In the master and each layout, set a readable default font and size, high-contrast theme colors, generous placeholder spacing, and correctly ordered title and content placeholders so every new slide inherits an accessible baseline. Give each layout a clear name (Slide Master > Rename) so authors pick the right structure. When you standardize a template for an agency, this prevents the recurring floating-text-box and low-contrast problems at scale. Distribute the fixed template as a .potx so future decks start compliant instead of requiring the same remediation over and over.

*Reference: WCAG 1.3.1 (A), 1.4.3 (AA)*

### 131. Ensure the on-screen tab order is logical and complete

Beyond screen-reader reading order, keyboard users tab through interactive objects like hyperlinks, buttons, and media controls. Verify that tabbing moves through a slide in a sensible sequence and reaches every interactive element, matching the order you set in the Selection Pane. Remove keyboard traps where focus gets stuck in an embedded object. If you build slide-to-slide navigation with action buttons or linked shapes, confirm each is reachable and clearly labeled with alt text describing its action, such as "Go to next section." Test by pressing Tab repeatedly on a slide in normal editing view and watching where the focus lands.

*Reference: WCAG 2.1.1 (A), 2.4.3 (A)*

### 132. Keep animations and transitions from harming comprehension

Flashy builds and transitions can confuse assistive tech and disorient or even harm users. Avoid content that flashes more than three times per second, which risks triggering seizures, and skip motion-heavy transitions like spins and bounces. If you use build animations to reveal bullets one at a time, make sure the full content is still reachable and correctly ordered for screen readers, and never make understanding depend on the timing of a motion. Prefer simple, fast fades over elaborate paths. Honor users who reduce motion by keeping effects optional and non-essential, so a static reading of the slide loses nothing.

*Reference: WCAG 2.3.1 (A), 2.2.2 (A)*

### 133. Avoid automatic slide timings and moving content

Slides that advance on a timer or content that moves, blinks, or scrolls on its own can outpace users who need more time, especially screen-reader and low-vision users. Under the Transitions tab, uncheck "After" so slides advance only on click, and remove auto-looping. If any element animates for more than five seconds or repeats, give a way to pause, stop, or hide it. For kiosk or self-running decks common in public-facing government displays, provide an accessible alternative such as a static handout or a version the user controls. Let people set their own pace rather than forcing a rhythm on them.

*Reference: WCAG 2.2.1 (A), 2.2.2 (A)*

### 134. Set the document language and title in file properties

Assistive tech uses the document language to choose the right pronunciation rules, so set it correctly. Confirm the editing language under Review > Language > Set Proofing Language for the deck, and mark any passages in another language individually. Also give the file a real title in File > Info > Properties (Title field), not just a filename, since screen readers and the exported PDF surface that title. A meaningful title like "City Council Budget Overview FY2026" orients users immediately. These metadata steps are easy to forget, take under a minute, and carry straight through when you export to PDF, so handle them before exporting.

*Reference: WCAG 3.1.1 (A), 3.1.2 (AA), 2.4.2 (A)*

### 135. Make font size and spacing support low-vision readers

Slides projected in a room and slides read on a laptop have different needs, but both benefit from generous type. Use a clean sans-serif at a comfortable minimum (commonly 18pt or larger for body content) set in the master so every slide inherits it, and avoid all-caps runs, tight letter spacing, and italics for long passages, all of which reduce readability. Left-align body text rather than justifying it, which creates uneven "rivers" of space. Leave breathing room between lines and around placeholders. When remediating dense agency decks, cutting content per slide is often the real fix, since crowding forces the tiny fonts that fail low-vision users.

*Reference: WCAG 1.4.4 (AA), 1.4.8 (AAA)*

### 136. Use real bulleted and numbered lists, not manual dashes

Create lists with the Home tab's bullet and numbering buttons inside a content placeholder so PowerPoint marks them as genuine lists that screen readers announce as such, including item counts and nesting levels. Typing a hyphen, asterisk, or number at the start of each line only looks like a list; it carries no structure, so assistive tech reads a flat run of text and users lose the grouping. Use the built-in demote and promote (Tab and Shift+Tab) to nest sub-points rather than indenting with spaces. Proper lists also survive the export to tagged PDF as list structures, preserving the hierarchy for downstream readers.

*Reference: WCAG 1.3.1 (A)*

### 137. Export to a tagged, accessible PDF the right way

When you save a deck as PDF, preserve the accessibility work by using File > Save As (or Export) > PDF, then click Options and ensure "Document structure tags for accessibility" is checked; also enable "Document properties" so the title carries over. Do not print to PDF, which flattens everything and strips tags, alt text, and reading order. The tagged export turns titles, lists, tables, and reading order into a structured PDF that screen readers can navigate. After exporting, open the file in Acrobat and run its accessibility check to confirm tags, language, and title survived, then fix any reading-order issues in the tag tree.

*Reference: WCAG 1.3.1 (A); PDF/UA*

### 138. Do a real screen-reader and keyboard pass before sign-off

Automated checks miss the judgment calls, so finish remediation by experiencing the deck the way a disabled user will. Turn on a screen reader (Narrator on Windows, VoiceOver on macOS) and move through each slide, listening for whether titles announce, reading order flows logically, alt text is meaningful, and links describe their destinations. Then unplug the mouse and navigate with Tab and arrow keys to confirm nothing is unreachable or trapped. Note anything that sounds wrong, is read out of order, or repeats needlessly, and fix it at the source in the Selection Pane, placeholders, or master. This final human pass is what separates "passes the checker" from genuinely usable.

*Reference: ADA Title II; WCAG 2.1 AA*

---

## Microsoft Excel & Spreadsheets

### 139. Define data ranges as real Tables

In Excel, select your data range and use Insert > Table (or Ctrl+T) to turn it into a defined Table with a true header row; make sure "My table has headers" is checked. A real Table exposes column names to screen readers, supports keyboard navigation between cells, and lets assistive technology announce which column a value belongs to. Loose ranges of cells that only look like a table give no such structure. Give the Table a meaningful name in Table Design > Table Name (for example "InvoicesQ1" rather than "Table1") so its purpose is clear. One Table per logical dataset keeps the structure clean and predictable for everyone.

*Reference: WCAG 1.3.1 (A); ADA Title II*

### 140. Give every worksheet tab a meaningful name

Double-click each sheet tab and rename it from generic labels like "Sheet1" or "Sheet2" to something that describes its contents, such as "2026 Budget" or "Vendor Contacts." Screen reader users navigate a workbook by moving between sheets, and the tab name is often the only cue they get about what each sheet holds. Keep names short, unique, and free of redundant words, and avoid characters that assistive technology may read oddly. If a sheet is a work-in-progress or scratch space, either name it accordingly or delete it before publishing. Clear tab names also help sighted keyboard users orient themselves quickly across a multi-sheet file.

*Reference: WCAG 2.4.6 (AA); ADA Title II*

### 141. Avoid merged cells for layout

Merged cells break the row-and-column grid that screen readers rely on to announce a cell's coordinates and associate it with its headers. When you merge cells, assistive technology can lose track of which data belongs where, and keyboard navigation jumps unpredictably. Instead of merging, use Format Cells > Alignment > Horizontal > "Center Across Selection" when you only need a centered visual heading, since it keeps each cell independent in the grid. For data, restructure so each value sits in its own unmerged cell. Run the Accessibility Checker (Review > Check Accessibility) afterward, as it flags merged cells explicitly and lets you jump to each one to fix it.

*Reference: WCAG 1.3.1 (A); ADA Title II*

### 142. Don't use blank rows and columns for spacing

Empty rows and columns inserted purely for visual spacing can signal to a screen reader that the data region has ended, causing it to stop reading before the real content is finished. They also confuse the Table detection and sorting features. Instead of blank rows between sections, put each dataset on its own Table or its own sheet, and control visual separation with cell borders, fill, or row height rather than empty cells. If you need whitespace around a printed report, use margins and print settings, not empty grid cells. Keeping your data contiguous ensures assistive technology reads the entire range without prematurely cutting off.

*Reference: WCAG 1.3.1 (A); ADA Title II*

### 143. Add alt text to charts and objects

Right-click any chart, image, shape, SmartArt, or embedded object, choose View Alt Text (or use the Alt Text pane), and write a concise description of what it conveys. For a chart, summarize the key trend or comparison the reader is meant to take away, not a pixel-by-pixel account, and note where the underlying numbers can be found. Screen readers announce this alt text so non-sighted users get the same insight sighted users see at a glance. Mark purely decorative objects as decorative using the checkbox in the same pane so they are skipped. Never leave a chart with no alt text and no accessible data behind it.

*Reference: WCAG 1.1.1 (A); ADA Title II*

### 144. Provide the data behind every chart

A chart alone is not accessible to a screen reader, which cannot interpret its visual bars or lines. Always keep the source data on the sheet in a clearly labeled Table so users can read the actual numbers, and reference that location in the chart's alt text (for example "Data in the Monthly Sales table below"). Avoid pasting charts as static images, which strips out any connection to the numbers. When possible, add data labels directly on the chart so values are visible without hovering. This dual approach - visual chart plus accessible underlying Table - ensures both sighted and non-sighted users can extract the same information from your workbook.

*Reference: WCAG 1.1.1 (A); ADA Title II*

### 145. Convey status by more than color

Do not rely on cell fill color alone to mark status - a red cell meaning "overdue" or green meaning "paid" is invisible to colorblind and screen reader users. Add a text label, a symbol, or an icon in an adjacent cell so the meaning is carried by something other than color. Excel's Conditional Formatting includes an "Icon Sets" option that can pair shapes with color, and you can add a plain-text status column ("Overdue," "Paid," "Pending"). If you use fill colors for emphasis, treat them as redundant decoration, not the sole carrier of meaning. This keeps your workbook usable regardless of how a person perceives color.

*Reference: WCAG 1.4.1 (A); ADA Title II*

### 146. Use number formatting, not color, to flag values

Instead of coloring negative numbers red as the only cue, apply Format Cells > Number formatting that shows the meaning in the text itself - for example a format that displays negatives with parentheses or a leading minus, or a custom format that appends a label. Screen readers announce the formatted value but not the font color, so a red "500" and a black "500" sound identical. Custom number formats like `#,##0;(#,##0)` make the sign visible to everyone. For thresholds, consider a dedicated status column with words rather than shading. Reserve color for redundant visual emphasis, and let the number format itself carry any distinction that must be understood.

*Reference: WCAG 1.4.1 (A); ADA Title II*

### 147. Write meaningful hyperlink text

When you insert a link with Ctrl+K, fill in the "Text to display" field with wording that describes the destination rather than pasting a raw URL or using "click here." Screen reader users often pull up a list of links out of context, so "City permit application form" is far more useful than "https://example.gov/xh27" or a bare "here." Keep the visible text concise and unique within the sheet so two different links never share identical wording. If the workbook will be printed, consider whether the full URL also needs to appear elsewhere. Descriptive link text helps every reader understand where a link goes before activating it.

*Reference: WCAG 2.4.4 (A); ADA Title II*

### 148. Set the print and reading area

Define the intended content region with Page Layout > Print Area > Set Print Area so tools and exports know where the meaningful data starts and stops. A clear print area helps when the workbook is later converted to PDF, keeping stray notes or scratch cells out of the reading order. Also set Page Layout > Print Titles to repeat header rows on each printed page, which preserves context. Removing content from far-flung cells outside the intended area prevents assistive technology and export routines from wandering into empty or irrelevant regions. A well-defined print area produces cleaner output whether the file is read on screen, printed, or exported.

*Reference: WCAG 1.3.2 (A); ADA Title II*

### 149. Avoid nested or stacked header rows

Multi-level headers - a top row spanning several columns above a second row of sub-labels - are hard for screen readers to associate correctly with data cells, because assistive technology expects a single header row per column. Wherever possible, flatten the structure so each column has one clear, self-sufficient header (for example "Q1 Revenue" and "Q2 Revenue" instead of a merged "Revenue" banner over "Q1" and "Q2"). If you truly need grouping, split the data across separate Tables or sheets rather than stacking header tiers. A single unambiguous header row per Table is what the Accessibility Checker and screen readers can reliably interpret and announce.

*Reference: WCAG 1.3.1 (A); ADA Title II*

### 150. Remove empty and hidden sheets

Before publishing, delete worksheets that contain no meaningful content. Empty sheets add navigation overhead for screen reader users, who must tab past them without knowing they are blank, and they clutter the file. Right-click each unneeded tab and choose Delete. Be equally cautious with hidden sheets that hold stale or sensitive data - unhide them (right-click a tab > Unhide) to review, then remove what is not needed. A lean workbook with only purposeful, well-named sheets is faster to navigate and less confusing. Pair this cleanup with meaningful tab names on the sheets you keep so the remaining structure is entirely clear.

*Reference: WCAG 2.4.6 (AA); ADA Title II*

### 151. Run the built-in Accessibility Checker

Open Review > Check Accessibility to scan the workbook for common problems: merged cells, missing alt text, blank Table headers, default sheet names, and hard-to-read color contrast. The results pane groups issues by severity and, when you select one, offers a "Why fix" explanation plus recommended actions and a link that jumps straight to the offending cell or object. Enable "Keep accessibility checker running while I work" so issues surface as you build the file rather than only at the end. Treat a clean checker result as a floor, not a ceiling - it catches structural issues but cannot judge whether your labels and descriptions actually make sense.

*Reference: WCAG 2.1 AA; ADA Title II*

### 152. Add a top-of-sheet title cell

Screen reader users benefit from a clear orientation cue when they land on a sheet. Place a descriptive title in cell A1 - for example "FY2026 Capital Projects - Status Report" - before the data Table begins, styled with a Cell Style so it reads as a heading. This gives immediate context about what the sheet contains and complements the tab name. Keep the title in a single cell rather than spread across merged cells. A consistent A1 title convention across all sheets in a workbook makes the whole file predictable, so users always know to check A1 first when arriving on a new sheet.

*Reference: WCAG 2.4.6 (AA); ADA Title II*

### 153. Ensure sufficient contrast in cells

Text in cells, headers, and chart labels must stand out clearly against its fill color. Low-contrast combinations - light gray text on white, or pale text on a colored fill - are hard for users with low vision to read. Aim for the standard contrast ratio of at least 4.5:1 for normal-size text; check pairings with a contrast tool, since Excel's Accessibility Checker flags some but not all low-contrast cases. Prefer dark text on light fills or vice versa, and avoid relying on subtle tonal shading to carry meaning. Good contrast helps every reader, especially on projectors, printouts, and small screens where color fidelity varies.

*Reference: WCAG 1.4.3 (AA); ADA Title II*

### 154. Set a single language for the workbook

Under File > Options > Language, confirm the editing language matches the language your content is actually written in so screen readers pronounce words correctly. A workbook flagged as one language but containing text in another causes assistive technology to apply the wrong pronunciation rules, making numbers, dates, and labels sound garbled. If a sheet mixes languages, keep the primary one set correctly and be aware that cell-level language tagging is limited in Excel compared with Word. Setting the right default language is a quick step that improves the spoken output of your data for anyone using a screen reader.

*Reference: WCAG 3.1.1 (A); ADA Title II*

### 155. Name cells and ranges meaningfully

Use the Name Box or Formulas > Define Name to give important cells and ranges descriptive names such as "TotalDue" or "ContactEmail" instead of leaving them as raw coordinates. Named ranges make formulas easier to understand and give assistive technology and downstream tools a human-readable handle for key values. This is especially helpful in workbooks others will reuse or audit. Keep names concise, without spaces, and clearly tied to their purpose. While named ranges are primarily a usability and maintainability aid, they also reduce the chance of errors that make a workbook confusing - which supports overall comprehension for people using screen readers to trace where a number comes from.

*Reference: WCAG 1.3.1 (A); ADA Title II*

### 156. Understand the limits of exporting to PDF

Exporting an Excel workbook with File > Save As or Export > Create PDF/XPS does not reliably produce a fully accessible, tagged PDF. Spreadsheet-to-PDF conversion often loses Table header associations, may not tag content in a logical reading order, and can drop chart alt text. If you must deliver a PDF, choose "Best for electronic distribution and accessibility," then open the result in a PDF tool and verify and repair the tag structure and reading order before publishing. Where possible, offer the native .xlsx file itself, which preserves the accessible structure you built. Never assume the exported PDF is compliant just because the source workbook passed Excel's checker.

*Reference: PDF/UA (ISO 14289-1); WCAG 1.3.1 (A)*

### 157. Keep one dataset per sheet

Avoid packing several unrelated Tables side by side or stacked on a single worksheet. Multiple datasets on one sheet confuse screen reader navigation and Excel's own Table detection, because there is no clean boundary between one region's headers and the next. Give each distinct dataset its own sheet with a meaningful tab name, or at minimum its own clearly separated named Table. This keeps header-to-data relationships unambiguous and lets users move logically from one topic to another via the sheet tabs. A one-dataset-per-sheet habit also makes sorting, filtering, and later export far more predictable and less error-prone.

*Reference: WCAG 1.3.1 (A); ADA Title II*

### 158. Add descriptive comments sparingly and accessibly

If you use cell notes or threaded comments (Review > New Comment) to explain data, keep them concise and remember that not all export paths carry them into an accessible output. Comments can supply helpful context - such as how a figure was calculated - but they should never be the only place critical information lives, since a screen reader user may not discover them or they may be lost on conversion to PDF. Put anything essential in a visible cell, a header, or a documentation sheet instead. Reserve comments for supplementary notes, and review them before publishing so stale or internal remarks are not shipped to the public.

*Reference: WCAG 1.3.1 (A); ADA Title II*

### 159. Format dates and numbers consistently

Apply consistent Format Cells number and date formats across a column so screen readers announce values predictably and users can compare them easily. Mixing text-entered dates with real date values, or storing numbers as text, causes assistive technology and formulas to behave inconsistently and can hide meaning. Use real numeric and date types with a clear display format rather than typing symbols manually, and avoid embedding units inside text strings when a number format can show them. Consistent formatting also prevents sorting errors that would otherwise scramble the logical order a screen reader reads. Predictable, properly typed values make a workbook easier to understand for everyone.

*Reference: WCAG 1.3.1 (A); ADA Title II*

### 160. Document the workbook's structure

For complex workbooks, add a brief "Read Me" or index sheet as the first tab that lists each sheet, its purpose, and any conventions used (such as what a status column's values mean). This gives screen reader users a roadmap before they dive into the data, much like a table of contents. Keep it in plain cells with descriptive text and, if helpful, meaningful hyperlinks to each sheet using Ctrl+K to link within the workbook. An index sheet is especially valuable for public records and reports that recipients did not build themselves. It turns a sprawling file into something navigable and self-explanatory for all users.

*Reference: WCAG 2.4.6 (AA); ADA Title II*

---

## Google Workspace (Docs, Slides, Sheets)

### 161. Use real heading styles in Google Docs, not big bold text

In Google Docs, apply structure with the paragraph-style menu on the toolbar (the box that reads "Normal text") or with Format > Paragraph styles > Heading 1/2/3. Never fake a heading by selecting text and just enlarging it or bolding it; screen readers see manually styled text as an ordinary paragraph and lose the ability to jump between sections. Keyboard shortcuts speed this up: Ctrl+Alt+1 for Heading 1, Ctrl+Alt+2 for Heading 2, and so on (Cmd on Mac). Use one Heading 1 as the document title, then nest Heading 2 and Heading 3 without skipping levels so the outline reflects the true hierarchy.

*Reference: WCAG 1.3.1 (A), 2.4.6 (AA)*

### 162. Turn on the document outline to verify heading structure

Open View > Show outline (or press Ctrl+Alt+A then Ctrl+Alt+H) to reveal the outline pane on the left of a Google Doc. This pane is built entirely from your Heading 1/2/3 styles, so it doubles as a fast accessibility check: if a section you expect is missing, that text is not tagged as a heading; if the nesting looks wrong, your levels are out of order. Click any outline entry to jump there. Reviewing the outline before you export to PDF or Word is the quickest way to confirm the heading tree a screen-reader user will navigate is complete and correctly ordered.

*Reference: WCAG 2.4.10 (AAA), 1.3.1 (A)*

### 163. Add alt text to images in Google Docs

Select an image in Google Docs, right-click and choose Alt text (or press Ctrl+Alt+Y), then type a concise description in the Description field. Describe the image's purpose in context rather than listing every visual detail, and skip phrases like "image of" since assistive tech already announces the graphic. For a chart or diagram that conveys data, summarize the key takeaway and, if the full data matters, provide it in nearby text or a table. Leave the Title field alone in most cases; the Description is what screen readers announce. Purely decorative images are hard to mark as such in Docs, so avoid them or move them into a caption context.

*Reference: WCAG 1.1.1 (A)*

### 164. Build accessible tables in Google Docs with a real header row

Insert tables through Insert > Table in Google Docs and reserve the first row for column headers. Right-click the table, open Table properties, and under Row check "Pin header row to top of each page" so the header repeats across page breaks. Keep the layout simple: avoid merged or split cells, nested tables, and blank rows used only for spacing, because these confuse the reading order screen readers follow cell by cell. Never use a table just to position text side by side; use columns or a proper layout instead. Google Docs support for programmatic header association is limited, so verify tagging after export with a checker like Grackle or Acrobat.

*Reference: WCAG 1.3.1 (A)*

### 165. Use the built-in list tools instead of typing dashes

Create bulleted and numbered lists in Google Docs with the toolbar list buttons or Format > Bullets & numbering, not by typing hyphens, asterisks, or "1." manually. Real lists are announced by screen readers as "list of N items," giving users count and position; hand-typed markers are just characters and carry no structure. Use Tab and Shift+Tab within a list to create and promote nested sublevels so the hierarchy is programmatic. When you export to Word or PDF, only genuine list structures tag correctly, so converting a fake list into a real one before export prevents a whole class of remediation later.

*Reference: WCAG 1.3.1 (A)*

### 166. Write meaningful link text with the Google Docs link chooser

Select the words you want to be the link, press Ctrl+K (Cmd+K on Mac) to open the link chooser, and make the visible text describe the destination, such as "download the accessibility policy," never "click here" or a bare URL. Screen-reader users often pull up a list of all links out of context, so each label must stand on its own. The link chooser also searches your Drive and suggests titles, which helps you name links clearly. Avoid pasting long raw URLs as link text, since a screen reader will read every character aloud. One clear phrase per link keeps the link list navigable.

*Reference: WCAG 2.4.4 (A), 2.4.9 (AAA)*

### 167. Give every Google Slide a unique, filled-in title

Every slide needs a title that appears in a title placeholder, because that title is what a screen-reader user hears first and uses to navigate the deck. Start from a layout that includes a title placeholder (Slide > Apply layout, or the Layout button), then type into it rather than dropping in a floating text box. If a slide's design hides the title visually, you can move the title placeholder off the visible canvas so it stays in the accessibility tree without showing. Make each title distinct so users can tell slides apart. Skipping the placeholder and using a plain text box means the slide has no programmatic title at all.

*Reference: WCAG 2.4.6 (AA), 1.3.1 (A)*

### 168. Set reading order on a Google Slide by arranging objects

Google Slides derives reading order largely from the order in which objects were added and their arrangement, not from visual position, so a screen reader may read a slide in a confusing sequence. To control it, select an object and use Arrange > Order (Bring to front / Send to back) and check that placeholders come before decorative shapes. Because Slides gives you less direct reading-order control than PowerPoint, keep slides simple with few overlapping objects, and verify the spoken order with a screen reader or after export. When precise order is critical, an add-on like Grackle Slides exposes and lets you fix the reading sequence before you publish.

*Reference: WCAG 1.3.2 (A)*

### 169. Add alt text to images and shapes in Google Slides

In Google Slides, select an image, shape, or grouped object, right-click and choose Alt text (or press Ctrl+Alt+Y), and describe what it conveys on that slide. For a decorative divider or background flourish that adds no meaning, you can enter a single space or minimal text to keep it from distracting, though Slides lacks a true "decorative" flag. Group related shapes first (right-click > Group), then add one combined description instead of many fragmentary ones. Charts and infographics need a text alternative that states the point they make, with the underlying numbers provided in the speaker notes or an accompanying document so no information is image-only.

*Reference: WCAG 1.1.1 (A)*

### 170. Name Sheets tabs meaningfully and give data a header row

In Google Sheets, rename each tab by double-clicking it and typing a descriptive name like "Q3 Budget" instead of "Sheet1," because tab names help screen-reader users understand which grid they are in. Put a clear header row across the top of your data and freeze it with View > Freeze > 1 row so headers stay associated as users scroll. Keep one table per sheet, start data in cell A1, and avoid blank rows or columns splitting a range, since gaps make assistive tech treat one table as several. Do not merge cells for layout; merged cells break the predictable row-and-column model screen readers rely on to announce coordinates.

*Reference: WCAG 1.3.1 (A)*

### 171. Avoid conveying meaning in Sheets by color alone

In Google Sheets, do not rely only on cell fill color or conditional-formatting color to communicate status, because color is invisible to many users and to screen readers. Pair every color cue with a text label, symbol, or a dedicated status column: add "Overdue" text next to a red cell, or a checkmark character alongside a green one. When you build charts, use distinct patterns, labels, or markers in addition to hue so lines and bars are distinguishable without color. Check contrast between cell text and fill, aiming for at least 4.5:1 for normal text, so low-vision users can read the values you have highlighted.

*Reference: WCAG 1.4.1 (A), 1.4.3 (AA)*

### 172. Prefer exporting to Word (.docx) over PDF when tagging matters

Google Docs' native PDF export (File > Download > PDF document) produces weak or incomplete tagging: headings, lists, and table headers often do not survive as a proper structure tree. If your deliverable must be an accessible PDF, a more reliable path is File > Download > Microsoft Word (.docx), then open it in Word and export a tagged PDF from there, or use a dedicated add-on. Whatever route you take, always run the result through an accessibility checker such as Acrobat's or Grackle's, because Google's export is the point where structure most commonly gets lost. Never assume a Google-generated PDF is tagged just because the source Doc looked correct.

*Reference: PDF/UA (ISO 14289); WCAG 1.3.1 (A)*

### 173. Use Grackle add-ons to check and export Google files

Grackle Docs, Slides, and Sheets are third-party Google Workspace add-ons (install via Extensions > Add-ons > Get add-ons) that audit a file against WCAG-style rules and, importantly, export a properly tagged PDF that preserves headings, lists, tables, alt text, and reading order that Google's own PDF export tends to drop. Run the Grackle panel to get a checklist of issues, fix each in the source document, then use Grackle's Export to tagged PDF rather than File > Download. For public-entity clients this closes the biggest remediation gap in the Google ecosystem. Confirm the client has appropriate licensing, and still spot-check the output in Acrobat before publishing.

*Reference: PDF/UA (ISO 14289); WCAG 2.1 AA*

### 174. Check color contrast for text in Docs and Slides

Google Docs and Slides let you set text and highlight colors freely, so verify contrast rather than trusting the palette. Aim for at least 4.5:1 between text and its background for normal text and 3:1 for large text (roughly 18pt, or 14pt bold). Watch out for light gray body text, colored text on colored fills, and text placed over photos in Slides, where the effective background varies. Because neither app has a built-in contrast meter, sample the foreground and background hex values (via the custom color picker) and test them in an external contrast checker, or let a Grackle audit flag failing combinations for you before you publish or export.

*Reference: WCAG 1.4.3 (AA)*

### 175. Keep sharing permissions open enough for assistive tech

When you share a Google Doc, Slide, or Sheet, or its exported file, make sure the link and permission settings do not block assistive-technology users. Use the Share dialog to grant at least Viewer access to the intended audience, and prefer "Anyone with the link" for broadly public content so a screen-reader user is not stopped by a sign-in wall. Avoid "Disable options to download, print, and copy" for viewers, because that setting can prevent screen readers and braille tools from extracting the text they need. For a truly public government document, publishing to the web (File > Share > Publish to web) or attaching an accessible PDF gives the most reliable access.

*Reference: ADA Title II; WCAG 2.1 AA*

### 176. Point users to Google's built-in screen-reader and braille support

Google Docs, Slides, and Sheets have a dedicated screen-reader mode you enable under Tools > Accessibility > "Turn on screen reader support," which improves announcements for users of ChromeVox, NVDA, JAWS, or VoiceOver and unlocks braille support. Once on, an Accessibility menu appears in the menu bar with navigation and verbalization commands. When you author or remediate for a public entity, note this setting in your documentation so end users know to enable it, and test your own file with it turned on plus an actual screen reader. Braille display users especially benefit, since braille output depends on the same accessibility mode being active.

*Reference: WCAG 4.1.2 (A)*

### 177. Use captions and describe media embedded in Slides

If you embed a YouTube video or insert a video (Insert > Video) in Google Slides, ensure the video itself carries accurate captions and, where needed, audio description, because Slides does not add these for you. For audio content, provide a transcript on the slide or in the speaker notes. Do not rely on YouTube's auto-captions for a public deliverable; review and correct them so they meet the accuracy a Title II entity needs. Give the video object alt text that names what it is, and make sure playback controls are reachable. Any information delivered only through the video must also exist as text somewhere in the presentation.

*Reference: WCAG 1.2.2 (A), 1.2.5 (AA)*

### 178. Add a language and clear title in Google Docs before export

Set your document's title in File properties or simply as the first Heading 1, and make sure the file name in Drive is descriptive, because that name often becomes the PDF's title and appears in a screen reader's title announcement. Google Docs does not expose a document-language setting in the UI, but the file inherits your account and content language, which flows into the export; for mixed-language passages, this is a known gap, so plan to set language attributes in Word or the exported PDF afterward. A meaningful title and correct primary language help assistive tech pronounce content and let users identify the file among many open documents.

*Reference: WCAG 3.1.1 (A), 2.4.2 (A)*

### 179. Verify structure after export instead of trusting the source

A Google Doc that looks perfectly structured on screen can still export to a poorly tagged PDF, so always treat export as a checkpoint, not a finish line. After File > Download > PDF, open the file in Acrobat Pro and run the Accessibility Check, or inspect the tag tree, to confirm headings, lists, table headers, alt text, and reading order actually carried over. Expect to fix reading order and table tagging most often, since these degrade the most in Google's export. For repeatable client work, standardize on a tagged export path (such as Grackle or a Word round-trip) and keep a short post-export checklist so nothing structural is silently lost.

*Reference: PDF/UA (ISO 14289); WCAG 1.3.1 (A)*

### 180. Handle math and complex content that Google can't tag

Google Docs' equation tool (Insert > Equation) renders math as an image-like object without accessible MathML, so a screen reader cannot read the expression. For any client document with formulas, add a plain-language text description of each equation nearby, or author the math in a tool that produces MathML and bring it in as tagged content during a Word or PDF step. The same caution applies to complex flowcharts, org charts, and SmartArt-style graphics pasted into Docs or Slides: provide a full text equivalent, because Google will not generate one. Identifying these untaggable elements early in remediation prevents discovering unreadable content only after the file is published.

*Reference: WCAG 1.1.1 (A)*

---

## EPUB & E-Books

### 181. Choose reflowable over fixed-layout when you can

For most text-heavy government e-books, publish reflowable EPUB rather than fixed-layout. Reflowable content lets the reading system resize text, change fonts, adjust line spacing, and reflow to any screen, which is essential for low-vision and dyslexic readers. Fixed-layout (set via `rendition:layout` = `pre-paginated` in the OPF) locks each page to exact coordinates, defeating text resizing and often trapping content in images. Reserve fixed-layout only for genuinely visual material like children's picture books or complex forms. If you inherit a fixed-layout file, the remediation goal is usually to rebuild it as reflowable with real text and semantic structure rather than patch the pinned pages.

*Reference: EPUB Accessibility 1.1; WCAG 1.4.4 (AA)*

### 182. Run ACE by DAISY early and often

Install ACE by DAISY, the free open-source EPUB accessibility checker, and run it before and after every remediation pass: `ace -o report_folder book.epub`. It generates an HTML report plus a JSON summary flagging missing alt text, absent accessibility metadata, heading-order problems, and missing page-list navigation. Treat ACE as a floor, not a ceiling: it catches machine-detectable issues but cannot judge whether alt text is meaningful or whether reading order makes sense. Use its outline and image tables to triage, then verify the rest manually in a real reading system. Save the report with the deliverable so the client has an audit trail of what was checked.

*Reference: EPUB Accessibility 1.1; ACE by DAISY*

### 183. Set the spine to match true reading order

The `<spine>` in the OPF (content.opf) defines the default linear reading order of your EPUB. Assistive technology follows the spine, so its sequence must match the logical order a person would read: front matter, chapters in order, then back matter. Every content document a reader should encounter linearly needs a `<itemref idref="...">` in the spine. Use `linear="no"` only for genuinely non-linear content like pop-up footnotes or answer keys that shouldn't appear in the main flow. Don't rely on file names or folder order; the spine is authoritative. After reordering, re-open in a reading system and page straight through to confirm nothing is skipped or out of sequence.

*Reference: EPUB 3.3 spine; WCAG 1.3.2 (A)*

### 184. Build a real page-list for print-page navigation

If your e-book has a corresponding print edition or official pagination, add a page-list so readers can jump to a cited page. In the EPUB 3 navigation document (nav.xhtml), include `<nav epub:type="page-list">` containing an ordered list of links to each page location. This lets a court clerk or student navigate to "page 47" the same way a sighted reader flips there. Pair it with the `dc:source` and `schema:accessibilityFeature` value `printPageNumbers` in metadata. Without a page-list, page-based citations are unusable in the digital version, which matters heavily for legal, legislative, and academic documents that are referenced by page.

*Reference: EPUB Accessibility 1.1; WCAG 2.4.1 (A)*

### 185. Anchor each page break with a pagebreak marker

The page-list only works if the body content has matching targets. At each print-page boundary, insert an inline element carrying `epub:type="pagebreak"`, for example `<span epub:type="pagebreak" id="page47" role="doc-pagebreak" aria-label="47"></span>`. The `aria-label` (or the element's text) supplies the spoken page number, and the `id` is what the page-list links to. Place the marker exactly where the print page turns, not at paragraph starts approximated later. Adding the ARIA `doc-pagebreak` role improves support in reading systems that map to ARIA. Consistent, correctly numbered pagebreak markers are what make "go to page N" actually land in the right spot for screen-reader users.

*Reference: EPUB Accessibility 1.1; WCAG 2.4.1 (A)*

### 186. Populate the accessibility metadata block

Reading systems and library catalogs surface an e-book's accessibility from its metadata, so fill it in. In the OPF, add schema.org properties via `<meta property="schema:accessibilityFeature">` values such as `alternativeText`, `structuralNavigation`, `readingOrder`, `tableOfContents`, and `printPageNumbers`; declare `schema:accessMode` (`textual`, `visual`); and provide `schema:accessibilityHazard` (often `none`). Also include a plain-language `schema:accessibilitySummary` describing what the book supports. This metadata powers "accessible" filters in platforms like OverDrive and drives procurement decisions for libraries. Empty or default metadata makes a genuinely accessible book look unusable, so update it to reflect the remediation you actually performed.

*Reference: EPUB Accessibility 1.1; schema.org a11y metadata*

### 187. Use accessModeSufficient to declare a text-only path

Beyond listing individual features, `schema:accessModeSufficient` tells readers whether the book can be consumed through a single sense. A value of `textual` means everything essential is available as text, so a screen-reader or braille user can read the whole book without needing vision. If some content is only conveyed visually (an un-described chart, an image of text), you cannot honestly claim `textual` sufficiency until it's remediated. Use this property to drive your work: aim to make `textual` a truthful claim by describing images, converting images-of-text to real text, and adding table structure. It's both a metadata field and a checklist for completeness.

*Reference: EPUB Accessibility 1.1; schema.org accessModeSufficient*

### 188. Provide alt text for every meaningful image

Every informative image in an EPUB content document needs an `alt` attribute that conveys its purpose in context, for example `<img src="seal.png" alt="Official seal of the county clerk's office" />`. Keep it concise and describe function, not pixels. For purely decorative images (rules, flourishes), use empty `alt=""` so screen readers skip them. When an image needs a long explanation, such as a data chart, put a short `alt` plus a nearby text description or a `<figure>`/`<figcaption>` pairing, or link to an extended description with `aria-details`. Images of text should be avoided entirely; convert them to real, styled text so they reflow and resize.

*Reference: EPUB Accessibility 1.1; WCAG 1.1.1 (A)*

### 189. Keep a correct heading hierarchy in every document

Each XHTML content file should use `<h1>`–`<h6>` in a logical, unbroken order that mirrors the document's structure: don't jump from `<h2>` to `<h4>`, and don't pick a heading level just to get a font size. Style with CSS instead. Screen-reader users navigate by heading, so a clean hierarchy is their table of contents within a chapter. For a multi-file book, a common pattern is one `<h1>` per chapter file with nested subheadings below. Never fake headings with bold paragraphs, and never use headings purely for visual emphasis. Verify the outline in ACE's report or a reading system's navigation view.

*Reference: EPUB Accessibility 1.1; WCAG 1.3.1 (A), 2.4.6 (AA)*

### 190. Apply EPUB structural semantics with epub:type

EPUB's structural semantics vocabulary lets you label the role of content beyond generic HTML. Add `epub:type` to elements to mark parts like `cover`, `titlepage`, `toc`, `chapter`, `part`, `footnote`, `noteref`, `bibliography`, `glossary`, and `index`. For example `<section epub:type="chapter">` or `<a epub:type="noteref" href="#fn1">`. These hints help reading systems offer smarter navigation and let footnotes pop up inline rather than yanking readers away. Pair `epub:type` with matching ARIA `role` values (such as `role="doc-footnote"`) for broader assistive-technology support. Applied consistently, structural semantics turn a flat text dump into a navigable, well-understood document.

*Reference: EPUB Accessibility 1.1; EPUB Structural Semantics Vocabulary*

### 191. Define landmarks in the navigation document

The nav.xhtml should include a `<nav epub:type="landmarks">` list pointing to the key entry points of the book: the start of the body content (`bodymatter`), the table of contents (`toc`), and any cover or index. Each landmark link carries an `epub:type` describing what it targets, for example `<a epub:type="bodymatter" href="chapter1.xhtml">Start of Content</a>`. Landmarks give assistive-technology users a quick "jump to" menu so they can skip front matter and land where reading begins. This is distinct from the table-of-contents `nav` and the page-list `nav`; a well-formed EPUB typically has all three navs in the single nav document.

*Reference: EPUB Accessibility 1.1; WCAG 2.4.1 (A)*

### 192. Mark up tables with real header semantics

Data tables in an EPUB must use genuine HTML table markup, not text laid out with tabs or a fixed-layout image. Use `<table>` with `<thead>`/`<tbody>`, `<th>` for header cells, and `scope="col"` or `scope="row"` so screen readers can announce which row and column a cell belongs to. For complex tables, associate cells with headers using `headers` and `id`. Add a `<caption>` describing the table's purpose. Never use tables purely for visual layout. Test by navigating cell-by-cell in a reading system and confirming the correct headers are read aloud, especially for budget, schedule, and statute tables common in government publications.

*Reference: EPUB Accessibility 1.1; WCAG 1.3.1 (A)*

### 193. Use native list markup for lists

Any content that is conceptually a list, such as agenda items, statutory subsections, or steps, should use `<ul>`, `<ol>`, or `<dl>` rather than paragraphs with manual bullets or numbers. Native list elements let screen readers announce list boundaries and item counts ("list of 5 items") and let readers navigate item by item. Use `<ol>` where sequence matters and set `start` or `type` for legal numbering schemes. For definition-style content like glossaries, `<dl>` with `<dt>`/`<dd>` pairs the term with its definition. Avoid faking nesting with indentation alone; nest child lists inside the parent `<li>` so the hierarchy is programmatically clear.

*Reference: EPUB Accessibility 1.1; WCAG 1.3.1 (A)*

### 194. Encode equations as MathML, not images

Represent mathematics with MathML embedded directly in the XHTML rather than as pictures of equations. MathML gives assistive technology and reading systems a semantic, navigable representation that can be spoken, brailled, or magnified without losing meaning, and it reflows with the text. If your source has equation images, convert them (tools like MathType or automated OCR-to-MathML) and validate the markup. When you must keep an image fallback for older reading systems, wrap it so the MathML is primary and provide meaningful alt text as a backstop. Accessible math matters for court statistics, public-health data, and educational materials produced by HHS-funded institutions.

*Reference: EPUB Accessibility 1.1; WCAG 1.1.1 (A)*

### 195. Sync narration with media overlays

For read-aloud e-books, EPUB media overlays synchronize pre-recorded audio with the text so words highlight as they're spoken, benefiting many print-disabled and emerging readers. Media overlays use SMIL files that map audio clip time ranges to the `id` of each text fragment, and the OPF references each overlay via the `media-overlay` attribute on the content item. Ensure every narrated passage has a matching text `id` so highlighting tracks correctly, and declare the `media:duration` metadata. This is a distinct feature from a screen reader's synthetic speech: media overlays ship human or curated narration inside the book. Test the sync in a supporting reading system before delivery.

*Reference: EPUB Accessibility 1.1; EPUB Media Overlays 3*

### 196. Provide a navigable table of contents

Every EPUB 3 needs a table of contents in the nav document: `<nav epub:type="toc">` containing nested `<ol>` links to each section, in reading order. This is the primary structural navigation readers use to move around the book, so it must reflect real headings and be complete to the depth that helps, typically chapters and major subsections. Keep link text meaningful, matching the heading it targets. For backward compatibility with EPUB 2 reading systems you may also include an NCX (toc.ncx), but the XHTML nav is authoritative in EPUB 3. Declare `structuralNavigation` in the accessibility metadata once a genuine ToC is in place.

*Reference: EPUB Accessibility 1.1; WCAG 2.4.1 (A)*

### 197. Embed fonts without breaking text integrity

When embedding fonts for consistent appearance, make sure the underlying text stays real, selectable, and mapped to correct Unicode, not converted to outlines or images. Reference embedded fonts through `@font-face` in your CSS and list each font file in the OPF manifest. Watch for fonts that use custom or private-use encodings, which can make copied or screen-read text come out as gibberish; verify by selecting a passage and reading it with a screen reader or copying it into a plain-text editor. Never rely on an icon font to convey meaning without a text equivalent. Keep font files licensed for embedding and reasonably sized so the book stays performant.

*Reference: EPUB Accessibility 1.1; WCAG 1.4.5 (AA)*

### 198. Declare language so speech is pronounced correctly

Set the primary language of the publication in the OPF with `<dc:language>en</dc:language>` and on the root of each XHTML file with `xml:lang` and `lang` (for example `<html xml:lang="en" lang="en">`). This tells screen readers and text-to-speech engines which pronunciation rules and voice to use. When a passage switches languages, such as a Spanish quotation or a legal term in Latin, wrap it with an inline `lang`/`xml:lang` attribute so it's spoken correctly rather than mangled in the base language. Correct language tagging is easy to overlook but directly affects how understandable the audio rendering is, which matters for multilingual constituents served by government publications.

*Reference: EPUB Accessibility 1.1; WCAG 3.1.1 (A), 3.1.2 (AA)*

---

## Websites & Web Content (WCAG 2.1 AA)

### 199. Title II covers your whole public website

For a US state or local government, ADA Title II reaches every web page and web application the public can use - permit portals, agendas, payment systems, job listings, and news pages alike. It is not limited to a few "important" pages. When you scope a remediation project, inventory the full site plus any subdomains and third-party portals linked from it, then set WCAG 2.1 Level AA as the conformance target the Department of Justice's 2024 rule points to. Prioritize high-traffic and transactional flows first, but plan to reach every template and content type. Treat "we fixed the homepage" as a start, not compliance, and document remaining pages with a dated remediation schedule.

*Reference: ADA Title II; WCAG 2.1 AA*

### 200. Build pages on semantic HTML landmarks

Give each page one `<header>`, one `<main>`, one `<nav>`, and a `<footer>` so assistive technology can identify and jump between regions. Screen reader users pull up a landmarks list to navigate; without regions they must read linearly. Use native elements rather than `<div role="banner">` wrappers - the element carries the role for free. If you have multiple navigations (primary menu, breadcrumb, utility links), distinguish them with `aria-label`, for example `<nav aria-label="Main">` and `<nav aria-label="Breadcrumb">`. Ensure all visible content sits inside a landmark; orphaned text outside any region is easy to miss. Test in VoiceOver's rotor or NVDA's element list to confirm the structure reads sensibly.

*Reference: WCAG 1.3.1 (A); ARIA landmarks*

### 201. Keep a single logical heading outline

Every page needs exactly one `<h1>` naming the page's main topic, followed by `<h2>` through `<h6>` in a nested outline with no skipped levels - don't jump from `<h2>` to `<h4>`. Headings are how screen reader users skim; NVDA's H key and VoiceOver's rotor move heading to heading. Never pick a heading tag for its visual size - style with CSS instead, and never bold a paragraph to fake a heading. On government sites, section titles like "Apply for a Permit" or "Council Agenda" should be real headings so the structure matches what sighted users see. Run a quick outline check with the browser's accessibility tree or a headings-map extension.

*Reference: WCAG 1.3.1 (A), 2.4.6 (AA)*

### 202. Write alt text that conveys purpose

Every meaningful `<img>` needs an `alt` attribute describing its purpose in context, not a literal pixel description. A city seal linking home might be `alt="City of Springfield home"`; a chart needs its data point summarized nearby or in a caption. Decorative images - dividers, background flourishes - take an empty `alt=""` so screen readers skip them; never omit the attribute entirely, which makes some readers announce the file name. Avoid "image of" or "photo of" - the reader already says "graphic." For text embedded in an image (a flyer of a public meeting), put every word of that text in the alt or, better, replace the image with real HTML text. Keep alt concise, roughly a sentence.

*Reference: WCAG 1.1.1 (A)*

### 203. Label every form field programmatically

Each input needs a programmatic label, not just visually adjacent text. Use `<label for="email">Email</label>` matched to `<input id="email">`, or wrap the input inside the `<label>`. Placeholder text is not a label - it vanishes on typing and often fails contrast. For fields with no visible label, such as a search box with only an icon, supply `aria-label="Search"`. Group related controls like a set of radio buttons inside `<fieldset>` with a `<legend>`. On public forms - benefits applications, records requests - a missing label leaves screen reader users hearing only "edit text," unsure what to type. Verify by clicking each visible label and confirming focus jumps to its field.

*Reference: WCAG 1.3.1 (A), 3.3.2 (A)*

### 204. Make everything operable by keyboard

Every interactive element must work with the keyboard alone: Tab to reach it, Enter or Space to activate, arrow keys inside composite widgets like menus and tab panels. Unplug your mouse and try to complete a permit application or pay a bill start to finish. Native `<a>`, `<button>`, `<input>`, and `<select>` are keyboard-operable by default - problems usually come from clickable `<div>` and `<span>` handlers that never receive focus. If you must make a custom control, add `tabindex="0"` and wire key handlers. Watch for keyboard traps where focus enters a widget or modal and cannot Tab out. Keyboard access underpins switch users, voice control, and many screen reader users.

*Reference: WCAG 2.1.1 (A), 2.1.2 (A)*

### 205. Show a visible focus indicator

As focus moves with the Tab key, users must see which element is active. Browsers draw a default outline; if your CSS reset includes `outline: none` or `*:focus { outline: 0 }`, you have removed a required indicator. Restore a strong, high-contrast style - for example `:focus-visible { outline: 3px solid #005fcc; outline-offset: 2px; }` - so it stands out against every background. `:focus-visible` shows the ring for keyboard users without adding it on mouse clicks. Check links, buttons, form fields, and custom widgets alike. On a government site, a keyboard user filling out a long form must always know where they are, or they will lose their place and abandon the task.

*Reference: WCAG 2.4.7 (AA)*

### 206. Keep focus order logical

When someone Tabs through a page, focus should move in an order that matches the visual reading sequence and preserves meaning - generally left to right, top to bottom. Problems arise when CSS like flexbox `order` or absolute positioning rearranges elements visually while the DOM order stays different; focus then jumps around unpredictably. Fix it by ordering the HTML source itself, not by patching with positive `tabindex` values, which create brittle, hard-to-maintain sequences. Avoid `tabindex` greater than zero entirely. When a modal opens, move focus into it and return focus to the trigger on close. Tab slowly through each page and confirm the highlight travels a sensible path with no surprising leaps.

*Reference: WCAG 2.4.3 (A)*

### 207. Add a skip-to-content link

Put a "Skip to main content" link as the first focusable item on every page so keyboard and screen reader users can bypass the repeated banner and navigation and land on the unique content. Target your main region: `<a href="#main" class="skip">Skip to main content</a>` paired with `<main id="main">`. Keep it visually hidden until focused, then reveal it on `:focus` so sighted keyboard users see it too - never leave it permanently invisible or it won't work. On government sites with large mega-menus, this can save dozens of Tab presses per page. Test by loading the page and pressing Tab once - the skip link should appear and, when activated, move focus into the main content.

*Reference: WCAG 2.4.1 (A)*

### 208. Meet text color contrast 4.5 to 1

Normal-size body text must have a contrast ratio of at least 4.5:1 against its background; large text (about 18pt, or 14pt bold, and up) needs 3:1. Check pairs with a tool like the TPGi Colour Contrast Analyser or the contrast readout in Chrome DevTools' color picker. Watch for common failures on government sites: light gray "helper" text, placeholder text, link colors on tinted panels, and white text over photo hero images. Text over images needs a solid overlay or scrim to guarantee the ratio everywhere. Remember contrast is about the color pairing, not font size alone. Record the hex values you approve so designers reuse compliant combinations rather than re-testing each time.

*Reference: WCAG 1.4.3 (AA)*

### 209. Meet non-text contrast for UI and graphics

Interactive component boundaries and meaningful graphical elements need at least 3:1 contrast against adjacent colors. That covers the visible edge of a text input, the outline of a button, checkbox and radio borders, focus indicators, toggle states, and icons that carry meaning like a required-field asterisk or a chart's data lines. A faint 1px gray border around a form field on a white background commonly fails. It also applies to the parts of a control that convey state - the fill of a selected toggle. On a public form, users must be able to see where a field is even before typing. Test borders and icons, not just text, with your contrast tool.

*Reference: WCAG 1.4.11 (AA)*

### 210. Support 200% text resize

Users must be able to enlarge text to 200% without losing content or breaking the layout. Test with the browser's own zoom - Ctrl/Cmd and plus - up to 200% and confirm nothing overlaps, gets clipped, or disappears behind other elements. The key technique is relative units: set font sizes in `rem` or `em` and container widths that flex, rather than fixed `px` heights that cause text to spill out of buttons and boxes. Avoid `maximum-scale=1` or `user-scalable=no` in the viewport meta tag, which blocks pinch-zoom on mobile. Older government templates with rigid table layouts are frequent offenders. Verify navigation menus, form fields, and data tables all remain usable at 200%.

*Reference: WCAG 1.4.4 (AA)*

### 211. Reflow content at 400% zoom

At 400% zoom - equivalent to a 320 CSS-pixel-wide viewport - content must reflow into a single column with no loss of information and no two-dimensional scrolling, except for things that genuinely need it like data tables, maps, and complex diagrams. Build with responsive CSS: fluid grids, media queries, and `max-width: 100%` on images and embeds. Test by setting the browser window to 1280px wide and zooming to 400%, or use responsive design mode at 320px. Watch for fixed-width sidebars, wide hero banners, and horizontally scrolling menus that force side-to-side scrolling. On government sites this makes content usable on phones and for low-vision users at high magnification. Reflow and resize are related but distinct requirements - check both.

*Reference: WCAG 1.4.10 (AA)*

### 212. Make link text describe its destination

A link's text should tell users where it goes when read on its own, because screen reader users often pull up a links list out of context. Replace "click here," "read more," and "learn more" repeated across a page with meaningful text like "Read the 2026 budget summary" or "Apply for a business license." If design constraints force generic visible text, extend it with an `aria-label` or visually hidden span that adds the specifics. Avoid multiple links with identical text pointing to different destinations. On agenda and document-heavy government pages, "PDF" repeated twenty times is useless; name each document. Never use a bare URL as link text for a long address - it reads character by character.

*Reference: WCAG 2.4.4 (A), 2.4.9 (AAA for text-only)*

### 213. Prefer native HTML over ARIA

The first rule of ARIA is: if a native HTML element gives you the semantics and behavior you need, use it instead of recreating them with ARIA. A real `<button>` is focusable, keyboard-operable, and announced as a button automatically; `<div role="button">` gives you none of that behavior and forces you to add `tabindex`, key handlers, and state management by hand. ARIA only changes how assistive technology describes an element - it adds no functionality. Reserve ARIA for genuinely custom widgets that have no native equivalent. Before reaching for a role, ask whether a `<button>`, `<a>`, `<select>`, `<details>`, or `<input>` already does the job. On government sites, favoring native elements dramatically reduces bugs.

*Reference: WCAG 4.1.2 (A); ARIA Authoring Practices*

### 214. No ARIA is better than bad ARIA

Incorrect ARIA actively harms users, so remove it when you're unsure. A wrong `role`, a stale `aria-expanded`, an `aria-hidden="true"` on something focusable, or an `aria-labelledby` pointing to a missing ID can make a screen reader announce nonsense or hide working content. Common damage: `aria-hidden="true"` on a wrapper that still contains a keyboard-focusable link, so the user tabs into an element the reader won't name. Don't sprinkle roles defensively. Every ARIA attribute you add is a promise you must keep updated in JavaScript as state changes. Audit existing markup for redundant roles like `role="button"` on a real `<button>`. When a validator flags ARIA and you can't verify it, deleting it is usually the safer fix.

*Reference: WCAG 4.1.2 (A); ARIA rules of use*

### 215. Expose name, role, and value for custom controls

Any custom widget - a toggle, dropdown, slider, tab set - must expose its name, role, and current value or state to assistive technology, and update them as things change. A custom toggle needs an accessible name (visible label or `aria-label`), a role (`role="switch"` or a real `<button>`), and a state (`aria-checked` or `aria-pressed`) that your JavaScript flips on each click. A disclosure widget needs `aria-expanded` toggling true/false as it opens and closes. Without these, a screen reader might announce "clickable" with no indication of what it is or whether it's on. Follow the ARIA Authoring Practices patterns for the specific widget, and test that state changes are actually announced, not just visually shown.

*Reference: WCAG 4.1.2 (A)*

### 216. Identify form errors in text

When a form submission fails validation, identify each error in text and describe what went wrong - don't rely on a red border alone, which color-blind and screen reader users can miss. Put a specific message next to the field ("Enter a valid 5-digit ZIP code") and associate it via `aria-describedby` so the reader announces it when focus lands. Set `aria-invalid="true"` on the failed field. Provide a summary at the top listing every error as links to the fields, so users don't hunt through a long benefits application. Move focus to that summary on submit. Generic "form has errors" without saying which field frustrates everyone; name the field and the fix.

*Reference: WCAG 3.3.1 (A)*

### 217. Suggest how to fix input errors

Beyond flagging that a field is wrong, tell the user how to correct it when you know the expected format. Instead of "Invalid date," say "Enter the date as MM/DD/YYYY." Instead of "Invalid input" on a phone field, say "Enter a 10-digit phone number, digits only." For a required field left blank, name what's needed. Where there is a limited set of valid values, suggest them. This matters on government forms where a rejected records request or license application may cost the user a trip or a deadline. Provide the suggestion in text tied to the field with `aria-describedby` so both sighted and screen reader users get it. Only skip suggestions where revealing valid values would undermine security, like a password.

*Reference: WCAG 3.3.3 (AA)*

### 218. Announce status messages with live regions

When something changes without a page reload - "3 results found," "Item added to cart," "Form saved," a spinner finishing - screen reader users need it announced without moving their focus. Use an ARIA live region: a container with `role="status"` (polite) for routine updates or `role="alert"` (assertive) for urgent ones, and write the message text into it via JavaScript. The element must already exist in the DOM before you update its contents, and it should stay empty until there's something to say. Use polite for search-result counts and confirmations; reserve assertive for errors that need immediate attention. Test with a screen reader running - visually seeing the message is not enough to know it was announced.

*Reference: WCAG 4.1.3 (AA)*

### 219. Don't lock content to one orientation

Content must not be restricted to a single display orientation such as portrait-only or landscape-only, unless a specific orientation is essential. A person with a device mounted to a wheelchair may not be able to rotate their phone, so a public-facing site that forces landscape locks them out. Avoid CSS like `@media screen and (orientation: portrait) { body { display: none } }` or scripts that block rotation, and don't rely on orientation-locking meta directives. Design layouts to reflow in both orientations. On government mobile sites - transit schedules, alerts, payment portals - both orientations should work. Genuine exceptions are rare, like a piano app or a check-deposit camera view; a typical informational page never qualifies.

*Reference: WCAG 1.3.4 (AA)*

### 220. Set input purpose with autocomplete

For fields that collect the user's own information - name, email, address, phone - add the HTML `autocomplete` attribute with the correct token, like `autocomplete="email"`, `autocomplete="given-name"`, `autocomplete="postal-code"`. This lets browsers and assistive tech autofill reliably and lets some tools present familiar icons or purposes, easing long forms for people with cognitive or motor disabilities. It also cuts errors and speeds completion on government applications with many personal-data fields. Use the standardized token names from the HTML spec; a wrong token can misfile data. This complements, not replaces, a proper visible label and `<label>` association. Only tag fields asking for the user's own information - a field for someone else's data or a search box doesn't take these purpose tokens.

*Reference: WCAG 1.3.5 (AA)*

### 221. Give touch targets adequate size and spacing

Make interactive targets big enough and spaced enough to tap without hitting the wrong one - aim for at least 24 by 24 CSS pixels (the 2.1 minimum) and ideally 44 by 44 for comfort, or add margin so smaller controls aren't crowded. Tightly packed icon buttons, closely stacked menu links, and tiny "x" close controls are common failures on government mobile sites. If a target must be small, ensure surrounding spacing keeps its 24px tap zone clear of neighbors. This helps people with tremors, limited dexterity, or large fingers avoid mis-taps on a transit-fare or bill-pay screen. Also support simple pointer input: don't require complex path-based gestures without a single-tap alternative.

*Reference: WCAG 2.5.5 (AAA), 2.5.8 (AA in 2.2)*

### 222. Let users pause, stop, or hide motion

Any content that moves, blinks, scrolls, or auto-updates for more than five seconds - a carousel, a news ticker, an animated alert banner - must give users a way to pause, stop, or hide it. Auto-advancing hero sliders on government homepages are the classic offender: they move faster than some people can read and distract users with attention or cognitive disabilities. Add a clearly labeled, keyboard-operable pause button, and pause on hover and on focus. Better yet, don't auto-advance at all - let users click to move between slides. The same applies to auto-refreshing dashboards and marquee text. If the motion stops on its own within five seconds, you're fine; anything longer needs a control.

*Reference: WCAG 2.2.2 (A)*

### 223. Respect reduced motion and limit interaction animation

Non-essential animation triggered by interaction or scrolling - parallax, big zoom transitions, content that flies in as you scroll - can cause nausea and dizziness for people with vestibular disorders, so provide a way to turn it off. The cleanest approach is honoring the OS setting with a media query: `@media (prefers-reduced-motion: reduce) { * { animation: none !important; transition: none !important; } }`, or swap dramatic movement for a simple fade. This lets users who've asked their device to minimize motion browse your permit or payment flow comfortably. Keep motion that is essential to meaning, but make decorative movement optional. Test by enabling "Reduce motion" in your OS accessibility settings and confirming the flashy effects quiet down.

*Reference: WCAG 2.3.1 (A) plus 2.3.3 (AAA)*

### 224. Caption video posted on your site

Every pre-recorded video with audio - a council meeting recording, a how-to on renewing a license, a public-service announcement - needs synchronized captions conveying speech and important sounds. Auto-generated YouTube captions are a starting draft, not compliant: correct the names, technical terms, and punctuation before publishing. Provide captions as a real track (a WebVTT file on a `<track kind="captions">` for self-hosted video, or an uploaded transcript file on your hosting platform), not burned-in text a user can't toggle. For public entities, meeting videos are core content and frequently the subject of complaints. Also confirm the player's own controls are keyboard-operable and labeled. Captions serve deaf and hard-of-hearing users and anyone watching without sound.

*Reference: WCAG 1.2.2 (A)*

### 225. Provide audio description or a transcript for video

When a video conveys visual information not present in its audio track - a chart on screen, a demonstrated form, an on-screen phone number the narrator doesn't read - sighted users get information that blind users miss. Address it with audio description: either add a described audio track, or write the narration so it speaks the on-screen details in the first place, which is often easiest to plan up front. A full text transcript that includes both spoken words and the visual content is a practical, widely useful companion, and for audio-only content a transcript is the core requirement. On government sites, post the transcript alongside the video so it's also searchable and printable. Confirm nothing meaningful lives only in the picture.

*Reference: WCAG 1.2.3 (A), 1.2.5 (AA)*

### 226. Give every page a descriptive title and lang

Set a unique, descriptive `<title>` for each page that names the page first, then the site - "Apply for a Building Permit - City of Springfield" - because it's the first thing a screen reader announces on load and it labels browser tabs and bookmarks. Avoid every page reading just "Home" or the site name alone. Also declare the page's language with `<html lang="en">` so screen readers use the correct pronunciation rules; mark inline passages in another language with `lang` on that element, for example a Spanish notice wrapped in `<span lang="es">`. Government sites serving multilingual communities especially benefit. These two small attributes are quick wins that affect every page and every assistive-tech user.

*Reference: WCAG 2.4.2 (A), 3.1.1 (A), 3.1.2 (AA)*

### 227. Mark up data tables correctly

Use real HTML tables for tabular data - budgets, meeting schedules, fee lists - and never for page layout. Give each column or row header a `<th>` with the right `scope="col"` or `scope="row"` so screen readers announce the header when reading each cell, letting users understand a number in isolation. Add a `<caption>` naming the table's subject. For complex tables with multiple header levels, associate cells using `headers` and `id`. Avoid merged cells and nested tables where you can - they confuse assistive tech. If your content is really a form or a list, use those elements instead. Test by navigating cell to cell with a screen reader's table keys and confirming each cell announces its headers.

*Reference: WCAG 1.3.1 (A)*

### 228. Remediate PDFs and documents you post, too

Title II conformance doesn't stop at HTML - the PDFs, Word files, and PowerPoint decks you post are web content and must also meet WCAG 2.1 AA. A perfectly accessible page linking to an untagged scanned PDF budget still fails the user who can't read it. Where you can, offer the information as an HTML page instead of a document, which is usually more accessible and mobile-friendly. When a PDF is necessary, tag it properly - reading order, headings, alt text, real text not a scanned image, a document title, and a language setting - using Acrobat Pro's accessibility tools. Prioritize forms and high-traffic documents. Keep a log of remediated files so re-uploads don't quietly reintroduce inaccessible versions.

*Reference: ADA Title II; WCAG 2.1 AA; PDF/UA*

### 229. You own third-party and embedded widgets

Embedded and third-party components on your public site - a payment iframe, a chat bot, an agenda-management portal, a mapping widget, a Google Translate bar - are part of your service, and Title II responsibility doesn't transfer to the vendor just because you didn't build them. Inventory every embed and test each with keyboard and screen reader. Request each vendor's current ACR or VPAT and treat gaps as procurement issues; bake WCAG 2.1 AA into contracts and renewals. Where a widget is inaccessible and can't be fixed quickly, provide an accessible alternative path - a phone number, an accessible form, an alternate page - so no one is blocked. Don't let "it's the vendor's code" become the reason a resident can't pay a bill.

*Reference: ADA Title II; WCAG 2.1 AA*

### 230. Don't convey information by color alone

Never use color as the only way to communicate meaning, because color-blind and low-vision users may not perceive the distinction. A required form field marked only by a red label, a status shown only as a green or red dot, "items in red are overdue," or a chart whose series are told apart only by hue all fail. Add a second cue: an asterisk plus the word "required," a text label or icon beside the colored dot, patterns or direct labels on chart segments, and underlines on in-text links so they're distinguishable from body text. This is common on government dashboards and fee tables. Review each place you use color and confirm the meaning survives in grayscale.

*Reference: WCAG 1.4.1 (A)*

### 231. Give links a non-color cue in body text

Links inside paragraphs must be distinguishable from surrounding text by more than color, or set the surrounding relationship so the difference itself meets 3:1 contrast against the body text plus shows another cue on hover and focus. The simplest reliable fix is to underline in-content links. A blue link in black text can be invisible to someone with color blindness, so they never realize it's clickable. Reserve removing underlines for clearly link-styled areas like a nav bar where context makes the links obvious. On dense government pages full of inline links to forms and codes, underlining is the safest default. Confirm links remain identifiable when you view the page in grayscale, and that hover and focus add a visible change.

*Reference: WCAG 1.4.1 (A)*

### 232. Avoid flashing that can trigger seizures

Nothing on the page may flash more than three times in any one-second period, or it must stay under the accepted general and red-flash thresholds, because flashing content can trigger photosensitive seizures. This rules out rapidly blinking banners, strobing animations, autoplay video with quick bright cuts, and flashing emergency-alert graphics. On a public-safety or alerts page the temptation to grab attention with flashing is real - use color, motion under three flashes per second, or a steady prominent style instead. If you host user or vendor video, screen it. Tools like the Photosensitive Epilepsy Analysis Tool (PEAT) can check questionable clips. When in doubt, slow it down or make it static; this is a health-and-safety line, not a style preference.

*Reference: WCAG 2.3.1 (A)*

### 233. Test with both keyboard and a screen reader

Automated scanners catch only a portion of issues - roughly a third by common estimates - so manual testing is essential. Do a keyboard-only pass: unplug the mouse and Tab through each page, confirming you can reach and operate everything, focus is visible, order is logical, and nothing traps you. Then run a screen reader on your real target platform: NVDA or JAWS with Firefox or Chrome on Windows, VoiceOver with Safari on Mac and iOS. Listen through a full task - apply for a permit, pay a fee - and check that labels, headings, errors, and status messages all announce correctly. Test with actual assistive tech, not just the browser's accessibility tree. Build this into every release so regressions on your public site get caught early.

*Reference: WCAG 2.1 AA; ADA Title II*

### 234. Don't rely on hover-only content

Content that appears only on mouse hover - tooltips, dropdown submenus, definitions - excludes keyboard and touch users and can be a barrier under the content-on-hover-or-focus rule. Make sure anything shown on hover also appears on keyboard focus, stays visible long enough to read, doesn't disappear the moment the pointer moves toward it, and can be dismissed with Escape without moving focus. A navigation mega-menu that only opens on hover leaves keyboard users unable to reach its links; wire it to focus and clicks too. Tooltips carrying real information (a form-field hint) should be reachable and dismissible, and ideally the information should also live in persistent text. Test menus and tooltips with the keyboard, not just the mouse.

*Reference: WCAG 1.4.13 (AA)*

### 235. Offer more than one way to find a page

Don't force visitors down a single path to reach content. WCAG's Multiple Ways criterion asks that users be able to locate any page in at least two ways, because people navigate differently - some scan a menu, others search, others follow related links. On a public-entity site, pair your main navigation with at least one of: a working site search, an HTML sitemap, an A-Z index, or clear breadcrumb and related-link trails. This matters for someone using a screen reader or magnifier who finds deep menu diving slow and error-prone; a search box or sitemap lets them jump straight to a permit form or board agenda. The exception is a page that's a step inside a process (like a checkout), which is allowed to have one path.

*Reference: WCAG 2.4.5 (AA); ADA Title II*

---

## Images, Alt Text & Complex Graphics

### 236. Decide decorative vs. meaningful before you touch the code

Before writing any alt text, ask one question: does this image convey information the surrounding text does not, or does it serve a purpose (like a link)? If yes, it is meaningful and needs a description. If it is a divider, a background flourish, or a photo that only repeats what an adjacent caption already says, it is decorative. Meaningful images get a text alternative; decorative ones get marked so screen readers skip them. Making this call first prevents both empty alt on informative images and noisy, redundant announcements on purely visual ones. Document your reasoning for borderline cases so reviewers on your government or court site stay consistent.

*Reference: WCAG 1.1.1 (A)*

### 237. Mark decorative images so assistive tech skips them

Once you decide an image is purely decorative, actively hide it rather than leaving alt undefined. In HTML, use an empty alt attribute (`alt=""`) on the `<img>` element; do not omit the attribute entirely, or some screen readers will read the filename aloud. For CSS or SVG decoration, add `role="presentation"` or `aria-hidden="true"`. In tagged PDFs, mark the figure as an Artifact using Acrobat Pro's Content or Tags panel so it is removed from the reading order. The goal is silence: a decorative border or spacer should produce nothing when a user tabs or arrows through the page.

*Reference: WCAG 1.1.1 (A); PDF/UA*

### 238. Write alt text that conveys purpose, not appearance

Effective alt text answers "why is this image here?" rather than cataloguing every pixel. For a photo of a mayor signing an ordinance, "Mayor Reyes signs the 2027 accessibility ordinance" beats "Man in blue suit at wooden desk holding a pen." Match the description to the image's role in the page: the same photo might need different alt text on a news article versus a staff directory. Keep it concise, skip subjective embellishment, and include only details that matter to understanding the content. Read the sentence around the image first; the alt text should let a non-sighted reader follow the same point a sighted reader gets.

*Reference: WCAG 1.1.1 (A)*

### 239. Drop "image of" and "graphic of" from alt text

Screen readers already announce an element as an image or graphic before reading its alt text, so starting with "Image of a courthouse" produces the redundant "graphic, image of a courthouse." Strip these lead-ins and jump straight to the content: "The county courthouse's accessible ramp entrance." Similar filler to cut includes "picture of," "photo showing," and "logo of" when the role is already clear. The rare exception is when the medium itself is the point, such as distinguishing "Oil painting of the founder" from a photograph. Otherwise, lead with the substance and let the assistive technology supply the object type.

*Reference: WCAG 1.1.1 (A)*

### 240. Keep alt text short; move long explanations elsewhere

Alt text is meant to be a brief equivalent, and many screen readers handle short strings best. Aim to convey the essential meaning in roughly a sentence, generally under about 150 characters. If an image genuinely needs more, such as a detailed chart or a process diagram, the image is "complex" and its explanation belongs in a long description or in adjacent body text, not stuffed into the alt attribute. A wall of text in alt is hard to navigate because users cannot pause, rewind, or skim it. Give a concise alt that names what the image is, then link or point to the full detail nearby.

*Reference: WCAG 1.1.1 (A)*

### 241. Describe functional images by their action, not their picture

When an image is a link or a button, the alt text must describe where it goes or what it does, not what it depicts. A magnifying-glass icon that submits a search should have alt like "Search," not "Magnifying glass." A logo in the header that links home should read "City of Fairview home," not "City seal." For icon buttons with no visible text, provide the label via `alt` on the `<img>`, or `aria-label`/`aria-labelledby` on the control. Test by tabbing to the control and confirming the screen reader announces a sensible action plus its role, such as "Search, button."

*Reference: WCAG 1.1.1 (A), 2.4.4 (A)*

### 242. Avoid double announcements when an image sits inside a link

If a linked image also has adjacent visible text inside the same anchor, giving the image descriptive alt causes the link to be announced twice. For example, an `<a>` containing a document-icon image plus the text "Annual Report" should have `alt=""` on the icon so the screen reader reads only "Annual Report, link." Reserve descriptive alt for the icon only when it carries the sole meaning of the link. The rule: the accessible name of the whole link should be spoken once and be meaningful. Check each linked image by listening to how the entire link reads, not just the image in isolation.

*Reference: WCAG 2.4.4 (A), 1.1.1 (A)*

### 243. Treat charts and graphs as complex images needing full data

A bar chart of permit-processing times is not adequately served by "Bar chart of permits." Users need the underlying information: the trend and, ideally, the numbers. Provide a short alt naming the chart and its main takeaway ("Permit wait times fell from 30 to 12 days, 2023-2027"), then supply the full data in an accessible HTML data table adjacent to or linked from the image. The table is the true equivalent and doubles as a benefit for sighted users. For court and government dashboards, publishing the source data table beside every chart is the most robust and maintainable long-description strategy.

*Reference: WCAG 1.1.1 (A)*

### 244. Provide long descriptions for diagrams and infographics

Infographics and process diagrams pack layered meaning that no short alt can hold. Give the image a concise alt that states its title and purpose, then place the complete explanation in nearby content a screen reader can reach: a paragraph below the figure, a collapsible "Long description" disclosure, or a linked page. Structure the long description the way the graphic reads, walking through each step, node, or region in logical order. Avoid the deprecated `longdesc` attribute since support is poor; a visible in-page description serves everyone, including sighted users who find the infographic dense. This keeps your organization's public-service explainers usable without sight.

*Reference: WCAG 1.1.1 (A)*

### 245. Never lock essential text inside a flat image

Text baked into a JPEG or PNG, such as a "Boil Water Notice" banner or a hours-of-operation graphic, cannot be resized, recolored, read by a screen reader, or translated. Rebuild it as real HTML text styled with CSS so it scales and reflows. If a purely visual design element must contain text, ensure the same words appear as actual text elsewhere and give the image full alt as a fallback. Logos are the main allowed exception. For government notices, scanned flyers are a frequent failure; converting the flyer content to live text is usually the fastest path to compliance and to letting residents zoom without pixelation.

*Reference: WCAG 1.4.5 (AA)*

### 246. Understand CSS-background vs. content images

Where an image lives determines how you make it accessible. Content images belong in the HTML as `<img>` or inline `<svg>` and carry meaning, so they need alt text. CSS `background-image` is meant for decoration and is invisible to assistive technology, so never put informative images there without a text alternative. The practical rule: if a user would miss information without the image, it must be a content image with alt, not a CSS background. During remediation, watch for meaningful graphics wrongly set as backgrounds; move them into markup or add an equivalent via an adjacent element with proper labeling so the content is not lost to screen reader users.

*Reference: WCAG 1.1.1 (A)*

### 247. Render math as MathML, not as flat images

Equations saved as images are opaque to screen readers and math-reading tools, and they blur when zoomed. Publish math as MathML instead, which assistive technologies can speak and navigate symbol by symbol, or use MathJax, which outputs accessible MathML from LaTeX-style source. If you inherit a page or PDF where an equation is only an image, provide alt text that speaks the expression clearly, for example "x equals negative b plus or minus the square root of b squared minus 4 a c, all over 2 a." MathML is the durable fix; alt text on an image is a stopgap for court filings or agency documents you cannot regenerate.

*Reference: WCAG 1.1.1 (A)*

### 248. Give maps a real text alternative, not just alt

An embedded map conveys location and routing that a short alt cannot replace, and the underlying tiles are usually inaccessible. Alongside the interactive map, provide the same information as text: the street address, nearby cross streets, transit options, and step-by-step directions. For a "find a polling place" or "office locations" map, include an accessible list or table of addresses so users who cannot see or operate the map still get the destinations. Static map images get concise alt naming what they show. The principle is equivalence: whatever wayfinding a sighted user extracts from the map should be available in reachable text.

*Reference: WCAG 1.1.1 (A)*

### 249. Connect figures and captions programmatically

A caption near an image is only reliably linked for assistive tech when the markup says so. In HTML, wrap the image and caption in `<figure>` and `<figcaption>`; screen readers then associate the caption with the figure. Remember that a caption is not a substitute for alt text: the caption is visible to everyone and often adds context, while the alt conveys the image's own content. If the caption fully describes the image, you may give the image an empty alt to avoid duplication, but decide deliberately. In tagged PDFs, use the Figure tag with a caption relationship so the pairing survives export.

*Reference: WCAG 1.1.1 (A); PDF/UA*

### 250. Add alt text and mark artifacts in tagged PDFs

For PDFs, meaningful images need alternate text set on the Figure tag, and decorative graphics must be marked as Artifacts so they leave the reading order. In Acrobat Pro, open the Tags panel, find the `<Figure>` element, choose Properties, and enter the alternate text; or use the Reading Order tool to tag a region as Figure and add its description. To retire a decorative graphic, right-click it in the Content or Reading Order panel and change it to an Artifact. Run the Accessibility Checker afterward: "Figures alternate text" flags any image still missing alt, which is a common failure in scanned government forms.

*Reference: PDF/UA; WCAG 1.1.1 (A)*

### 251. Give informative SVGs an accessible name and role

Inline SVG icons and illustrations need explicit accessibility handling because default exposure varies across browsers. For a meaningful SVG, add `role="img"` and provide a name via `aria-label`, or include a `<title>` element as the first child referenced by `aria-labelledby`. For a decorative SVG, add `aria-hidden="true"` and `focusable="false"` so it is skipped and does not trap keyboard focus in older browsers. When an SVG acts as a button or link, put the accessible name on the interactive parent and hide the SVG itself. Test in a screen reader, since SVG accessibility is inconsistent and silent failures are easy to miss.

*Reference: WCAG 1.1.1 (A)*

### 252. Give every meaningful image unique, context-appropriate alt

Duplicated boilerplate alt text, such as every headshot in a staff directory reading "employee photo," gives users no way to tell entries apart. Make each meaningful image's alt specific to its content and context: "Jane Okafor, Director of Public Works." The same is true for repeated icons that lead to different targets; each should name its own destination. During bulk remediation of a CMS, resist scripts that stamp identical alt across many images. Instead, generate alt from the associated data, like the person's name or the linked document's title, so each equivalent is distinct and actually useful to someone navigating by image or link.

*Reference: WCAG 1.1.1 (A)*

### 253. Match a chart's alt text to its purpose, not its type

A single chart image can serve different points, so let the surrounding argument drive the alt. If the article's claim is "response times improved," the alt should surface that conclusion plus the key figures, not merely "line graph with four data series." When the chart is illustrative and the exact numbers appear in the text already, a brief alt naming the chart may suffice; when the chart is the primary evidence, pair it with the full data table. Ask what a sighted reader is meant to take away from this specific chart in this specific place, then write the alt to deliver that same takeaway.

*Reference: WCAG 1.1.1 (A)*

### 254. Handle image galleries and thumbnails deliberately

Photo galleries and thumbnail grids create repetitive noise if every image gets verbose alt. Decide the gallery's purpose first. If images are illustrative and captions carry the meaning, use `<figure>`/`<figcaption>` and give thumbnails concise or empty alt to avoid double-reading. If each image is itself informative, write distinct alt per image. For thumbnail links that open larger versions, the alt should describe the destination content, not say "thumbnail." Group related controls with clear labels so a screen reader user can grasp the set and skip past it. The aim is a gallery that is browsable, not a stream of near-identical announcements that bury the useful items.

*Reference: WCAG 1.1.1 (A)*

### 255. Do not rely on color or shape alone inside images

When an image encodes meaning through color or position only, blind and colorblind users lose it. A status graphic using red, yellow, and green dots must also carry text or patterns that distinguish the states, and its alt or adjacent legend must spell them out ("Service status: Water Treatment - Operational, Road Maintenance - Delayed"). Charts should differentiate series with labels, textures, or direct annotations, not hue alone. When you write alt for such images, translate the color-coded meaning into words rather than describing the colors. This pairs the general "don't rely on color" rule with image work, ensuring the informational payload survives without sight or color perception.

*Reference: WCAG 1.4.1 (A), 1.1.1 (A)*

### 256. Fix "null" and filename alt text during audits

Automated scans and legacy CMS content frequently leave alt attributes set to a filename ("IMG_4821.jpg"), a placeholder like "image," or literally "null," all of which are useless to a screen reader user. During remediation, list every meaningful image with such junk alt and rewrite each to a real equivalent based on its content and role. Filenames in particular leak nothing about meaning and often read as strings of characters. Do not "fix" these by simply emptying the alt unless the image is genuinely decorative, since that hides real content. Prioritize images inside links and primary content areas, where bad alt most directly blocks task completion.

*Reference: WCAG 1.1.1 (A)*

### 257. Provide accessible alternatives for CAPTCHA and text-in-image verification

Image-based CAPTCHAs that require reading distorted text or picking objects from pictures block users who cannot see them, a real barrier on government service portals. Where a CAPTCHA is used, offer at least one non-visual alternative using a different sensory modality, such as an audio challenge, and prefer modern approaches like non-interactive or honeypot methods that avoid image puzzles entirely. Ensure any CAPTCHA control has a proper label and clear instructions. Because this sits at the entry point of forms for benefits, permits, or court filings, an inaccessible image challenge can lock people out of essential services, so treat its alternative as mandatory, not optional.

*Reference: WCAG 1.1.1 (A)*

---

## Tables Across Formats

### 258. Never use tables for page layout

If a table has no row/column relationships to convey, it is a layout table and should not exist. Screen readers announce "table, 4 columns, 12 rows" and read cell-by-cell, turning a two-column newsletter layout into a confusing maze. In Word and PowerPoint, rebuild the layout with proper columns, text boxes, or a multi-column section instead of a grid. In HTML, use CSS grid or flexbox rather than `<table>`. In PDF, retag any layout grid so it is not a `Table` structure element. Reserve real `<table>` markup exclusively for genuine data with meaningful rows and headers.

*Reference: WCAG 1.3.1 (A); ADA Title II*

### 259. Tell a data table apart from a layout table

Before remediating, decide what you are looking at: a data table has header cells that label the meaning of the data cells (a "Month" column, a "Revenue" row), so reading a value out of context requires knowing its headers. A layout table just positions unrelated content in a grid with no such labels. Ask, "Would any cell be ambiguous without a row or column header?" If yes, it is a data table and needs proper header markup. If no, it should not be a table at all. This single decision drives every other choice you make about scope, captions, and structure.

*Reference: WCAG 1.3.1 (A)*

### 260. Mark header cells in Word

In Microsoft Word, select the top row of a data table, open Table Design, and check "Header Row" in the Table Style Options group. Then, with the table selected, go to Layout and click "Repeat Header Rows." Crucially, also right-click the table, choose Table Properties, open the Row tab, and enable "Repeat as header row at the top of each page." This tells Word the row is a genuine header, and when the document exports to tagged PDF, those cells become `TH` elements instead of ordinary `TD` cells. Visual bolding alone does not create the accessibility relationship.

*Reference: WCAG 1.3.1 (A); PDF/UA*

### 261. Set header scope in HTML

In an HTML data table, use `<th>` for header cells and add a `scope` attribute so assistive technology knows what each header governs. Column headers get `scope="col"`; row headers get `scope="row"`. For example, `<th scope="col">Quarter</th>` labels a whole column, while `<th scope="row">West Region</th>` labels a whole row. Without scope, browsers guess associations and often guess wrong on anything beyond the simplest grid. Add `scope` to every header cell, not just the first, and verify the pairing by tabbing through with a screen reader that announces the header before each data value.

*Reference: WCAG 1.3.1 (A); HTML `th` scope*

### 262. Associate complex headers with headers and id

When a table has more than one header dimension per cell (for instance a header row plus a header column, or spanned multi-level headers), `scope` alone cannot express the relationships. Instead give every header cell a unique `id`, then on each data cell add a `headers` attribute listing the ids that apply, space-separated: `<td headers="q1 west">…</td>`. This explicitly binds a value to both its column and row headers, so a screen reader announces "Q1, West, 4200." It is more verbose than scope but is the only reliable method for genuinely complex tables. Reserve it for tables where simple scope truly fails.

*Reference: WCAG 1.3.1 (A); HTML `headers`/`id`*

### 263. Tag TH cells in a PDF

In a tagged PDF, header cells must be `<TH>` structure elements, not `<TD>`. In Acrobat Pro, open the Tags panel (or the Accessibility Table Editor: select the table with the Reading Order tool, then "Table Editor"), right-click a cell, and choose Table Cell Properties to change its type to Header Cell and set its Scope to Row, Column, or Both. Work through every header cell, including row-label cells down the left side. A PDF that visually looks like a table but has only `TD` tags will fail accessibility checks and will not announce headers to a screen reader, even if the source Word file was correct.

*Reference: PDF/UA; WCAG 1.3.1 (A)*

### 264. Set cell scope in a PDF Table Editor

After marking a PDF cell as a header (`TH`), you must also give it a Scope so the association direction is unambiguous. In Acrobat's Table Editor, open Table Cell Properties on each header cell and choose Scope: Row for a row label, Column for a column label, or Both for a corner cell that labels both. For data cells in complex tables, the Cell Properties dialog also lets you enter associated header cell IDs, mirroring the HTML `headers`/`id` approach. Do not leave scope as "None" on a header cell; an unscoped `TH` still leaves the reading relationship ambiguous for assistive technology.

*Reference: PDF/UA clause 7.5; WCAG 1.3.1 (A)*

### 265. Avoid merged and split cells

Merged (spanned) cells break the clean grid that assistive technology depends on and are the leading cause of tables reading incorrectly. Before remediating, redesign so each row and column is uniform: split a merged title cell into a real caption above the table, and repeat a shared value into each cell rather than merging. In Word, use Layout > Split Cells to undo merges; in Excel, avoid "Merge & Center" entirely and use "Center Across Selection" for visual centering instead. If a spanned header is truly unavoidable, you must fall back to explicit `headers`/`id` association, because simple scope cannot describe a cell that covers multiple columns.

*Reference: WCAG 1.3.1 (A)*

### 266. Add a caption to a data table

A caption gives the table a programmatic title that a screen reader announces when the user enters the table, so they know what they are reading. In HTML, place a `<caption>` element as the first child of `<table>`. In Word, right-click the table, choose Insert Caption, and position it above the table; keep it as a true caption, not a free-floating line of text. In a tagged PDF, use a `<Caption>` element inside the `<Table>` structure. Keep captions short and descriptive ("Q1 2026 revenue by region"). A caption is not the same as a summary and does not replace header cells.

*Reference: WCAG 1.3.1 (A); HTML `caption`*

### 267. Provide a summary for complex tables

For a table whose structure is intricate, a summary explains how it is organized so a non-visual user can navigate it. In HTML, do not revive the obsolete `summary` attribute; instead describe the layout in a `<caption>`, in adjacent prose, or via `aria-describedby` pointing to a nearby paragraph. In a tagged PDF, put the explanation in the table's Alternate Text or a preceding paragraph. Write it functionally: "Read across each row for a region; the final column totals the year." Reserve summaries for genuinely complex tables; a simple two-header grid needs only good headers and a caption, not extra prose.

*Reference: WCAG 1.3.1 (A)*

### 268. Handle multi-level column headers

When a table has grouped headers, such as a "2026" header spanning "Q1" and "Q2" sub-columns, you have two header rows and cannot rely on scope alone. In HTML, give the top spanning header `colspan` plus an `id`, give each sub-header its own `id`, and reference both ids from each data cell's `headers` attribute. You can also use `scope="colgroup"` on a header that spans a group of columns. In a PDF, set the spanning cell's ColSpan in Table Cell Properties and use associated cell IDs. Wherever possible, though, flatten the design into a single header row to avoid the complexity entirely.

*Reference: WCAG 1.3.1 (A); HTML `scope="colgroup"`*

### 269. Flatten nested tables

A table placed inside the cell of another table is almost always a mistake and is extremely hard for assistive technology to convey, because the reader must track which table it is in at each moment. Remediate by splitting the content into two separate, sibling tables, each with its own headers and caption, or by redesigning the data so a single flat table with clear column headers carries everything. In Word and PowerPoint, delete the inner table and reflow its data into added columns or a second table below. Never build a new nested table; if you inherit one, unnesting it is the fix, not tagging it.

*Reference: WCAG 1.3.1 (A)*

### 270. Deal with empty cells intentionally

A truly empty data cell can leave a screen-reader user unsure whether data is missing or the cell simply doesn't apply, and an empty cell can even disrupt some readers' header tracking. Decide per cell: if a value is genuinely zero, enter "0"; if it does not apply, enter a clear marker like "N/A" or "—" with a note explaining the symbol. Avoid leaving header-position cells blank, since an empty `<th>` provides no label. In HTML you can use CSS to hide a placeholder visually while keeping it available to assistive tech, but usually an explicit "N/A" is clearest for everyone.

*Reference: WCAG 1.3.1 (A)*

### 271. Repeat header rows across page breaks

When a printed or PDF table spans multiple pages, the header row must repeat at the top of each page so the labels stay attached to the data. In Word, select the header row, go to the Layout tab, and click "Repeat Header Rows"; also enable "Repeat as header row" in Table Properties > Row. In Excel, set Page Layout > Print Titles > "Rows to repeat at top." In HTML, place headers in `<thead>` so browsers and print styles repeat them. This keeps the association intact visually and, in tagged output, ensures the continued rows still map back to their `TH` headers.

*Reference: WCAG 1.3.1 (A)*

### 272. Build accessible tables in Excel

Excel worksheets are not automatically accessible just because they hold data. Convert a data range into a named Table via Insert > Table, confirm "My table has headers," and give the table a meaningful name in Table Design so screen-reader users can navigate to it. Keep one clean header row, avoid blank rows and columns inside the data region, and never use "Merge & Center." Set a print title row for multi-page output. Add a sheet-level description in the Alt Text pane if the layout needs explaining. Avoid stacking multiple separate tables on one sheet, which confuses navigation; give each its own sheet or clear separation.

*Reference: WCAG 1.3.1 (A)*

### 273. Make PowerPoint tables accessible

Insert tables in PowerPoint with Insert > Table so they become real table objects, not images or grouped text boxes. Mark the top row as a header by selecting the table, opening the Table Design tab, and checking "Header Row." Keep the table simple, since PowerPoint offers no way to set row-header scope or multi-level headers; if the data is complex, present it on a slide as a simple summary and link to an accessible Word or HTML version. Verify the slide reading order in the Selection Pane so the table is read at the right point, and add alt text describing its purpose.

*Reference: WCAG 1.3.1 (A)*

### 274. Run the built-in table checks

Do not trust a table by eye; use the tools. In Word, PowerPoint, and Excel, run File > Info > Check for Issues > Check Accessibility, which flags tables missing a header row and merged cells. In Acrobat Pro, run the Accessibility Check and inspect "Tables" results, then use the Table Editor to confirm every header is `TH` with a scope. For HTML, validate the markup and test with a screen reader's table-navigation keys (in NVDA, Ctrl+Alt+arrow keys) to hear whether headers are announced with each cell. Automated checks catch structure errors, but only a screen-reader pass confirms the relationships truly read correctly.

*Reference: WCAG 1.3.1 (A); PDF/UA*

### 275. Preserve table tags when converting formats

Table accessibility is fragile across conversions: a perfectly tagged Word table can lose its `TH` markup when saved to PDF through the wrong path. Always export using Acrobat's "Create PDF" add-in or File > Save As Adobe PDF with "Enable Accessibility and Reflow with tagged Adobe PDF" checked, never "Print to PDF," which flattens structure. After any conversion, reopen the result and re-verify headers, scope, and reading order rather than assuming they survived. When copying a table between Word, PowerPoint, and Excel, the header-row designation and merged-cell state often change, so re-apply the header settings in the destination application every time.

*Reference: WCAG 1.3.1 (A); PDF/UA*

---

## Forms Across Formats

### 276. Tie a visible label to every HTML field

Every input, select, and textarea needs a programmatic name, not just placeholder text. In HTML, wrap the control in a `<label>` or use `<label for="fieldId">` matched to the field's `id`. Placeholders disappear on typing and often fail contrast, so they never substitute for a real label. When a visual label truly can't appear, use `aria-label` or `aria-labelledby` — but a persistent visible label is best for everyone. Test by clicking the label text: focus should jump into the field. Screen readers should announce the field's purpose, its type, and its state when it receives focus.

*Reference: WCAG 1.3.1, 4.1.2 (A)*

### 277. Group related fields with fieldset and legend

Radio-button sets, checkbox groups, and clusters like "billing address" need a group name so screen reader users know what the choices belong to. In HTML, wrap the group in `<fieldset>` and give it a `<legend>` as the first child; the legend is announced together with each option. Without it, a user hears "yes" and "no" radios with no idea what question they answer. Keep legends short since they repeat per option. In tagged PDFs, the equivalent is nesting fields under a grouping structure and giving radio buttons a shared field name so they behave as one exclusive choice.

*Reference: WCAG 1.3.1 (A); PDF/UA form structure*

### 278. Indicate required fields beyond color alone

Marking required fields only with red text or a red asterisk fails users who can't perceive color. Add a text cue like "(required)" in the label, or use `required` and `aria-required="true"` so assistive tech announces the state. If you use an asterisk, define it once in plain text near the top of the form ("Fields marked * are required") and keep the asterisk inside the `<label>` so it's read with the field name. In PDF forms, add "(required)" to the field's tooltip. Never rely on a colored border alone that appears only after a failed submit.

*Reference: WCAG 1.4.1, 3.3.2 (A)*

### 279. Provide instructions before the input that needs them

Format rules, character limits, and examples must appear before the field, not only in an error after submission. Put help text like "MM/DD/YYYY" or "8+ characters" immediately after the label and connect it programmatically with `aria-describedby` pointing to the help element's `id`, so screen readers read it as part of the field. Placing hints only to the right or below, or hiding them in a tooltip that needs a mouse, leaves keyboard and screen reader users guessing. In PDF forms, put the same guidance in the field's tooltip (short description) since that is what assistive tech reads.

*Reference: WCAG 3.3.2 (A)*

### 280. Identify errors in text, not just color

When validation fails, name each field in error and describe what's wrong in words. A red outline alone is invisible to many users. Set `aria-invalid="true"` on the failed field and link the message with `aria-describedby` so it's announced on focus. List errors at the top of the form as in-page links to each bad field, and repeat the message inline. Avoid vague text like "invalid input"; say "Enter a date in MM/DD/YYYY format." Keep the error text near the field visually and ensure its color contrast passes independently of the red styling.

*Reference: WCAG 3.3.1 (A)*

### 281. Suggest specific corrections, not generic warnings

Beyond flagging that a field is wrong, tell the user how to fix it. "Email is invalid" helps less than "Enter an email address in the form name@example.com." For a date outside a range, state the allowed range. For a taken username, say so and suggest alternatives if you can. When you know the exact fix and it doesn't risk security or money, offer it. Deliver these suggestions in the same `aria-describedby` message the screen reader already reads, so correction guidance reaches everyone. This turns a dead-end error into an actionable next step and cuts repeated failed submissions.

*Reference: WCAG 3.3.3 (AA)*

### 282. Make tab order follow reading order

Keyboard users move through a form with Tab, so the focus sequence must match the visual and logical order. In HTML, rely on natural DOM order and avoid positive `tabindex` values, which override the flow and create confusing jumps. If CSS has repositioned fields visually, fix the source order rather than patching with tabindex. In Acrobat, open the Prepare Form tool, use the Fields panel's "Order Tabs by Structure," or drag fields into the correct sequence. Test by tabbing from the first field to the submit button and confirm focus never leaps backward or skips a field.

*Reference: WCAG 2.4.3 (A); PDF/UA tab order*

### 283. Add tooltips to every PDF form field

In a PDF, the field's tooltip is its accessible name — assistive technology reads it, since PDF form fields don't have on-canvas `<label>` elements. In Acrobat's Prepare Form tool, double-click each field, open Properties, and fill the "Tooltip" box on the General tab with a clear name like "First name" or "Date of birth (MM/DD/YYYY)." An unnamed field is announced only as "text field," giving no context. Keep tooltips concise and unique per field, mirror any visible label text, and include format hints and "(required)" where relevant so keyboard and screen reader users get the same guidance sighted users see.

*Reference: PDF/UA; WCAG 1.3.1, 4.1.2 (A)*

### 284. Ensure full keyboard operability

Every control in a form must be reachable and operable without a mouse: Tab to move, Enter/Space to activate, and arrow keys within radio groups and menus. Custom widgets built from `<div>` or `<span>` often trap or skip focus; give them `tabindex="0"`, correct roles, and key handlers, or better, use native `<button>`, `<input>`, and `<select>`. Watch for focus traps where Tab can't escape a widget, and for controls only clickable by mouse. Test the whole form using the keyboard alone, from first field through submit and back, confirming the focus indicator is always visible so users can see where they are.

*Reference: WCAG 2.1.1, 2.1.2 (A)*

### 285. Build accessible date pickers

Custom calendar widgets frequently break for keyboard and screen reader users. First, always allow direct text entry in a plain `<input>` with a stated format like "MM/DD/YYYY," so no one is forced to use the picker. If you offer a calendar, make it keyboard operable: arrow keys move between days, Page Up/Down change months, Enter selects, and Escape closes. Give it proper roles, announce the focused date, and label navigation buttons ("Previous month"). Return focus to the field after selection. Test that a screen reader announces the selected date and that keyboard-only users can pick any date without touching the mouse.

*Reference: WCAG 2.1.1, 4.1.2 (A)*

### 286. Replace CAPTCHAs with accessible alternatives

Distorted-text and image CAPTCHAs block blind, low-vision, and many cognitive-disability users, and audio versions are often unusable. Prefer invisible methods that don't burden the user: server-side rate limiting, honeypot fields hidden from sighted users but detectable to bots, time-to-submit checks, or modern risk-scoring services that run in the background. If you must show a challenge, offer at least two modalities and ensure any interactive control is fully labeled and keyboard operable. For government forms under Title II, an inaccessible CAPTCHA can wall people off from essential services entirely, so treat a genuine accessible fallback as mandatory, not optional.

*Reference: WCAG 1.1.1 (A)*

### 287. Confirm successful submission accessibly

After a form submits, tell the user clearly that it worked. Move focus to a success heading or message so screen reader users land on the confirmation, or place it in an ARIA live region (`aria-live="polite"` or `role="status"`) that announces without stealing focus mid-task. A silent redirect or a color change alone leaves non-visual users unsure whether anything happened. Include a confirmation or reference number in text. Avoid announcing success only via a transient toast that vanishes before a screen reader reads it. Test by submitting with a screen reader running and confirm the outcome is spoken.

*Reference: WCAG 4.1.3 (AA)*

### 288. Announce dynamic status and validation changes

When a form updates without a full page reload — inline validation, a spinner during submission, a count of remaining characters — assistive tech needs a way to hear it. Wrap the changing text in a live region: `role="status"` or `aria-live="polite"` for non-urgent updates, `role="alert"` for errors that need immediate attention. Populate the region after the page loads so its initial content isn't skipped. Don't overuse `aria-live="assertive"`, which interrupts. Keep messages short and specific. Test that submitting, triggering an error, and fixing it each produce a spoken update, so screen reader users track progress the same way sighted users watch the screen.

*Reference: WCAG 4.1.3 (AA)*

### 289. Label custom widgets with correct ARIA roles

When a form uses a scripted combobox, toggle, slider, or multi-select instead of native controls, it must expose the right role, name, value, and state. A styled `<div>` acting as a dropdown needs `role="combobox"`, `aria-expanded`, `aria-controls`, and a linked listbox with `role="option"` items, plus arrow-key handling. Without these, a screen reader announces nothing useful and keyboard users can't operate it. Whenever possible, use native `<select>`, `<input type="checkbox">`, or `<input type="range">`, which give this behavior for free. If you build custom, follow an established authoring-practices pattern and test the name, role, and value are all announced correctly.

*Reference: WCAG 4.1.2 (A)*

### 290. Keep placeholder text out of the labeling job

Placeholder attributes are a common trap: they vanish once typing starts, often fail the 4.5:1 contrast ratio, and are ignored or inconsistently read by assistive tech. Never use a placeholder as the only label or as the format instruction. Keep a persistent `<label>` above or beside the field, and if you want an example, put it in help text tied with `aria-describedby` rather than in the placeholder. If a placeholder stays, make sure its text meets contrast and duplicates information already in the visible label. This ensures the field's purpose remains visible and spoken even after the user begins entering data.

*Reference: WCAG 1.4.3, 3.3.2 (A)*

### 291. Enable the interactive form fields in a PDF

Scanned or "flat" PDFs printed as static pages force people to print, fill by hand, and mail forms back — a barrier for many users. Use Acrobat's Prepare Form tool to auto-detect fields, then review each one, since detection misses and mislabels. Confirm every field is a real, fillable object with a tooltip, correct type (text, checkbox, radio, dropdown), and sensible size. Add a digital-signature field where a signature is required rather than a "sign here" line. A fully interactive, tagged form lets keyboard and screen reader users complete it on screen, independently, and in the same session as everyone else.

*Reference: PDF/UA; WCAG 1.3.1 (A)*

### 292. Set the correct field type for each PDF control

Choosing the wrong PDF field type breaks the interaction model assistive tech expects. Use checkboxes for independent yes/no options and radio buttons for mutually exclusive choices — and give members of one radio group the same field name with different export values so only one can be selected. Use a dropdown (list box or combo box) for long option lists rather than a stack of checkboxes. In Acrobat's Prepare Form tool, verify each control's type in Properties. Mismatched types confuse keyboard navigation and screen reader announcements, so audit that single-select questions truly behave as single-select and that grouped options are announced as a set.

*Reference: PDF/UA; WCAG 1.3.1, 4.1.2 (A)*

### 293. Preserve accessibility when exporting Word forms to PDF

Forms authored in Word keep their accessibility only if you export correctly. Build fields with the Developer tab's content controls, add a real label paragraph before each, and set required-field cues in text. Use Word's built-in "Check Accessibility" first. Then export with File > Save As or the Acrobat add-in choosing "Best for electronic distribution and accessibility (uses Microsoft's tagging)," not Print. Confirm "Document structure tags for accessibility" is enabled in export options. After export, open the PDF in Acrobat and verify tags, tooltips, and tab order survived, since content controls don't always convert cleanly into fillable, tooltip-bearing PDF form fields.

*Reference: PDF/UA; WCAG 1.3.1 (A)*

### 294. Give each field enough context for autofill and clarity

Fields that collect personal data should carry an `autocomplete` token — `autocomplete="email"`, `"tel"`, `"given-name"`, `"postal-code"` — so browsers and assistive tools can identify the field's purpose and fill it automatically. This reduces effort for users with motor or cognitive disabilities and helps those who rely on stored data. Pair it with a clear, persistent label; autocomplete supplements the label, it doesn't replace it. Match the token to the actual data requested, and split combined fields (full name, full address) where a standard token exists per part. Test that the browser's autofill offers the right value and the label still reads correctly.

*Reference: WCAG 1.3.5 (AA)*

### 295. Warn and confirm before destructive or final submissions

For forms that spend money, delete data, or submit a legal filing, protect users from irreversible mistakes. Provide a reversible step, a review-before-submit summary, or an explicit confirmation the user must acknowledge — and make that confirmation itself keyboard operable and screen-reader announced. Don't auto-submit on a change event or after an idle timeout without warning. If a session time limit exists, warn ahead and let the user extend it so a slow reader isn't kicked out mid-form with lost data. On the review screen, let users jump back to any field to edit. These safeguards especially help users with cognitive and motor disabilities.

*Reference: WCAG 3.3.4 (AA), 2.2.1 (A)*

---

## Color & Visual Design

### 296. Check body text against the 4.5:1 minimum

Normal-size text needs a contrast ratio of at least 4.5:1 against its background. "Normal" means below roughly 18pt (24px) regular weight or 14pt (18.66px) bold. Drop the exact foreground and background hex values into a contrast checker such as the TPGi Colour Contrast Analyser or WebAIM's contrast checker, and read the AA result. If a value like #767676 gray-on-white passes at exactly 4.54:1, treat that as a hard floor, not a target — nudge darker for comfort. When a color fails, adjust lightness rather than hue so the brand color stays recognizable. Log the tested pairs so you don't re-check the same combination on every page.

*Reference: WCAG 1.4.3 (AA)*

### 297. Large text only needs 3:1

Text that is at least 18pt (24px) at normal weight, or 14pt (18.66px) bold, qualifies as "large" and only needs a 3:1 contrast ratio. This gives you room to use lighter grays or softer brand tints for big headings and hero copy that would fail as body text. Confirm the computed font-size in the browser DevTools "Computed" panel before you rely on the relaxed threshold, because CSS units, zoom, and inherited scaling can push a heading below the cutoff. If a heading sits right at the boundary, treat it as normal text and require 4.5:1 so a small render difference can't drop you out of conformance.

*Reference: WCAG 1.4.3 (AA)*

### 298. Give UI components 3:1 contrast

Interactive controls and their states must be distinguishable, not just the text inside them. Input borders, toggle switches, radio and checkbox outlines, the visual boundary of a button, and required-field indicators all need at least 3:1 contrast against adjacent colors. A pale gray input outline on a white form (say #DDDDDD, about 1.3:1) fails even if the label text passes. Check the border color against the page background, and check any active-state color against the inactive one. When a component has no border and relies on a fill, test the fill against the surrounding area. Fixing these usually means darkening one hairline border across the whole form.

*Reference: WCAG 1.4.11 (AA)*

### 299. Meaningful graphics need 3:1 too

Graphical objects that a user must perceive to understand content need 3:1 contrast against what's next to them. This covers icons that carry meaning (a magnifying-glass search icon, a trash-can delete icon), the slices and lines of a chart, wayfinding arrows, and the parts of a diagram that convey data. Purely decorative graphics are exempt, so first decide whether the graphic is required for understanding. For a line chart, test each line color against the plot background and against neighboring lines. Thin one-pixel strokes are the usual failure; thickening the stroke or darkening the color both help. Skip this test only for imagery a screen-reader user could ignore entirely.

*Reference: WCAG 1.4.11 (AA)*

### 300. Never rely on color alone

If color is the only thing that signals meaning, users who can't distinguish it are lost. A red "overdue" row, a green "paid" status, or "click the words in blue" all fail when color is the sole cue. Add a second channel: an icon, a text label, underlining, a pattern, or a shape. For form errors, pair the red outline with an error message and an alert icon. For a required field, add an asterisk plus a "required" note, not just a colored border. A quick test is to view the page in grayscale (macOS: System Settings > Accessibility > Display > Color Filters) and confirm every distinction still reads.

*Reference: WCAG 1.4.1 (A)*

### 301. Keep in-text links distinguishable

When links sit inside a paragraph, color alone usually isn't enough to mark them, because color-blind users may not see the difference from surrounding text. Either underline in-text links, or ensure the link color has at least 3:1 contrast against the body text AND provides a non-color cue on hover and focus (such as an underline appearing). Underlining is the safest default — reserve "remove the underline" for navigation menus and button-styled links where position already signals interactivity. Don't underline non-link text, since that trains users to expect a link. Check the link-vs-body-text contrast, not just link-vs-background, when you skip the underline.

*Reference: WCAG 1.4.1 (A)*

### 302. Make the focus indicator visible and high-contrast

Keyboard users need to see where focus is. Never set `outline: none` without a replacement. The focus indicator should have at least 3:1 contrast against the adjacent colors — both against the component and against the page background behind it. A thin default browser outline can vanish on colored backgrounds, so consider a two-color ring (for example a `box-shadow` with a light and dark layer) that stays visible on any surface. Tab through every interactive element and confirm the indicator is obvious at each stop. Give it enough area — a 2px solid outline or thicker reads far better than a 1px hairline.

*Reference: WCAG 2.4.7 (AA); 1.4.11*

### 303. Don't let focus rings fail contrast on brand colors

A focus outline that looks fine on white can disappear against a dark header, a colored button, or a photographic hero. Test the indicator color against each background it will land on, not just the page default. A common fix is a double-ring: an inner light ring and an outer dark ring, so one layer always meets 3:1 no matter the surface. In CSS this is `outline` plus an offset `box-shadow`, or `:focus-visible { outline: 2px solid #fff; box-shadow: 0 0 0 4px #000; }`. Walk the site's darkest and lightest components and confirm the ring survives on both extremes before signing off.

*Reference: WCAG 2.4.11 / 2.4.7*

### 304. Test dark mode as its own theme

Dark mode isn't just inverted colors — it's a separate palette that must meet contrast on its own. Light text on a dark background can produce halation (glare) if it's pure #FFFFFF on #000000, so use an off-white on a dark gray (like #E8E8E8 on #1A1A1A) and verify it still clears 4.5:1. Re-check every state: links, focus rings, disabled controls, and error text often break in dark mode because they were tuned for light. If you honor the OS `prefers-color-scheme` media query, run your full contrast pass in both themes. Don't assume passing light mode means dark mode passes.

*Reference: WCAG 1.4.3 (AA)*

### 305. Support Windows High Contrast Mode

Windows High Contrast Mode (now Contrast Themes) overrides your palette with a small system set, and it ignores background images and many CSS colors. Icons drawn with `background-image` can disappear, and borders removed with `border: none` leave controls invisible. Use the `forced-colors: active` media query to restore what's lost — set `forced-color-adjust` deliberately, and use system color keywords like `CanvasText`, `ButtonText`, and `Highlight` so your UI adapts to the user's chosen theme. Test in Windows Settings > Accessibility > Contrast themes. Pay special attention to SVG icons, focus indicators, and any state you convey only with a background color, since forced colors will flatten those.

*Reference: WCAG 1.4.1; forced-colors media query*

### 306. Design for color-vision deficiencies

About 1 in 12 men has some color-vision deficiency, most commonly red-green. Palettes that pair red and green (a classic pass/fail scheme) collapse for these users. Simulate before you ship: Chrome DevTools has a "Emulate vision deficiencies" option under Rendering (protanopia, deuteranopia, tritanopia, achromatopsia), and macOS/browser tools can preview grayscale. Prefer color pairs that differ in lightness as well as hue, and favor blue/orange over red/green when you must use two colors. Always back the color with a shape, label, or icon so the meaning survives any simulation. Run at least the deuteranopia and grayscale previews on every status color and chart legend.

*Reference: WCAG 1.4.1 (A); 1.4.3*

### 307. Build an accessible brand palette

Turn a brand color set into a usable system by mapping which pairings pass. Create a matrix of every text color against every background color and mark the AA and AAA results with a tool like the TPGi Colour Contrast Analyser or a design-token contrast plugin. Most brand palettes have a few "hero" colors too light for body text — document those as decorative-or-large-text-only so designers don't misuse them. Add tint and shade variants (a darker version of the brand blue for links, a lighter one for backgrounds) so people have compliant options within the brand. Publish the matrix in the style guide so contrast decisions are made once, not re-litigated per page.

*Reference: WCAG 1.4.3 / 1.4.11 (AA)*

### 308. Encode chart data beyond color

A chart that distinguishes series only by color fails for color-blind and grayscale users. Add a second encoding to every data series: direct labels on the lines or bars, distinct patterns or textures for fills (hatching, dots, dashes for line styles), and markers of different shapes at data points. Put the legend text next to a swatch that also carries the pattern, not just the color. For pie charts, label each slice directly rather than forcing a color-to-legend lookup. Verify by viewing the chart in grayscale — if you still can't tell the series apart, the color did all the work and the encoding needs more channels.

*Reference: WCAG 1.4.1 (A); 1.4.11*

### 309. Don't put text on busy image backgrounds

Text over a photo or gradient often fails contrast in some spots even when it passes in others, because the background color changes under the letters. Sample the lightest and darkest pixels the text actually overlaps and test both — a caption that clears 4.5:1 over the sky can drop to 2:1 over a bright cloud. Fix it with a solid or semi-opaque scrim behind the text, a text shadow strong enough to guarantee separation, or by moving the text onto a flat color band. When using a scrim, test the final composited color, not the original image. Reserve text-over-image for large display type where you can control the region.

*Reference: WCAG 1.4.3 (AA)*

### 310. Pick and standardize a contrast tool

Adopt one contrast analyzer across the team so results are consistent. The TPGi Colour Contrast Analyser (free desktop app for Windows and macOS) has an eyedropper that samples any pixel on screen — useful for testing rendered PDFs, native apps, and images where you can't read the hex. For web work, the Chrome DevTools color picker shows the contrast ratio and an AA/AAA checkmark inline when you edit a color. WebAIM's online checker is quick for one-off hex pairs. Whichever you choose, confirm it uses the current WCAG 2.x ratio formula and note that thin text and disabled controls have their own rules the tool won't judge for you.

*Reference: WCAG 1.4.3; tooling guidance*

### 311. Placeholder text is not a substitute for a label

Low-contrast placeholder text is a frequent finding, and even at full contrast it disappears once the user types. Don't use placeholder text as the only field label, and don't set it so light it fails 4.5:1 — browsers often render placeholders around #757575 or lighter, which can fall below the threshold on white. Provide a persistent visible `<label>` for every field and reserve the placeholder for an optional format hint (like "MM/DD/YYYY"). If you keep a placeholder, test its computed color the same way you test body text. This keeps the field labeled after input and keeps the hint readable for low-vision users before input.

*Reference: WCAG 1.4.3 (AA); 3.3.2*

---

## Multimedia: Captions, Transcripts & Audio Description

### 312. Add captions to prerecorded video first

Every prerecorded video with speech needs synchronized captions, and this is usually the single highest-impact multimedia fix. Do not rely on YouTube's raw auto-captions: they routinely mangle names, agency acronyms, and legal terms. Instead, download the auto-caption draft as a starting point, then correct it against the audio and re-upload it, or produce a clean caption file yourself. Save captions as WebVTT (.vtt) or SRT and either attach them to your player's `<track kind="captions">` element or upload them in the platform's caption editor. Verify captions are synchronized to within a fraction of a second so viewers reading them stay aligned with what they hear.

*Reference: WCAG 1.2.2 (A)*

### 313. Provide a full transcript alongside video

A caption track shows dialogue in sync, but a separate text transcript serves people who cannot use the player, prefer to skim, or rely on braille displays. Publish the transcript as accessible HTML on the same page or as a tagged, reading-order-correct document linked directly beneath the video. A good transcript includes all spoken words plus speaker labels and brief descriptions of important non-spoken information the audio conveys. Place the transcript link where it is obvious, not buried in a sidebar. For a public meeting recording, the transcript also doubles as a searchable record, which helps staff respond to records requests without re-watching hours of footage.

*Reference: WCAG 1.2.2 (A); WCAG 1.2.3 (A)*

### 314. Caption live streams in real time

Live video such as council meetings, court proceedings, and public hearings needs captions delivered as the event happens. The reliable route is CART (Communication Access Realtime Translation) from a trained human captioner who types into a stream your platform ingests, or a vetted automatic captioning service where accuracy is acceptable and monitored. Book the captioner well before the meeting and give them an agenda, agency names, and speaker lists so proper nouns come through correctly. Confirm the caption feed is visible in the same window as the video, not only on a separate URL. After the event, clean up the live caption transcript and attach it to the archived recording as prerecorded captions.

*Reference: WCAG 1.2.4 (AA)*

### 315. Add audio description for meaningful visuals

When a video shows information that is not spoken aloud, such as an on-screen chart, a demonstrated form, or a name that only appears as text, sighted viewers get it but blind viewers do not. Audio description fills that gap with narration inserted into pauses in the dialogue. First check whether existing pauses are long enough; if they are, record standard audio description and offer it as an alternate track. If the audio is wall-to-wall, you may need extended audio description that pauses the video, or a re-edited version. When planning new videos, script narration that speaks visible information aloud so separate description is rarely needed.

*Reference: WCAG 1.2.5 (AA)*

### 316. Give audio-only files a transcript

Podcasts, recorded phone town halls, radio-style announcements, and any audio-only content need a text transcript so deaf and hard-of-hearing users get the same information. The transcript should capture all spoken words plus speaker identification and any meaningful sounds. Publish it as readable HTML on the page hosting the audio, and link it clearly right next to the play button. For a series, keep transcripts consistently formatted and titled so users learn where to find them. Because audio-only content has no visuals, a plain accurate transcript fully satisfies the requirement; you do not need captions or description here.

*Reference: WCAG 1.2.1 (A)*

### 317. Do not auto-play audio

Sound that starts automatically when a page loads collides with screen reader speech, startles users, and can drown out assistive technology output. Avoid auto-playing audio or video with sound entirely. If a background clip must play on load, keep it under three seconds, or provide an obvious, keyboard-reachable control near the top of the page to pause, stop, or mute it independently of the system volume. Setting the video element's `muted` attribute and requiring a user click to unmute is the safest pattern. Check embedded widgets and hero-banner videos, which are common culprits, and confirm nothing plays until the user chooses to start it.

*Reference: WCAG 1.4.2 (A)*

### 318. Choose a keyboard-operable media player

The player controls themselves must be usable without a mouse. Test by tabbing to the video: you should be able to reach and activate play/pause, volume, mute, captions, and the timeline scrubber using the keyboard alone, with a visible focus indicator on each control. Each control needs an accessible name a screen reader announces, such as "Play" or "Captions on." Many default players fail here, so prefer an accessible player such as Able Player or a well-tested framework component rather than a bare custom build. Confirm the caption toggle is present and works, and that focus is not trapped inside the player once the user tabs past it.

*Reference: WCAG 2.1.1 (A); WCAG 4.1.2 (A)*

### 319. Identify speakers in captions and transcripts

Accurate captions are not just correct words; they tell the viewer who is speaking. In meetings and panels with several voices, prefix lines with the speaker's name or role, for example ">> MAYOR:" or ">> CLERK:", changing the label whenever the speaker changes. This matters most when people are off-screen or the camera does not follow the talker. Keep labels consistent throughout the file and match them to how speakers are introduced. In transcripts, put speaker names in bold or on their own line for scannability. This small discipline turns a wall of text into a usable record and helps viewers who cannot distinguish voices by sound follow the conversation.

*Reference: WCAG 1.2.2 (A)*

### 320. Caption meaningful sound effects and music

Captions should convey non-speech audio that carries meaning, not only dialogue. Enclose descriptions in brackets, such as [applause], [gavel bangs], [alarm sounds], or [phone ringing], so deaf viewers know what hearing viewers hear. Note relevant music with [upbeat music] or, when lyrics matter, caption the lyrics. Do not clutter the track with every incidental noise; include only sounds that affect understanding or set important context. Place a sound-effect caption at the moment the sound occurs so timing stays meaningful. Skipping these is a common quality gap in otherwise well-transcribed government videos, and it leaves out information that is genuinely part of the content.

*Reference: WCAG 1.2.2 (A)*

### 321. Handle captions in PowerPoint and slide videos

Video and audio embedded in a PowerPoint deck carry the same caption and transcript duties as web video. In PowerPoint, select the media, open the Playback tab, and use Insert Captions to attach a WebVTT file so viewers can toggle captions during the show. Turn off any Start Automatically setting that plays sound on slide entry, since auto-play is disorienting and collides with screen readers. If the deck will be distributed as a file, confirm the caption file travels with it or embed the media rather than linking. When you export the deck to video or PDF, re-verify that captions and alternatives survive the conversion.

*Reference: WCAG 1.2.2 (A); WCAG 1.4.2 (A)*

### 322. Do not treat sign language as a substitute for captions

Some agencies add a sign-language interpreter window to live meetings, which is excellent for the Deaf community that uses that language, but it does not replace captions. Signed content is a separate language and serves a different audience than text captions, and WCAG treats sign-language interpretation as an additional, higher (AAA) provision rather than a substitute for the required captions and transcript. So keep providing synchronized captions and a transcript even when an interpreter is present. If you do include a signer, make sure the interpreter window is large enough and well-lit, and that it is not cropped out when the recording is archived or embedded elsewhere.

*Reference: WCAG 1.2.2 (A); WCAG 1.2.6 (AAA)*

### 323. Vet embedded third-party video for accessibility

When you embed video hosted elsewhere, such as a state agency's YouTube channel or a vendor's training platform, your page is still responsible for the experience. Before embedding, confirm the source video has accurate captions and, where needed, audio description and a transcript. If the third-party player is not keyboard operable or lacks caption controls, either host an accessible copy yourself or link out with a clear note rather than trapping users in a broken embed. Give each `<iframe>` a descriptive `title` attribute so screen readers announce what the frame contains. Do not assume a popular platform's default captions are adequate; check the specific video you are embedding.

*Reference: WCAG 1.2.2 (A); WCAG 4.1.2 (A)*

### 324. Fix caption timing and reading speed

Captions that lag the audio, flash by too fast, or dump too many words at once are technically present but unusable. Aim for readable chunks of one to two lines that stay on screen long enough to read, roughly matching a comfortable reading rate rather than the raw speech rate. Break lines at natural phrase boundaries instead of mid-clause, and never split a person's name across two caption frames. In your WebVTT file, adjust the start and end timestamps so each cue appears slightly before the words are spoken and clears after. Preview the result at normal playback speed and watch for overlap, where one cue covers the next.

*Reference: WCAG 1.2.2 (A)*

### 325. Write captions verbatim, then clean lightly

Captions should reflect what is actually said, including false starts and asides that carry meaning, so viewers get the same content hearing users do. That said, remove obvious stutters and filler that add nothing, and fix mis-recognized words from an automatic pass. Spell out numbers, agency acronyms, and proper nouns the way they are commonly written so they read cleanly. Do not silently paraphrase or summarize a speaker; that changes the record, which matters especially for public meetings and court proceedings. When a word is genuinely inaudible, mark it [inaudible] rather than guessing. The goal is an accurate, readable text that a hearing viewer would recognize as faithful.

*Reference: WCAG 1.2.2 (A)*

### 326. Make the caption toggle discoverable

Captions only help if users can find and turn them on. Ensure the player shows a clearly labeled captions or "CC" button that is reachable by keyboard and announced by screen readers with a name like "Show captions." Where the platform allows, default captions to on for public-meeting and emergency content so users do not have to hunt for the control. If you offer multiple tracks, such as English captions plus a Spanish translation, label each track by language so the picker is understandable. Test the toggle on the actual devices your audience uses, including mobile, since caption controls sometimes hide behind an overflow menu on small screens.

*Reference: WCAG 1.2.2 (A); WCAG 4.1.2 (A)*

### 327. Plan accessible media before production

The cheapest way to caption and describe video is to plan for it while making the video, not after. When scripting, have speakers say visible information aloud, such as reading out a web address or the key figure in a chart, so little or no separate audio description is needed. Record clean audio with one speaker at a time to make captioning accurate and fast. Keep the source transcript or script as the basis for your caption file. Build in time and budget for a human caption pass and, for outside vendors, put caption and transcript deliverables in the contract. Front-loading this work avoids costly remediation of large video archives later.

*Reference: WCAG 1.2.2 (A); WCAG 1.2.5 (AA)*

---

## Testing, Validation & Tools

### 328. Automation catches only a third of issues

If a scan comes back "no errors," you are not done. Automated tools like axe, WAVE, and Lighthouse reliably catch roughly 30 to 40 percent of accessibility problems, mostly machine-detectable ones such as missing alt attributes, empty form labels, and low contrast on solid colors. They cannot judge whether alt text is meaningful, whether reading order makes sense, whether a heading is truly a heading, or whether a keyboard user can actually complete a task. Treat scanners as a first pass that clears the obvious defects, then budget most of your QA time for manual keyboard and screen-reader testing. Reporting a clean scan as "accessible" is the single most common mistake in ADA Title II remediation.

*Reference: WCAG-EM; WCAG 2.1 AA*

### 329. Run Acrobat's Accessibility Checker the right way

In Acrobat Pro, open the Accessibility tool and choose "Accessibility Check" (formerly Full Check). In the options dialog, select all categories and run it against the whole document. The report tree groups results into Passed, Failed, Needs manual check, and Skipped. Do not ignore the "Needs manual check" items: logical reading order, color contrast, and meaningful alt text are flagged there precisely because Acrobat cannot verify them for you. Right-click any failed item for "Fix" or "Explain." Remember this checker validates against Acrobat's own ruleset, not full PDF/UA conformance, so a passing report is necessary but not sufficient. Follow it with PAC for a stricter PDF/UA verdict.

*Reference: PDF/UA (ISO 14289-1); WCAG 2.1 AA*

### 330. Use PAC 2024 for a true PDF/UA verdict

PAC (PDF Accessibility Checker) 2024 from the PDF/UA Foundation is the free, authoritative tool for checking PDF/UA conformance and the PDF-specific WCAG mapping. It reports far more machine-testable failure conditions than Acrobat and gives a clear pass or fail per checkpoint. Use its "Logical Structure" view to walk the tag tree, and the "Screen Reader Preview" to see roughly how assistive technology will interpret the document. PAC still cannot judge whether alt text is accurate or whether reading order is sensible, so pair its verdict with manual review. When a client demands documented PDF/UA compliance, a clean PAC report plus your manual checklist is the standard evidence package.

*Reference: PDF/UA (ISO 14289-1); Matterhorn Protocol*

### 331. Verify logical reading order in tagged PDFs

A PDF can pass automated checks and still read in the wrong order to a screen reader, because visual layout and tag order are independent. In Acrobat Pro, open the Tags panel and use "Reading Order" (Touch Up Reading Order) or, better, the Order panel to see the sequence assistive technology will follow. Multi-column pages, sidebars, and pull quotes are the usual culprits; a two-column newsletter often reads left column then jumps mid-sentence to the right. Confirm the tag tree matches the intended reading sequence, not the visual grid. Then sanity-check by navigating the document with NVDA's arrow keys or VoiceOver, since the Order panel shows structure but not the lived screen-reader experience.

*Reference: PDF/UA clause 7.2; WCAG 1.3.2 (A)*

### 332. Know the blind spots of Word's Accessibility Checker

Word's built-in checker (Review > Check Accessibility) is genuinely useful for missing alt text, merged table cells, and using real heading styles, but it has real blind spots. It will not tell you if your heading levels skip from H1 to H3, whether your color contrast meets 4.5:1, whether link text is descriptive, or whether reading order will survive the export to PDF. It also cannot judge whether alt text is meaningful. Use it as a quick pre-flight, fix everything it flags, then still verify contrast with a dedicated analyzer and confirm the exported PDF's tags in Acrobat or PAC. The Word checker green light does not guarantee an accessible PDF.

*Reference: WCAG 2.1 AA; WCAG 1.4.3 (AA)*

### 333. Test PowerPoint reading order per slide

PowerPoint's Accessibility Checker (Review > Check Accessibility) flags missing alt text and low-contrast concerns, but its biggest value is exposing slide reading order, which it does not fully validate on its own. Open Home > Arrange > Selection Pane on each slide: screen readers announce objects from the bottom of that list upward, so reorder items so the title comes first and content follows logically. The checker will not confirm this order makes sense, nor will it catch text trapped inside images or decorative shapes that should be hidden. After remediation, tab through the slide in Slide Show view and, ideally, listen with a screen reader to confirm the sequence matches what a sighted viewer sees.

*Reference: WCAG 1.3.2 (A); WCAG 2.1 AA*

### 334. Push past Excel's checker limits

Excel's Accessibility Checker (Review > Check Accessibility) catches missing alt text on charts and images and flags default sheet names, but spreadsheet accessibility depends on things it cannot test. It will not verify that you have defined a header row with "Use First Row as Header," that your data region is a proper Table (Ctrl+T), that merged cells are absent, or that blank rows and columns are not fragmenting the table for a screen reader. It also cannot judge whether complex multi-tab workbooks have a sensible navigation flow. Name every sheet meaningfully, avoid merged cells, keep one table per region, and manually confirm a screen reader announces row and column headers when navigating cells.

*Reference: WCAG 1.3.1 (A); WCAG 2.1 AA*

### 335. Validate EPUB with ACE by DAISY

For any EPUB deliverable, run ACE by DAISY, the free open-source EPUB accessibility checker. It produces an HTML report grouping violations by impact and by WCAG success criterion, and it surfaces EPUB-specific concerns such as missing page-list navigation, absent language declarations, and images lacking alt text. ACE also generates a "reading order" and heading outline you can review for structure problems. Like every automated tool it cannot judge alt-text quality or true reading logic, so follow it with a read-through in a real reading system such as Thorium Reader using a screen reader. Include the ACE report in your QA evidence when a library or education client needs documented EPUB accessibility.

*Reference: EPUB Accessibility 1.1; WCAG 2.1 AA*

### 336. Build a keyboard-only test pass

Unplug the mouse and drive the whole page with Tab, Shift+Tab, Enter, Space, and the arrow keys. Confirm every interactive element is reachable, that focus order follows the visual flow, and that you never get trapped in a widget with no keyboard escape. Watch for a visible focus indicator at all times; if focus disappears behind a modal or into an off-screen menu, that is a failure. Test that custom controls (menus, tabs, sliders, date pickers) respond to the keys their ARIA pattern requires. Keyboard testing is fast, requires no special software, and catches a large share of real barriers that no scanner reports. Make it a mandatory step in every web QA cycle.

*Reference: WCAG 2.1.1 (A); WCAG 2.4.7 (AA)*

### 337. Learn NVDA for free screen-reader testing

NVDA is a free, widely used Windows screen reader and should be in every remediator's toolkit. Learn a handful of commands: Insert+Down starts "say all," H jumps between headings, K between links, T between tables, D between landmarks, and Insert+F7 opens the Elements List to review headings, links, and landmarks at a glance. Testing with the browse-mode arrow keys reveals whether your structure actually communicates: do headings announce their level, do form fields announce their labels, do images announce useful descriptions or file names? Use Firefox or Chrome with NVDA for the most representative results. Because NVDA is free, it is the natural baseline before you invest in JAWS testing.

*Reference: WCAG 4.1.2 (A); WCAG 1.3.1 (A)*

### 338. Test across more than one screen reader

Screen readers differ enough that passing one does not guarantee passing another. JAWS and NVDA on Windows, VoiceOver on macOS and iOS, and TalkBack on Android each interpret ARIA, tables, and PDFs slightly differently, and browser pairing matters too. A pragmatic minimum for a public-sector deliverable is NVDA plus Chrome or Firefox on Windows and VoiceOver plus Safari on macOS or iOS, since those cover the largest real-world usage. For mobile web or apps, add TalkBack. You do not need to test every combination on every page; pick representative templates and critical user flows. When a bug appears in only one screen reader, document which one, because the fix often depends on the specific behavior.

*Reference: WCAG 4.1.2 (A); WCAG 2.1 AA*

### 339. Use VoiceOver and the rotor on Apple platforms

On macOS press Command+F5 to toggle VoiceOver; on iOS enable it in Settings > Accessibility. The key testing tool is the rotor: on the Mac use VO+U to page through headings, links, landmarks, and form controls; on iOS twist two fingers on the screen to switch rotor categories, then swipe up or down to move. This quickly reveals whether your heading outline is complete, whether landmarks exist, and whether links have meaningful text. VoiceOver testing is essential because Safari plus VoiceOver is the dominant assistive combination on Apple devices, and it exposes issues, such as unlabeled buttons and mis-ordered content, that Windows testing can miss.

*Reference: WCAG 2.4.1 (A); WCAG 4.1.2 (A)*

### 340. Measure color contrast with a real analyzer

Do not eyeball contrast. Use TPGi's Colour Contrast Analyser (a free desktop app) or a browser tool to sample the exact foreground and background colors and read the ratio. Normal-size text needs 4.5:1, large text (18.4px bold or 24px regular) needs 3:1, and non-text UI components and meaningful graphics need 3:1 against adjacent colors. Test the real rendered pixels, including text over gradient or photo backgrounds where the ratio changes across the image, and test hover, focus, and disabled states separately. For PDFs and documents, sample the actual page colors, since theme swatches can differ from what prints. Record the measured ratio in your QA notes as evidence.

*Reference: WCAG 1.4.3 (AA); WCAG 1.4.11 (AA)*

### 341. Do not trust contrast plugins on gradients and images

Automated contrast checks assume a single flat background color, so they silently misjudge text placed over photographs, gradients, video, or semi-transparent overlays. In those cases the ratio varies pixel by pixel, and a scanner may report a pass using only one sampled point. Manually sample the lightest and darkest background areas the text actually crosses, and if any portion fails, the element fails. Common offenders include hero banners with captions, "read more" links over imagery, and white text on light sky photos. Fixes include adding a solid or sufficiently opaque scrim behind the text, adding a text shadow that meaningfully changes the ratio, or repositioning the text onto a solid band.

*Reference: WCAG 1.4.3 (AA); WCAG 1.4.11 (AA)*

### 342. Compare axe, WAVE, and Lighthouse on purpose

These three automated tools overlap but each has a niche, so use them deliberately rather than picking one. axe DevTools (browser extension) gives precise, low-false-positive rule results and clear remediation guidance, and it can test single states and components. WAVE overlays icons directly on the page, making it excellent for visualizing heading structure, contrast, and ARIA at a glance during a walkthrough. Lighthouse (in Chrome DevTools) bundles an accessibility score into broader page audits, handy for CI and stakeholder reports. Run at least two, because their rulesets differ and one will flag issues the other misses. None replaces manual testing; together they simply widen your automated coverage of that 30 to 40 percent.

*Reference: WCAG 2.1 AA; WCAG-EM*

### 343. Test dynamic states, not just page load

Scanners usually snapshot the page as first loaded, so they miss accessibility problems that appear only after interaction. Manually trigger and re-test every dynamic state: open modals and menus, expand accordions, submit a form to surface validation errors, load "show more" content, and open date pickers and autocomplete lists. Check that newly revealed content receives focus appropriately, that error messages are announced by a screen reader, and that focus returns sensibly when a dialog closes. Live-region updates, toast notifications, and loading spinners especially need manual verification because automated tools rarely observe them. Build a short list of the interactive states on each template so QA covers them consistently rather than only auditing the static initial view.

*Reference: WCAG 4.1.3 (AA); WCAG 3.3.1 (A)*

### 344. Write a repeatable remediation-QA checklist

Ad hoc testing produces inconsistent results, so codify your process into a written checklist that every deliverable must clear before sign-off. A solid PDF checklist covers: document title set and shown in the title bar, language specified, tags present and logical, reading order verified, headings nested correctly, alt text meaningful, tables with header cells, no untagged content, PAC pass, and Acrobat check clean. A web checklist covers automated scan, keyboard pass, screen-reader pass, contrast measurements, and dynamic-state checks. Store it as a template and record pass or fail per item with the tester's initials and date. The checklist makes QA auditable, trainable for new staff, and defensible if a client's compliance is ever questioned.

*Reference: WCAG-EM; WCAG 2.1 AA*

### 345. Regression-test after every content or template change

Accessibility is not a one-time pass; a single CMS template edit, plugin update, or new content block can silently reintroduce barriers across hundreds of pages. Establish a regression routine: after any change to shared templates, components, or the design system, re-run automated scans on representative pages and repeat a short manual keyboard and screen-reader spot-check on the affected patterns. For documents, re-validate whenever the source is re-exported, because edits in Word often strip or scramble the tags you fixed. Keep a small set of "canary" pages and files that you re-test every release. Catching a regression the week it ships is far cheaper than discovering it in a complaint months later.

*Reference: WCAG-EM; ADA Title II*

### 346. Automate accessibility checks in CI

For clients with active development, bake automated testing into the build pipeline so regressions are caught before deploy. Tools like axe-core, jest-axe, Pa11y, or Lighthouse CI can run against components or rendered pages and fail the build when new violations appear. Set a baseline so existing known issues do not block work while new ones are flagged, and target high-traffic templates first. Be explicit with stakeholders that CI only guards the automated 30 to 40 percent; it prevents backsliding on machine-detectable rules but never replaces the manual keyboard and screen-reader passes done before release. Position it as a safety net that protects prior remediation investment, not as a compliance guarantee on its own.

*Reference: WCAG 2.1 AA; WCAG-EM*

### 347. Involve users with disabilities in testing

Nothing substitutes for watching real assistive-technology users attempt real tasks. Expert testing and tooling find defects, but people who rely on screen readers, magnification, voice control, or switch access daily surface usability barriers that pass every checkpoint, like a technically valid form that is exhausting to complete or a menu that is compliant but confusing. Recruit through disability organizations or paid usability panels, give testers concrete tasks such as "find and pay a parking ticket," and observe without steering. For public-sector clients this also demonstrates good-faith effort under ADA Title II. Budget for it on high-stakes flows: online payments, permit applications, court e-filing, and benefits enrollment are where lived-experience testing pays off most.

*Reference: ADA Title II; WCAG 2.1 AA*

### 348. Test at 400 percent zoom and reflow

Many barriers only appear when a page is magnified, so make zoom a standard manual check. In the browser press Ctrl+Plus (Cmd+Plus on Mac) up to 400 percent, or set the viewport to 1280px wide and zoom, and confirm content reflows into a single column without requiring horizontal scrolling to read a line of text. Watch for content that gets clipped, overlaps, or disappears, for sticky headers that swallow the screen, and for functionality that becomes unreachable. Also test 200 percent text-only scaling where available. Low-vision users depend on this heavily, and automated scanners do not evaluate it, so it must be part of every manual web QA pass.

*Reference: WCAG 1.4.10 (AA); WCAG 1.4.4 (AA)*

### 349. Confirm the PDF's document title and language

Two quick manual checks catch failures that are easy to overlook and common in government PDFs. First, the document title: in Acrobat go to File > Properties > Description, set a human-readable Title, then under Initial View set "Show" to "Document Title" so tabs and windows announce the title rather than the file name. Second, the language: in File > Properties > Advanced (or Reading Options), set the primary language so screen readers pronounce content correctly, and set language on any passages that differ. Both are required for PDF/UA and both are frequently missed even in otherwise well-tagged files. PAC will flag them, but verifying by hand takes seconds and prevents an embarrassing miss.

*Reference: PDF/UA clause 7.2; WCAG 3.1.1 (A)*

---

## Assistive Technology & How People Read

### 350. How screen reader users jump by heading

Screen reader users rarely read a page top to bottom. Instead they pull up a headings list — JAWS with Insert+F6, NVDA with Insert+F7, VoiceOver with the rotor (VO+U) set to Headings — and skim it like a table of contents to find the section they want. This only works if your real heading structure is tagged as headings (H1–H6), not text that merely looks big and bold. When you remediate a document, ask: would this heading list, read aloud alone, tell someone what the page contains and let them navigate straight to it? If it wouldn't, your visual hierarchy hasn't been exposed to assistive technology yet.

*Reference: WCAG 2.4.6 (AA), 1.3.1 (A)*

### 351. Why heading levels can't skip

When a screen reader announces "heading level 2," that number tells the user where they are in the outline — a level 3 sits inside a level 2, which sits inside the level 1. If your document jumps from H1 straight to H4, the AT still announces "level 4," implying two missing layers of context that were never there. Blind users navigate with keystrokes like "next heading at this level" (in NVDA, the number keys 1–6 jump to that specific level), so a broken sequence sends them to the wrong place. Nest headings in order without skipping down, even when a designer chose a smaller visual size purely for style. Fix the tag level, not the font.

*Reference: WCAG 1.3.1 (A); PDF/UA heading nesting*

### 352. Landmarks let users skip to the main content

Sighted users glance past the banner, nav, and sidebar in a fraction of a second. Screen reader users can't — unless you provide landmark regions. Roles like banner, navigation, main, complementary, and contentinfo (in HTML, the header, nav, main, aside, and footer elements, or ARIA role attributes) appear in a landmarks list the user can jump through: NVDA's Insert+F7, or the VoiceOver rotor set to Landmarks. The single most valuable one is main, because it lets someone bypass the repeated header on every page and land directly on the unique content. When you remediate, confirm there is exactly one main region and that navigation blocks are marked as such.

*Reference: WCAG 1.3.1 (A), 2.4.1 (A)*

### 353. Link text has to make sense out of context

Screen reader users often pull up a list of every link on the page — NVDA and JAWS with Insert+F7, VoiceOver's rotor set to Links — to scan where they can go. In that list the links are stripped of surrounding sentences, so twenty entries all reading "click here," "read more," or "learn more" are useless. Each link's accessible name should describe its destination on its own: "Download the 2026 accessibility report" rather than "click here." In PDFs, the link's alternate text carries this; on the web, the visible link text usually does. When you remediate, read only the link text aloud and ask whether you'd know where it leads.

*Reference: WCAG 2.4.4 (A), 2.4.9 (AAA)*

### 354. How a screen reader reads a data table

In a properly tagged data table, a screen reader tracks which row and column the user is in and, as they move cell to cell with the table navigation keys (JAWS and NVDA use Ctrl+Alt+arrow keys), it re-announces the relevant header — "Revenue, Q3, $4.2 million." That orientation depends entirely on header cells being marked as headers (TH in HTML, TableHeader/TH tags with scope in PDF) and associated with their data cells. If the table is just a grid of untagged cells, the user hears a stream of numbers with no idea what any of them mean. When you remediate a table, confirm header rows and columns are tagged as headers, and reserve real tables for real tabular data, never for layout.

*Reference: WCAG 1.3.1 (A); PDF/UA table structure*

### 355. Refreshable braille displays read your tags too

Some users don't listen to a screen reader — they read it by touch on a refreshable braille display, a row of pins that rise and fall to form braille cells, refreshing line by line as they pan across content. The display shows the same information the screen reader computes: the text, plus the role and state it derives from your tags. A well-tagged heading shows up flagged as a heading; a button announces as a button. Because braille is slower to read than speech is to hear, concise, meaningful text and accurate structure matter even more. Alt text that rambles or link text that repeats wastes real physical effort. Everything you do for speech output serves braille readers simultaneously.

*Reference: WCAG 4.1.2 (A), 1.1.1 (A)*

### 356. Screen magnification and the tyranny of the viewport

A low-vision user running screen magnification at 400% might see only a few square inches of the screen at a time, like reading a page through a paper-towel tube. They scroll constantly and lose the big picture, so anything that appears far from where they're focused — an error message at the top of a form, a status update in a corner — can go completely unnoticed. Keep related content close together, place error messages adjacent to the field they describe, and avoid layouts that force the eye across large empty gaps. When you remediate, imagine navigating with only a small window of the page visible and everything else off-screen.

*Reference: WCAG 1.4.10 (AA) Reflow*

### 357. Reflow: content must survive being zoomed

When a low-vision user zooms a web page to 400% (or narrows the window), accessible content should reflow into a single column so they never have to scroll horizontally to read a line — bidirectional scrolling makes reading exhausting and is a common failure. This is why fixed-width layouts, content locked into wide tables, and text baked into images break down: they can't reflow. Test by setting your browser to a 1280px width and zooming to 400%, roughly a 320px CSS viewport, and confirm text stacks and remains readable with only vertical scrolling. For documents, PDFs offer poor reflow, which is one reason an accessible HTML alternative often serves low-vision users far better.

*Reference: WCAG 1.4.10 (AA)*

### 358. Voice control needs the name it can see to match the name it can say

Speech-input users (Dragon, Voice Control on Mac/iOS, Voice Access on Android) operate by saying a control's visible name — "click Submit," "tap Search." That only works if the control's accessible name contains its visible text. A common breakage: a button labeled "Search" visually but given an aria-label of "Find products" — the user says "click Search," nothing happens, because the programmatic name doesn't match what they read. Keep the accessible name consistent with the visible label (start it with the visible text at minimum). Icon-only buttons are especially risky, since the user can't guess the invisible name to speak. This is why "label in name" exists as a distinct requirement.

*Reference: WCAG 2.5.3 (A) Label in Name*

### 359. Switch access moves through your focus order one stop at a time

Some users can't use a mouse or full keyboard and instead operate a switch — a single button, sip-and-puff, or head movement — that steps through interactive elements one at a time while they wait for the item they want to be highlighted, then activate it. Every extra tab stop is literally more waiting and more physical effort. This makes a clean, logical focus order and the ability to skip repeated blocks genuinely valuable, not just nice to have. Provide "skip to main content" links, avoid keyboard traps that strand the user, and don't scatter dozens of focusable elements a switch user must crawl through. Efficient structure is an accessibility feature for them.

*Reference: WCAG 2.1.1 (A), 2.4.1 (A)*

### 360. Read-aloud tools depend on the same order as screen readers

Text-to-speech and read-aloud tools — Microsoft's Immersive Reader, Adobe Acrobat's Read Out Loud, browser reading modes, and built-in OS narration — help people with dyslexia, low literacy, low vision, or fatigue by speaking content in sequence. They read in the document's underlying content order, not the visual left-to-right, top-to-bottom you see on screen. If a PDF was built so its reading order zig-zags — a caption before its figure, a sidebar interrupting a paragraph — the audio becomes nonsense even though the page looks fine. When you remediate, check the reading order explicitly (Acrobat's Reading Order tool or the Order/Tags panels) so read-aloud tools voice the content the way a person would actually read it.

*Reference: WCAG 1.3.2 (A); PDF/UA logical reading order*

### 361. Roles, names, and states: the three things AT must announce

For every interactive element, assistive technology needs to convey three things: its role (what kind of thing it is — button, checkbox, link), its name (which one — "Accept terms"), and its state (its current condition — checked, expanded, disabled). A user hears "Accept terms, checkbox, not checked." If any piece is missing — a custom toggle with no role, an unlabeled field, an expand/collapse control that never reports collapsed vs. expanded — the user can't understand or operate it. Native HTML controls provide all three for free, which is why they beat custom widgets. When you build or remediate a custom control, verify each of the three is exposed, using ARIA (role, accessible name, aria-expanded/aria-checked) only where native elements can't.

*Reference: WCAG 4.1.2 (A) Name, Role, Value*

### 362. Keyboard-only users need to see where focus is

Many people never touch a mouse — motor-disability users, screen reader users, and power users all navigate by Tab, Shift+Tab, Enter, and arrow keys. Two things must be true for them: every interactive element must be reachable and operable by keyboard, and they must always be able to see which element currently has focus. A visible focus indicator — the outline or highlight that moves as you Tab — is their cursor; designers who remove it with CSS "outline: none" leave keyboard users lost. When you remediate, tab through the entire page and watch: does focus reach everything, move in a sensible order, never get trapped, and stay clearly visible at every stop?

*Reference: WCAG 2.1.1 (A), 2.4.7 (AA)*

### 363. Cognitive-accessibility supports reduce the load, not just the barriers

Assistive strategies for cognitive disabilities are often about consistency and predictability rather than a specific device. Users with memory, attention, or learning disabilities benefit when navigation appears in the same place on every page, when components that do the same thing look and are labeled the same way, and when instructions are plain and broken into steps. Reading tools that simplify vocabulary, strip clutter, or highlight the current line (Immersive Reader again) build on well-structured content. When you remediate, favor short sentences, clear headings that let people find and re-find information, consistent labels, and no unexpected changes when a user focuses or fills a field. Structure that helps screen readers usually helps cognition too.

*Reference: WCAG 3.2.3 (AA), 3.2.4 (AA), 3.3.2 (A)*

### 364. Mobile screen readers: VoiceOver and TalkBack gestures

Most people don't realize how many disabled users are on phones. iOS VoiceOver and Android TalkBack turn touch into an audio interface: users swipe left and right to move element by element, double-tap to activate whatever was last spoken, and use a rotor (VoiceOver) or reading-control menu (TalkBack) to jump by headings, links, and other element types — the same navigation model as desktop. All of it relies on the same accessible names, roles, and structure. Tap targets that are too small or crammed together are hard to hit; content that only responds to a custom swipe or pinch may be unreachable. When you remediate anything meant for mobile, test it with VoiceOver or TalkBack actually turned on.

*Reference: WCAG 2.5.5 (AAA) Target Size, 4.1.2 (A)*

### 365. Alt text is what a screen reader says in place of the image

A blind user never sees your image — the screen reader speaks its alternate text instead, so the alt text literally is the image for them. Good alt text conveys the image's purpose in context: a chart's key takeaway, a photo's relevant content, the destination of a linked logo. Decorative images that add no information should be marked so AT skips them entirely (empty alt="" in HTML, an Artifact in PDF), sparing the user meaningless announcements. Avoid "image of" — the AT already announces it's a graphic. And never leave the AT to read a cryptic filename like "IMG_4821.jpg" aloud, which is what happens when alt text is missing. When you remediate, write what a person needs to know, not what the picture looks like.

*Reference: WCAG 1.1.1 (A); PDF/UA figure alternate text*

---
