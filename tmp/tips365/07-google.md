### Use real heading styles in Google Docs, not big bold text

In Google Docs, apply structure with the paragraph-style menu on the toolbar (the box that reads "Normal text") or with Format > Paragraph styles > Heading 1/2/3. Never fake a heading by selecting text and just enlarging it or bolding it; screen readers see manually styled text as an ordinary paragraph and lose the ability to jump between sections. Keyboard shortcuts speed this up: Ctrl+Alt+1 for Heading 1, Ctrl+Alt+2 for Heading 2, and so on (Cmd on Mac). Use one Heading 1 as the document title, then nest Heading 2 and Heading 3 without skipping levels so the outline reflects the true hierarchy.

*Reference: WCAG 1.3.1 (A), 2.4.6 (AA)*

### Turn on the document outline to verify heading structure

Open View > Show outline (or press Ctrl+Alt+A then Ctrl+Alt+H) to reveal the outline pane on the left of a Google Doc. This pane is built entirely from your Heading 1/2/3 styles, so it doubles as a fast accessibility check: if a section you expect is missing, that text is not tagged as a heading; if the nesting looks wrong, your levels are out of order. Click any outline entry to jump there. Reviewing the outline before you export to PDF or Word is the quickest way to confirm the heading tree a screen-reader user will navigate is complete and correctly ordered.

*Reference: WCAG 2.4.10 (AAA), 1.3.1 (A)*

### Add alt text to images in Google Docs

Select an image in Google Docs, right-click and choose Alt text (or press Ctrl+Alt+Y), then type a concise description in the Description field. Describe the image's purpose in context rather than listing every visual detail, and skip phrases like "image of" since assistive tech already announces the graphic. For a chart or diagram that conveys data, summarize the key takeaway and, if the full data matters, provide it in nearby text or a table. Leave the Title field alone in most cases; the Description is what screen readers announce. Purely decorative images are hard to mark as such in Docs, so avoid them or move them into a caption context.

*Reference: WCAG 1.1.1 (A)*

### Build accessible tables in Google Docs with a real header row

Insert tables through Insert > Table in Google Docs and reserve the first row for column headers. Right-click the table, open Table properties, and under Row check "Pin header row to top of each page" so the header repeats across page breaks. Keep the layout simple: avoid merged or split cells, nested tables, and blank rows used only for spacing, because these confuse the reading order screen readers follow cell by cell. Never use a table just to position text side by side; use columns or a proper layout instead. Google Docs support for programmatic header association is limited, so verify tagging after export with a checker like Grackle or Acrobat.

*Reference: WCAG 1.3.1 (A)*

### Use the built-in list tools instead of typing dashes

Create bulleted and numbered lists in Google Docs with the toolbar list buttons or Format > Bullets & numbering, not by typing hyphens, asterisks, or "1." manually. Real lists are announced by screen readers as "list of N items," giving users count and position; hand-typed markers are just characters and carry no structure. Use Tab and Shift+Tab within a list to create and promote nested sublevels so the hierarchy is programmatic. When you export to Word or PDF, only genuine list structures tag correctly, so converting a fake list into a real one before export prevents a whole class of remediation later.

*Reference: WCAG 1.3.1 (A)*

### Write meaningful link text with the Google Docs link chooser

Select the words you want to be the link, press Ctrl+K (Cmd+K on Mac) to open the link chooser, and make the visible text describe the destination, such as "download the accessibility policy," never "click here" or a bare URL. Screen-reader users often pull up a list of all links out of context, so each label must stand on its own. The link chooser also searches your Drive and suggests titles, which helps you name links clearly. Avoid pasting long raw URLs as link text, since a screen reader will read every character aloud. One clear phrase per link keeps the link list navigable.

*Reference: WCAG 2.4.4 (A), 2.4.9 (AAA)*

### Give every Google Slide a unique, filled-in title

Every slide needs a title that appears in a title placeholder, because that title is what a screen-reader user hears first and uses to navigate the deck. Start from a layout that includes a title placeholder (Slide > Apply layout, or the Layout button), then type into it rather than dropping in a floating text box. If a slide's design hides the title visually, you can move the title placeholder off the visible canvas so it stays in the accessibility tree without showing. Make each title distinct so users can tell slides apart. Skipping the placeholder and using a plain text box means the slide has no programmatic title at all.

