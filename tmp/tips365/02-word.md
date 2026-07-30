### Use built-in Heading styles, not manual formatting

The single biggest thing that determines whether an exported PDF starts accessible is whether your Word document uses real Heading styles. In the Home tab's Styles gallery, apply Heading 1, Heading 2, and so on to section titles instead of just bolding text and bumping the font size. Manually formatted text looks like a heading but exports as ordinary body text with no structure, so screen reader users can't navigate by heading. Click into a line, pick the correct style from the gallery, and Word tags it as a heading in the PDF. Reserve Title style for the document's main title and use Headings for the outline.

*Reference: WCAG 1.3.1 (A); PDF/UA clause 7.4*

### Nest heading levels without skipping

Heading styles must describe a logical outline, so don't jump from Heading 1 straight to Heading 3 because you prefer the smaller look. Screen reader users rely on levels to understand how sections relate, and a skipped level reads as a missing or broken branch. If Heading 2 is too large for your taste, don't demote it to Heading 3 - instead modify the Heading 2 style's appearance (right-click it in the Styles gallery, choose Modify) so it looks the way you want while keeping the correct level. Use the View tab's Navigation Pane to see your heading tree at a glance and confirm each level follows its parent in order.

*Reference: WCAG 1.3.1 (A), 2.4.10 (AAA)*

### Build real bulleted and numbered lists

Create lists with the Bullets and Numbering buttons on the Home tab, never by typing a hyphen, asterisk, or "1." followed by a tab. Real lists export as tagged list structures (L, LI, LBody) that screen readers announce as "list, 5 items," letting users understand grouping and count. Fake lists made of manual characters are just paragraphs of text with no relationship between items. If you have a manually typed list, select it and click the Bullets or Numbering button to convert it. For ordered steps use Numbering so the sequence is conveyed; for unordered items use Bullets.

*Reference: WCAG 1.3.1 (A); PDF/UA clause 7.6*

### Use the Multilevel List tool for nested lists

When a list has sub-items, don't fake indentation with tabs or spaces - use Home tab's Multilevel List button. Choose a list style, then press Tab to demote an item to a sub-level and Shift+Tab to promote it. This creates properly nested list structures in the exported PDF, so a screen reader announces the hierarchy (for example, item 2, then its two sub-items) rather than reading a flat run of paragraphs. Consistent multilevel lists also make numbering restart and continue correctly. Avoid mixing manual indents with the tool, which produces inconsistent nesting that confuses assistive technology and looks fine only visually.

*Reference: WCAG 1.3.1 (A)*

### Insert tables with Insert Table, not tabs or spaces

Build data tables through the Insert tab's Table command so cells become real table structure in the PDF. Never simulate a table by aligning text with tabs, spaces, or by drawing text boxes - that produces no row/column relationships and screen reader users lose the ability to associate a value with its headers. A genuine Word table exports as tagged Table, TR, TH, and TD elements. Keep the layout simple: avoid merged or split cells where possible, since complex spans are hard to make accessible. If your content is a list rather than a data grid, use a list instead of a table.

*Reference: WCAG 1.3.1 (A); PDF/UA clause 7.5*

### Designate a header row and repeat it

After inserting a table, mark its top row as a header so screen readers announce column names when navigating cells. Click inside the table, go to the Table Layout (Table Tools Layout) tab, and turn on Repeat Header Rows for the first row; also confirm the Table Design tab has Header Row checked. Repeat Header Rows makes the header reappear when a long table breaks across pages and, more importantly, tags that row as header cells (TH) in the PDF. Without a designated header, every cell is plain data and users can't tell which column a value belongs to. Set this on every data table before exporting.

*Reference: WCAG 1.3.1 (A); PDF/UA clause 7.5*

### Avoid splitting tables across pages awkwardly

Long tables should flow naturally with a repeating header, but you should still control how rows break. In Table Properties (right-click the table, choose Table Properties, Row tab), turn OFF "Allow row to break across pages" so a single row's content isn't split between two pages, which fragments cell relationships and reading order in the PDF. Keep the header row set to repeat so context follows the data. Don't insert manual blank rows or hard page breaks inside a table to force spacing - those create empty cells that screen readers announce as blank and disrupt the table's row and column counts.

*Reference: WCAG 1.3.1 (A)*

### Don't use tables for page layout

Tables in Word should hold tabular data only, not arrange text and images into columns or a grid. Layout tables export as data tables in the PDF, so a screen reader announces meaningless "column 1, row 2" navigation over content that has no rows-and-columns meaning. For side-by-side content use the Columns tool; for positioning use paragraph alignment and spacing. If you inherit a document that uses a table purely for layout, rebuild the content with proper styles, columns, or text flow. Reserve the Insert Table command for information that genuinely has a header-and-data relationship the reader needs to perceive.

