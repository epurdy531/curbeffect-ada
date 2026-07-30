### Automation catches only a third of issues

If a scan comes back "no errors," you are not done. Automated tools like axe, WAVE, and Lighthouse reliably catch roughly 30 to 40 percent of accessibility problems, mostly machine-detectable ones such as missing alt attributes, empty form labels, and low contrast on solid colors. They cannot judge whether alt text is meaningful, whether reading order makes sense, whether a heading is truly a heading, or whether a keyboard user can actually complete a task. Treat scanners as a first pass that clears the obvious defects, then budget most of your QA time for manual keyboard and screen-reader testing. Reporting a clean scan as "accessible" is the single most common mistake in ADA Title II remediation.

*Reference: WCAG-EM; WCAG 2.1 AA*

### Run Acrobat's Accessibility Checker the right way

In Acrobat Pro, open the Accessibility tool and choose "Accessibility Check" (formerly Full Check). In the options dialog, select all categories and run it against the whole document. The report tree groups results into Passed, Failed, Needs manual check, and Skipped. Do not ignore the "Needs manual check" items: logical reading order, color contrast, and meaningful alt text are flagged there precisely because Acrobat cannot verify them for you. Right-click any failed item for "Fix" or "Explain." Remember this checker validates against Acrobat's own ruleset, not full PDF/UA conformance, so a passing report is necessary but not sufficient. Follow it with PAC for a stricter PDF/UA verdict.

*Reference: PDF/UA (ISO 14289-1); WCAG 2.1 AA*

### Use PAC 2024 for a true PDF/UA verdict

PAC (PDF Accessibility Checker) 2024 from the PDF/UA Foundation is the free, authoritative tool for checking PDF/UA conformance and the PDF-specific WCAG mapping. It reports far more machine-testable failure conditions than Acrobat and gives a clear pass or fail per checkpoint. Use its "Logical Structure" view to walk the tag tree, and the "Screen Reader Preview" to see roughly how assistive technology will interpret the document. PAC still cannot judge whether alt text is accurate or whether reading order is sensible, so pair its verdict with manual review. When a client demands documented PDF/UA compliance, a clean PAC report plus your manual checklist is the standard evidence package.

*Reference: PDF/UA (ISO 14289-1); Matterhorn Protocol*

### Verify logical reading order in tagged PDFs

A PDF can pass automated checks and still read in the wrong order to a screen reader, because visual layout and tag order are independent. In Acrobat Pro, open the Tags panel and use "Reading Order" (Touch Up Reading Order) or, better, the Order panel to see the sequence assistive technology will follow. Multi-column pages, sidebars, and pull quotes are the usual culprits; a two-column newsletter often reads left column then jumps mid-sentence to the right. Confirm the tag tree matches the intended reading sequence, not the visual grid. Then sanity-check by navigating the document with NVDA's arrow keys or VoiceOver, since the Order panel shows structure but not the lived screen-reader experience.

*Reference: PDF/UA clause 7.2; WCAG 1.3.2 (A)*

### Know the blind spots of Word's Accessibility Checker

Word's built-in checker (Review > Check Accessibility) is genuinely useful for missing alt text, merged table cells, and using real heading styles, but it has real blind spots. It will not tell you if your heading levels skip from H1 to H3, whether your color contrast meets 4.5:1, whether link text is descriptive, or whether reading order will survive the export to PDF. It also cannot judge whether alt text is meaningful. Use it as a quick pre-flight, fix everything it flags, then still verify contrast with a dedicated analyzer and confirm the exported PDF's tags in Acrobat or PAC. The Word checker green light does not guarantee an accessible PDF.

*Reference: WCAG 2.1 AA; WCAG 1.4.3 (AA)*

### Test PowerPoint reading order per slide