*Reference: WCAG 2.4.6 (AA), 1.3.1 (A)*

### Set reading order on a Google Slide by arranging objects

Google Slides derives reading order largely from the order in which objects were added and their arrangement, not from visual position, so a screen reader may read a slide in a confusing sequence. To control it, select an object and use Arrange > Order (Bring to front / Send to back) and check that placeholders come before decorative shapes. Because Slides gives you less direct reading-order control than PowerPoint, keep slides simple with few overlapping objects, and verify the spoken order with a screen reader or after export. When precise order is critical, an add-on like Grackle Slides exposes and lets you fix the reading sequence before you publish.

*Reference: WCAG 1.3.2 (A)*

### Add alt text to images and shapes in Google Slides

In Google Slides, select an image, shape, or grouped object, right-click and choose Alt text (or press Ctrl+Alt+Y), and describe what it conveys on that slide. For a decorative divider or background flourish that adds no meaning, you can enter a single space or minimal text to keep it from distracting, though Slides lacks a true "decorative" flag. Group related shapes first (right-click > Group), then add one combined description instead of many fragmentary ones. Charts and infographics need a text alternative that states the point they make, with the underlying numbers provided in the speaker notes or an accompanying document so no information is image-only.

*Reference: WCAG 1.1.1 (A)*

### Name Sheets tabs meaningfully and give data a header row

In Google Sheets, rename each tab by double-clicking it and typing a descriptive name like "Q3 Budget" instead of "Sheet1," because tab names help screen-reader users understand which grid they are in. Put a clear header row across the top of your data and freeze it with View > Freeze > 1 row so headers stay associated as users scroll. Keep one table per sheet, start data in cell A1, and avoid blank rows or columns splitting a range, since gaps make assistive tech treat one table as several. Do not merge cells for layout; merged cells break the predictable row-and-column model screen readers rely on to announce coordinates.

*Reference: WCAG 1.3.1 (A)*

### Avoid conveying meaning in Sheets by color alone

In Google Sheets, do not rely only on cell fill color or conditional-formatting color to communicate status, because color is invisible to many users and to screen readers. Pair every color cue with a text label, symbol, or a dedicated status column: add "Overdue" text next to a red cell, or a checkmark character alongside a green one. When you build charts, use distinct patterns, labels, or markers in addition to hue so lines and bars are distinguishable without color. Check contrast between cell text and fill, aiming for at least 4.5:1 for normal text, so low-vision users can read the values you have highlighted.

*Reference: WCAG 1.4.1 (A), 1.4.3 (AA)*

### Prefer exporting to Word (.docx) over PDF when tagging matters

Google Docs' native PDF export (File > Download > PDF document) produces weak or incomplete tagging: headings, lists, and table headers often do not survive as a proper structure tree. If your deliverable must be an accessible PDF, a more reliable path is File > Download > Microsoft Word (.docx), then open it in Word and export a tagged PDF from there, or use a dedicated add-on. Whatever route you take, always run the result through an accessibility checker such as Acrobat's or Grackle's, because Google's export is the point where structure most commonly gets lost. Never assume a Google-generated PDF is tagged just because the source Doc looked correct.

*Reference: PDF/UA (ISO 14289); WCAG 1.3.1 (A)*

### Use Grackle add-ons to check and export Google files

Grackle Docs, Slides, and Sheets are third-party Google Workspace add-ons (install via Extensions > Add-ons > Get add-ons) that audit a file against WCAG-style rules and, importantly, export a properly tagged PDF that preserves headings, lists, tables, alt text, and reading order that Google's own PDF export tends to drop. Run the Grackle panel to get a checklist of issues, fix each in the source document, then use Grackle's Export to tagged PDF rather than File > Download. For public-entity clients this closes the biggest remediation gap in the Google ecosystem. Confirm the client has appropriate licensing, and still spot-check the output in Acrobat before publishing.

*Reference: PDF/UA (ISO 14289); WCAG 2.1 AA*

### Check color contrast for text in Docs and Slides