*Reference: WCAG 1.3.1 (A); PDF/UA clause 7.5*

### Add alt text to every image, chart, and shape

Right-click any picture, chart, icon, or shape, choose View Alt Text (or Edit Alt Text), and write a concise description of what the image conveys. This text exports into the PDF as the element's alternate description so screen reader users get the meaning. Describe the purpose, not the pixels: for a chart, summarize the trend or key figure rather than saying "chart." Keep it brief - a sentence or two is usually enough - and don't start with "image of," which screen readers already announce. Do this for grouped shapes and SmartArt too, or replace them with real text and a described image.

*Reference: WCAG 1.1.1 (A); PDF/UA clause 7.3*

### Mark decorative images as decorative

Not every image needs a description. If a graphic is purely ornamental - a divider line, a background flourish, a repeated logo watermark that carries no information - open View Alt Text and check the "Mark as decorative" box instead of writing alt text. This tags the image as an artifact in the exported PDF so screen readers skip it, sparing users from meaningless announcements. Be honest about the distinction: a logo that identifies the issuing agency in a letterhead often does convey information and needs alt text, while the same logo used only as decoration does not. Never leave the alt text field simply blank hoping it's ignored.

*Reference: WCAG 1.1.1 (A); PDF/UA clause 7.1*

### Write meaningful hyperlink text

Select the words that should be the link, then use Insert tab, Link, and set the display text to something descriptive rather than pasting a raw URL or using "click here." A screen reader user pulling up a list of links needs each one to make sense out of context, so "Read the 2026 accessibility policy" beats "click here" and a bare "https://..." string. In the Insert Hyperlink dialog, put the friendly text in the "Text to display" field and the URL in the Address field. For documents meant to be printed as well, you can include the URL in text but still give the link a meaningful anchor phrase.

*Reference: WCAG 2.4.4 (A)*

### Create columns with the Columns tool

For newsletter-style or side-by-side text, use the Layout tab's Columns command, not multiple tab stops or two text boxes side by side. The Columns tool keeps a single, correct reading order in the exported PDF - the reader finishes the left column, then moves to the right. Tabs and text boxes scramble that order, causing screen readers to jump mid-sentence or read the wrong content first. If you need content to stop and start a new column at a specific point, insert a column break (Layout, Breaks, Column) rather than pressing Enter repeatedly. Verify the flow afterward with the Navigation Pane or by reading top to bottom.

*Reference: WCAG 1.3.2 (A)*

### Generate a Table of Contents from heading styles

Once your document uses real Heading styles, insert an automatic Table of Contents from the References tab, Table of Contents. Word builds it from your headings, and in the exported PDF each entry becomes a working link to its section plus contributes to the document's navigational structure. Never type a table of contents by hand with page numbers and dot leaders - it won't update, the page numbers drift, and the entries aren't linked. If you add or reorder sections, right-click the TOC and choose Update Field to refresh it. A generated TOC is also a quick audit: missing sections reveal headings you forgot to style.

*Reference: WCAG 2.4.1 (A), 2.4.5 (AA)*

### Set the document's default editing language

Screen readers use the document language to choose the correct pronunciation rules, so set it explicitly. Go to the Review tab, Language, Set Proofing Language, pick the correct language (for example English United States), and click "Set As Default" so new content inherits it. This language exports as the PDF's primary language attribute. Without it, a screen reader may read English text with a Spanish voice or the reverse, making content unintelligible. Confirm the setting on inherited documents too - files created from foreign templates sometimes default to the wrong language even when the visible text is English.

*Reference: WCAG 3.1.1 (A); PDF/UA clause 7.2*

### Tag foreign-language passages inline

When a paragraph or phrase switches languages - a Spanish notice inside an English document, a Latin motto, a quoted French term - select just that text and set its language separately through Review, Language, Set Proofing Language. Do not check "Set As Default"; this marks only the selection so the exported PDF carries a language change on that span. A screen reader then switches to the correct voice for those words and back again. This matters most for the public-facing bilingual notices common on government documents, where an untagged Spanish block read in an English voice is unusable to Spanish-speaking residents.

*Reference: WCAG 3.1.2 (AA)*

### Fill in the document Title property

A PDF should present a human-readable title in the reader's title bar and tab, and that comes from the Word file's Title property, not the filename. Go to File, Info, and in the Properties panel set the Title field to a clear name like "City of Example 2026 Budget Summary." When you export, this becomes the PDF's document title. Without it, the reader falls back to the filename, which is often cryptic (final_v3.pdf). After exporting, many workflows also need the PDF set to display the document title instead of the filename - but authoring it in Word first ensures the metadata is present to begin with.