PowerPoint's Accessibility Checker (Review > Check Accessibility) flags missing alt text and low-contrast concerns, but its biggest value is exposing slide reading order, which it does not fully validate on its own. Open Home > Arrange > Selection Pane on each slide: screen readers announce objects from the bottom of that list upward, so reorder items so the title comes first and content follows logically. The checker will not confirm this order makes sense, nor will it catch text trapped inside images or decorative shapes that should be hidden. After remediation, tab through the slide in Slide Show view and, ideally, listen with a screen reader to confirm the sequence matches what a sighted viewer sees.

*Reference: WCAG 1.3.2 (A); WCAG 2.1 AA*

### Push past Excel's checker limits

Excel's Accessibility Checker (Review > Check Accessibility) catches missing alt text on charts and images and flags default sheet names, but spreadsheet accessibility depends on things it cannot test. It will not verify that you have defined a header row with "Use First Row as Header," that your data region is a proper Table (Ctrl+T), that merged cells are absent, or that blank rows and columns are not fragmenting the table for a screen reader. It also cannot judge whether complex multi-tab workbooks have a sensible navigation flow. Name every sheet meaningfully, avoid merged cells, keep one table per region, and manually confirm a screen reader announces row and column headers when navigating cells.

*Reference: WCAG 1.3.1 (A); WCAG 2.1 AA*

### Validate EPUB with ACE by DAISY

For any EPUB deliverable, run ACE by DAISY, the free open-source EPUB accessibility checker. It produces an HTML report grouping violations by impact and by WCAG success criterion, and it surfaces EPUB-specific concerns such as missing page-list navigation, absent language declarations, and images lacking alt text. ACE also generates a "reading order" and heading outline you can review for structure problems. Like every automated tool it cannot judge alt-text quality or true reading logic, so follow it with a read-through in a real reading system such as Thorium Reader using a screen reader. Include the ACE report in your QA evidence when a library or education client needs documented EPUB accessibility.

*Reference: EPUB Accessibility 1.1; WCAG 2.1 AA*

### Build a keyboard-only test pass

Unplug the mouse and drive the whole page with Tab, Shift+Tab, Enter, Space, and the arrow keys. Confirm every interactive element is reachable, that focus order follows the visual flow, and that you never get trapped in a widget with no keyboard escape. Watch for a visible focus indicator at all times; if focus disappears behind a modal or into an off-screen menu, that is a failure. Test that custom controls (menus, tabs, sliders, date pickers) respond to the keys their ARIA pattern requires. Keyboard testing is fast, requires no special software, and catches a large share of real barriers that no scanner reports. Make it a mandatory step in every web QA cycle.

*Reference: WCAG 2.1.1 (A); WCAG 2.4.7 (AA)*

### Learn NVDA for free screen-reader testing

NVDA is a free, widely used Windows screen reader and should be in every remediator's toolkit. Learn a handful of commands: Insert+Down starts "say all," H jumps between headings, K between links, T between tables, D between landmarks, and Insert+F7 opens the Elements List to review headings, links, and landmarks at a glance. Testing with the browse-mode arrow keys reveals whether your structure actually communicates: do headings announce their level, do form fields announce their labels, do images announce useful descriptions or file names? Use Firefox or Chrome with NVDA for the most representative results. Because NVDA is free, it is the natural baseline before you invest in JAWS testing.

*Reference: WCAG 4.1.2 (A); WCAG 1.3.1 (A)*

### Test across more than one screen reader

Screen readers differ enough that passing one does not guarantee passing another. JAWS and NVDA on Windows, VoiceOver on macOS and iOS, and TalkBack on Android each interpret ARIA, tables, and PDFs slightly differently, and browser pairing matters too. A pragmatic minimum for a public-sector deliverable is NVDA plus Chrome or Firefox on Windows and VoiceOver plus Safari on macOS or iOS, since those cover the largest real-world usage. For mobile web or apps, add TalkBack. You do not need to test every combination on every page; pick representative templates and critical user flows. When a bug appears in only one screen reader, document which one, because the fix often depends on the specific behavior.