Google Docs and Slides let you set text and highlight colors freely, so verify contrast rather than trusting the palette. Aim for at least 4.5:1 between text and its background for normal text and 3:1 for large text (roughly 18pt, or 14pt bold). Watch out for light gray body text, colored text on colored fills, and text placed over photos in Slides, where the effective background varies. Because neither app has a built-in contrast meter, sample the foreground and background hex values (via the custom color picker) and test them in an external contrast checker, or let a Grackle audit flag failing combinations for you before you publish or export.

*Reference: WCAG 1.4.3 (AA)*

### Keep sharing permissions open enough for assistive tech

When you share a Google Doc, Slide, or Sheet, or its exported file, make sure the link and permission settings do not block assistive-technology users. Use the Share dialog to grant at least Viewer access to the intended audience, and prefer "Anyone with the link" for broadly public content so a screen-reader user is not stopped by a sign-in wall. Avoid "Disable options to download, print, and copy" for viewers, because that setting can prevent screen readers and braille tools from extracting the text they need. For a truly public government document, publishing to the web (File > Share > Publish to web) or attaching an accessible PDF gives the most reliable access.

*Reference: ADA Title II; WCAG 2.1 AA*

### Point users to Google's built-in screen-reader and braille support

Google Docs, Slides, and Sheets have a dedicated screen-reader mode you enable under Tools > Accessibility > "Turn on screen reader support," which improves announcements for users of ChromeVox, NVDA, JAWS, or VoiceOver and unlocks braille support. Once on, an Accessibility menu appears in the menu bar with navigation and verbalization commands. When you author or remediate for a public entity, note this setting in your documentation so end users know to enable it, and test your own file with it turned on plus an actual screen reader. Braille display users especially benefit, since braille output depends on the same accessibility mode being active.

*Reference: WCAG 4.1.2 (A)*

### Use captions and describe media embedded in Slides

If you embed a YouTube video or insert a video (Insert > Video) in Google Slides, ensure the video itself carries accurate captions and, where needed, audio description, because Slides does not add these for you. For audio content, provide a transcript on the slide or in the speaker notes. Do not rely on YouTube's auto-captions for a public deliverable; review and correct them so they meet the accuracy a Title II entity needs. Give the video object alt text that names what it is, and make sure playback controls are reachable. Any information delivered only through the video must also exist as text somewhere in the presentation.

*Reference: WCAG 1.2.2 (A), 1.2.5 (AA)*

### Add a language and clear title in Google Docs before export

Set your document's title in File properties or simply as the first Heading 1, and make sure the file name in Drive is descriptive, because that name often becomes the PDF's title and appears in a screen reader's title announcement. Google Docs does not expose a document-language setting in the UI, but the file inherits your account and content language, which flows into the export; for mixed-language passages, this is a known gap, so plan to set language attributes in Word or the exported PDF afterward. A meaningful title and correct primary language help assistive tech pronounce content and let users identify the file among many open documents.

*Reference: WCAG 3.1.1 (A), 2.4.2 (A)*

### Verify structure after export instead of trusting the source

A Google Doc that looks perfectly structured on screen can still export to a poorly tagged PDF, so always treat export as a checkpoint, not a finish line. After File > Download > PDF, open the file in Acrobat Pro and run the Accessibility Check, or inspect the tag tree, to confirm headings, lists, table headers, alt text, and reading order actually carried over. Expect to fix reading order and table tagging most often, since these degrade the most in Google's export. For repeatable client work, standardize on a tagged export path (such as Grackle or a Word round-trip) and keep a short post-export checklist so nothing structural is silently lost.

*Reference: PDF/UA (ISO 14289); WCAG 1.3.1 (A)*

### Handle math and complex content that Google can't tag

Google Docs' equation tool (Insert > Equation) renders math as an image-like object without accessible MathML, so a screen reader cannot read the expression. For any client document with formulas, add a plain-language text description of each equation nearby, or author the math in a tool that produces MathML and bring it in as tagged content during a Word or PDF step. The same caution applies to complex flowcharts, org charts, and SmartArt-style graphics pasted into Docs or Slides: provide a full text equivalent, because Google will not generate one. Identifying these untaggable elements early in remediation prevents discovering unreadable content only after the file is published.

*Reference: WCAG 1.1.1 (A)*