*Reference: WCAG 2.4.2 (A); PDF/UA clause 7.1*

### Run the built-in Accessibility Checker before exporting

Word ships with an Accessibility Checker under the Review tab (Check Accessibility). Run it before every export; it flags missing alt text, tables without header rows, low-contrast text, blank headings, and more, with an Inspection Results pane that jumps you to each issue and suggests fixes. Turn on "Keep accessibility checker running while I work" so problems surface as you author rather than at the end. It won't catch everything - it can't judge whether your alt text is meaningful or your reading order makes sense - but clearing every error and warning it reports removes a large class of defects before they ever reach the PDF.

*Reference: ADA Title II; WCAG 2.1 AA*

### Modify styles instead of overriding formatting

When a heading or body style doesn't look right, resist the urge to manually change the font, size, or color on the text itself. Right-click the style in the Home tab Styles gallery, choose Modify, and change it there. This keeps the semantic style intact - the text stays a Heading 2 - while giving you the look you want, and every instance updates consistently. Manual overrides pile up as direct formatting that can mask the underlying structure and make the document harder to audit. Consistent, style-driven formatting also exports cleaner tags and makes later remediation far simpler than hunting through one-off changes.

*Reference: WCAG 1.3.1 (A)*

### Add footnotes and endnotes with the References tab

Insert footnotes and endnotes using References, Insert Footnote or Insert Endnote, rather than typing a superscript number by hand and putting the note at the bottom manually. The References tool creates a real reference-note relationship, so in the exported PDF the reference marker links to its note and screen readers can associate them. Hand-typed superscripts are just characters with no connection to the note text, leaving users unable to find or return from a note. The automatic numbering also renumbers correctly when you add or remove notes. This is the accessible way to handle citations, legal references, and explanatory asides.

*Reference: WCAG 1.3.1 (A)*

### Caption figures and tables with the References tool

Use References, Insert Caption to label figures and tables rather than typing "Figure 1" as loose text underneath. Captions stay associated with their object, renumber automatically, and can feed a Table of Figures. In the exported PDF the caption reads in proper order with its image or table. Remember that a caption is not a substitute for alt text - a caption is visible to everyone and names the figure, while alt text describes the visual content for screen reader users. Provide both: a caption identifying "Figure 3: Annual permit volume" and alt text summarizing what the chart actually shows.

*Reference: WCAG 1.1.1 (A), 1.3.1 (A)*

### Avoid text boxes for meaningful content

Text boxes float outside the main text flow, so content placed in them frequently lands in the wrong reading order in the exported PDF or gets dropped from the tag tree entirely. Don't use a text box for pull quotes, sidebars, callouts, or any words the reader needs. Instead put the content in the normal document body and style it - use a bordered paragraph, a shaded style, or a single-cell table only if truly needed. If a template forces text boxes on you, verify the reading order after export and move essential content into the main flow before delivering the document.

*Reference: WCAG 1.3.2 (A); PDF/UA clause 7.18*

### Don't put meaningful text in WordArt

WordArt turns text into a decorative graphic, and while Word can attach alt text to it, the styled letters are not real, selectable, searchable text and often carry poor contrast and distortion. Never use WordArt for headings, titles, or any content that conveys meaning. Use a proper Heading style with the font and color you want instead - it looks polished, stays real text, and exports as navigable structure. If you inherit a document with a WordArt title, replace it with a Title or Heading 1 styled paragraph. Reserve any purely decorative WordArt for elements you mark as decorative.

*Reference: WCAG 1.4.5 (AA); PDF/UA clause 7.3*

### Replace SmartArt with real text plus a described image

SmartArt diagrams look organized but export unpredictably: the reading order of nodes is often scrambled and the text inside shapes may not tag reliably. For process flows, org charts, or cycle diagrams that carry information, don't rely on raw SmartArt in a document headed for PDF. Either provide the same information as a real bulleted or numbered list nearby, or convert the SmartArt to a picture and give it thorough alt text describing the relationships. If you keep SmartArt, add alt text to the whole graphic explaining its meaning, and always verify the reading order after export before delivering.

*Reference: WCAG 1.1.1 (A), 1.3.2 (A)*

### Accept or reject all tracked changes before exporting

Tracked changes and their markup can carry into or confuse an exported PDF, and leftover revision marks clutter the reading order and may expose content that should be gone. Before exporting, open the Review tab, and under Accept choose "Accept All Changes and Stop Tracking" (or reject as appropriate). Also set the display to "No Markup" is not enough - hidden tracked changes still exist until resolved. Finalizing revisions gives you a clean document whose tags reflect only the real content. This is also a privacy step for government documents, since tracked edits can reveal internal deliberations you didn't intend to publish.