*Reference: WCAG 4.1.2 (A); WCAG 2.1 AA*

### Use VoiceOver and the rotor on Apple platforms

On macOS press Command+F5 to toggle VoiceOver; on iOS enable it in Settings > Accessibility. The key testing tool is the rotor: on the Mac use VO+U to page through headings, links, landmarks, and form controls; on iOS twist two fingers on the screen to switch rotor categories, then swipe up or down to move. This quickly reveals whether your heading outline is complete, whether landmarks exist, and whether links have meaningful text. VoiceOver testing is essential because Safari plus VoiceOver is the dominant assistive combination on Apple devices, and it exposes issues, such as unlabeled buttons and mis-ordered content, that Windows testing can miss.

*Reference: WCAG 2.4.1 (A); WCAG 4.1.2 (A)*

### Measure color contrast with a real analyzer

Do not eyeball contrast. Use TPGi's Colour Contrast Analyser (a free desktop app) or a browser tool to sample the exact foreground and background colors and read the ratio. Normal-size text needs 4.5:1, large text (18.4px bold or 24px regular) needs 3:1, and non-text UI components and meaningful graphics need 3:1 against adjacent colors. Test the real rendered pixels, including text over gradient or photo backgrounds where the ratio changes across the image, and test hover, focus, and disabled states separately. For PDFs and documents, sample the actual page colors, since theme swatches can differ from what prints. Record the measured ratio in your QA notes as evidence.

*Reference: WCAG 1.4.3 (AA); WCAG 1.4.11 (AA)*

### Do not trust contrast plugins on gradients and images

Automated contrast checks assume a single flat background color, so they silently misjudge text placed over photographs, gradients, video, or semi-transparent overlays. In those cases the ratio varies pixel by pixel, and a scanner may report a pass using only one sampled point. Manually sample the lightest and darkest background areas the text actually crosses, and if any portion fails, the element fails. Common offenders include hero banners with captions, "read more" links over imagery, and white text on light sky photos. Fixes include adding a solid or sufficiently opaque scrim behind the text, adding a text shadow that meaningfully changes the ratio, or repositioning the text onto a solid band.

*Reference: WCAG 1.4.3 (AA); WCAG 1.4.11 (AA)*

### Compare axe, WAVE, and Lighthouse on purpose

These three automated tools overlap but each has a niche, so use them deliberately rather than picking one. axe DevTools (browser extension) gives precise, low-false-positive rule results and clear remediation guidance, and it can test single states and components. WAVE overlays icons directly on the page, making it excellent for visualizing heading structure, contrast, and ARIA at a glance during a walkthrough. Lighthouse (in Chrome DevTools) bundles an accessibility score into broader page audits, handy for CI and stakeholder reports. Run at least two, because their rulesets differ and one will flag issues the other misses. None replaces manual testing; together they simply widen your automated coverage of that 30 to 40 percent.

*Reference: WCAG 2.1 AA; WCAG-EM*

### Test dynamic states, not just page load

Scanners usually snapshot the page as first loaded, so they miss accessibility problems that appear only after interaction. Manually trigger and re-test every dynamic state: open modals and menus, expand accordions, submit a form to surface validation errors, load "show more" content, and open date pickers and autocomplete lists. Check that newly revealed content receives focus appropriately, that error messages are announced by a screen reader, and that focus returns sensibly when a dialog closes. Live-region updates, toast notifications, and loading spinners especially need manual verification because automated tools rarely observe them. Build a short list of the interactive states on each template so QA covers them consistently rather than only auditing the static initial view.

*Reference: WCAG 4.1.3 (AA); WCAG 3.3.1 (A)*

### Write a repeatable remediation-QA checklist

Ad hoc testing produces inconsistent results, so codify your process into a written checklist that every deliverable must clear before sign-off. A solid PDF checklist covers: document title set and shown in the title bar, language specified, tags present and logical, reading order verified, headings nested correctly, alt text meaningful, tables with header cells, no untagged content, PAC pass, and Acrobat check clean. A web checklist covers automated scan, keyboard pass, screen-reader pass, contrast measurements, and dynamic-state checks. Store it as a template and record pass or fail per item with the tester's initials and date. The checklist makes QA auditable, trainable for new staff, and defensible if a client's compliance is ever questioned.

*Reference: WCAG-EM; WCAG 2.1 AA*

### Regression-test after every content or template change

Accessibility is not a one-time pass; a single CMS template edit, plugin update, or new content block can silently reintroduce barriers across hundreds of pages. Establish a regression routine: after any change to shared templates, components, or the design system, re-run automated scans on representative pages and repeat a short manual keyboard and screen-reader spot-check on the affected patterns. For documents, re-validate whenever the source is re-exported, because edits in Word often strip or scramble the tags you fixed. Keep a small set of "canary" pages and files that you re-test every release. Catching a regression the week it ships is far cheaper than discovering it in a complaint months later.

*Reference: WCAG-EM; ADA Title II*

### Automate accessibility checks in CI

For clients with active development, bake automated testing into the build pipeline so regressions are caught before deploy. Tools like axe-core, jest-axe, Pa11y, or Lighthouse CI can run against components or rendered pages and fail the build when new violations appear. Set a baseline so existing known issues do not block work while new ones are flagged, and target high-traffic templates first. Be explicit with stakeholders that CI only guards the automated 30 to 40 percent; it prevents backsliding on machine-detectable rules but never replaces the manual keyboard and screen-reader passes done before release. Position it as a safety net that protects prior remediation investment, not as a compliance guarantee on its own.

*Reference: WCAG 2.1 AA; WCAG-EM*

### Involve users with disabilities in testing

Nothing substitutes for watching real assistive-technology users attempt real tasks. Expert testing and tooling find defects, but people who rely on screen readers, magnification, voice control, or switch access daily surface usability barriers that pass every checkpoint, like a technically valid form that is exhausting to complete or a menu that is compliant but confusing. Recruit through disability organizations or paid usability panels, give testers concrete tasks such as "find and pay a parking ticket," and observe without steering. For public-sector clients this also demonstrates good-faith effort under ADA Title II. Budget for it on high-stakes flows: online payments, permit applications, court e-filing, and benefits enrollment are where lived-experience testing pays off most.

*Reference: ADA Title II; WCAG 2.1 AA*

### Test at 400 percent zoom and reflow

Many barriers only appear when a page is magnified, so make zoom a standard manual check. In the browser press Ctrl+Plus (Cmd+Plus on Mac) up to 400 percent, or set the viewport to 1280px wide and zoom, and confirm content reflows into a single column without requiring horizontal scrolling to read a line of text. Watch for content that gets clipped, overlaps, or disappears, for sticky headers that swallow the screen, and for functionality that becomes unreachable. Also test 200 percent text-only scaling where available. Low-vision users depend on this heavily, and automated scanners do not evaluate it, so it must be part of every manual web QA pass.

*Reference: WCAG 1.4.10 (AA); WCAG 1.4.4 (AA)*

### Confirm the PDF's document title and language

Two quick manual checks catch failures that are easy to overlook and common in government PDFs. First, the document title: in Acrobat go to File > Properties > Description, set a human-readable Title, then under Initial View set "Show" to "Document Title" so tabs and windows announce the title rather than the file name. Second, the language: in File > Properties > Advanced (or Reading Options), set the primary language so screen readers pronounce content correctly, and set language on any passages that differ. Both are required for PDF/UA and both are frequently missed even in otherwise well-tagged files. PAC will flag them, but verifying by hand takes seconds and prevents an embarrassing miss.

*Reference: PDF/UA clause 7.2; WCAG 3.1.1 (A)*