*Reference: WCAG 1.3.1 (A)*

### Delete all comments before delivery

Review comments are notes for collaborators, not content for the public, and they can linger in a delivered file. Before exporting to PDF, go to the Review tab, click the Comments dropdown, and choose Delete All Comments in Document. Leftover comments clutter the exported file, may appear in the PDF's markup, and on government documents can leak internal discussion. Pair this with resolving tracked changes and running Document Inspector (File, Info, Check for Issues, Inspect Document) to sweep for hidden metadata, comments, and revision data. A clean source document produces a cleaner, safer, and more navigable accessible PDF.

*Reference: ADA Title II; WCAG 2.1 AA*

### Start from an accessible template

Save your team repeated effort by building or adopting a Word template (.dotx) that already has correct Heading styles, a set language, a filled Title placeholder, accessible list styles, and no reliance on text boxes or WordArt. Store it in File, New so every new document inherits good structure from the first keystroke. An accessible template prevents the most common defects - unstyled headings, wrong language, missing title - before they happen, which is far cheaper than remediating each finished document. Review the template itself with the Accessibility Checker, and update it whenever you discover a recurring issue so the fix propagates to all future documents.

*Reference: ADA Title II; WCAG 2.1 AA*

### Create white space with paragraph spacing, not empty lines

Don't press Enter repeatedly to push content down the page. Empty paragraphs export as blank lines that a screen reader announces as "blank, blank, blank," and they disrupt the reading flow. To add space before or after a heading or paragraph, use the paragraph's Space Before and Space After settings in the Layout tab or in the Paragraph dialog, ideally baked into the style. For a fresh page, insert a real page break (Ctrl+Enter or Insert, Page Break) instead of hitting Enter until the cursor jumps. The result is clean spacing that looks the same but produces no phantom blank lines in the PDF.

*Reference: WCAG 1.3.1 (A)*

### Handle watermarks so they don't disrupt reading

A "DRAFT" or "CONFIDENTIAL" watermark added via Design, Watermark sits in the header layer and normally exports as a background artifact, which is fine - but a watermark inserted as a floating text box or WordArt in the body can land in the reading order and be announced mid-content. Use the built-in Watermark feature so the mark is treated as decorative, and if the watermark carries essential meaning (a legal status the reader must know), don't rely on the visual alone - state it in real text somewhere in the document. After export, confirm the watermark isn't read aloud as stray text within the content.

*Reference: WCAG 1.3.1 (A); PDF/UA clause 7.1*

### Keep essential content out of headers and footers

Content placed in the Word header/footer area (Insert, Header/Footer) is treated as a running artifact and repeated on every page, and screen readers typically skip it as background. That's correct for page numbers and running titles - but it means any information the reader actually needs must live in the main body, not only in the footer. Don't hide a phone number, effective date, or legal notice solely in a footer where assistive technology may not surface it. Use headers and footers for genuine page furniture (page numbers, document name) and put substantive content in the body where it's tagged as real reading material.

*Reference: WCAG 1.3.1 (A); PDF/UA clause 7.8*

### Auto-number pages instead of typing page numbers

Insert page numbers through Insert, Page Number so they live in the header or footer as running content that updates automatically. Never type a page number by hand into the body text - it won't update when content shifts, it can land in the reading order and be read aloud in the wrong place, and it clutters the tag tree. Automatic page numbers are treated as pagination artifacts in the exported PDF and stay out of the way of assistive technology. This also keeps long documents correct as you edit, avoiding the mismatched numbers that plague hand-numbered files.

*Reference: WCAG 1.3.1 (A); PDF/UA clause 7.8*

### Set table reading order and check cell flow

Even a properly built Word table can read in an unexpected order if cells are merged or if the table is nested. Word reads tables left to right, top to bottom, so design your data grid to make sense that way and avoid merged cells that break the pattern. Tab through the cells in the order you expect them to be read; if the logical order doesn't match, restructure the table. For a table that must convey a specific sequence, keep it a simple grid with one header row. Verifying cell flow in Word prevents scrambled table narration in the exported PDF.

*Reference: WCAG 1.3.2 (A); PDF/UA clause 7.5*

### Don't convey information with color or formatting alone

When a document uses red text, highlighting, or bold to flag something - "items in red are overdue," "highlighted rows need action" - that cue is invisible to screen reader users and to people who can't distinguish the colors. In Word, add a real text label alongside the visual: write "(overdue)" next to the item, add a status column to the table, or state the meaning in a sentence. Formatting like bold and color does not carry into the PDF as information a screen reader announces. Build the meaning into words so every reader gets it, then use color as reinforcement rather than the sole signal.

*Reference: WCAG 1.4.1 (A), 1.3.3 (A)*
