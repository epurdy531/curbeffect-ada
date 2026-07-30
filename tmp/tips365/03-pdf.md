### Run the Accessibility Checker first, then plan

Before touching anything, open All Tools > Prepare for Accessibility > Check Accessibility, accept the defaults, and read the report tree it generates in the left panel. Do not start fixing at random; the report groups issues under Document, Page Content, Forms, Tables, and Alternate Text, and it tells you which failures are machine-checkable versus flagged "Needs manual check" (like logical reading order and color contrast). Right-click any item for Fix, Skip Rule, or Explain. Use the report as your worklist and your final sign-off, but remember it only detects roughly a third of real barriers, so a clean report is a starting point, not proof of conformance.

*Reference: Adobe Acrobat Accessibility Checker; WCAG 2.1 AA*

### Autotag as a starting draft, never a finish line

All Tools > Prepare for Accessibility > Autotag Document makes Acrobat guess a tag tree from visual layout. Treat that output as a rough first draft only. Autotag routinely mislabels headings as paragraphs, merges columns, turns real tables into streams of paragraphs, tags decorative lines as figures, and drops list structure. After autotagging, always open the Tags panel and the Reading Order tool to verify and repair. For a document with heavy layout, autotag then fix is far faster than manual tagging, but for a clean single-column report the machine output may need little correction. The point: autotag saves keystrokes, it does not confer accessibility.

*Reference: PDF/UA clause 7.1; WCAG 1.3.1 (A)*

### Understand the three views of structure

Acrobat exposes three different panels and they are not the same thing. The Tags panel shows the real logical structure tree that assistive technology reads. The Order panel (from the Reading Order tool) shows a simplified, page-by-page numbered sequence that is easier to reshuffle but hides tag detail. The Reading Order tool itself paints colored boxes over content so you can retag regions visually. Changes in one view affect the others, but the Tags tree is authoritative. Use Order for quick sequence fixes, Reading Order for bulk region retagging, and always confirm the final result in the Tags panel, which is where scope, headings, and nesting truly live.

*Reference: PDF/UA clause 7.1; WCAG 1.3.2 (A)*

### Turn on the Tags panel and read the tree

Open the Tags panel (Accessibility tools, or View > Show/Hide > Navigation Panes > Tags). This tree of <Document>, <H1>, <P>, <Table>, <L>, and <Figure> elements is the actual structure screen readers announce. Expand it fully and walk it top to bottom while watching the document; enable Options > Highlight Content so selecting a tag outlines the matching content on the page. If highlighting a tag lights up nothing, or lights up the wrong region, the tree is out of sync with reality. Learning to read this tree fluently is the single most important Acrobat remediation skill, because almost every other fix is verified here.

*Reference: PDF/UA clause 7.1; WCAG 1.3.1 (A)*

### Set the document Title and DisplayDocTitle

A screen reader announces the document Title, not the filename, so an untitled PDF is announced as a cryptic filename. In File > Properties > Description, enter a meaningful Title. Then, critically, go to File > Properties > Initial View and set "Show" to "Document Title" so the title actually gets used; this flips the DisplayDocTitle flag to true. The Accessibility Checker flags "Title" as failed until both the Title field is populated and DisplayDocTitle is on. Test by watching the window title bar update to your text. This one-minute fix resolves a rule that assistive-technology users notice immediately when opening a document.

*Reference: PDF/UA clause 7.1; WCAG 2.4.2 (A)*

### Set the document's primary language

Assistive technology needs to know the primary language to choose the correct pronunciation engine, otherwise English text may be read with Spanish phonemes or vice versa. In File > Properties > Advanced, set the Language field (for example English or Spanish), or use the Set Reading Language item in the Accessibility Checker's fix menu. This sets a Lang attribute on the document catalog. It is a single dropdown and it clears the "Primary language" checker rule instantly. Do not skip it because the document "is obviously in English"; the flag is metadata that software reads, and its absence is a genuine failure for text-to-speech tools.

*Reference: PDF/UA clause 7.2; WCAG 3.1.1 (A)*

### Mark passages in another language

When a document is mostly English but contains a foreign-language phrase, quotation, or a Spanish notice block, set language at the passage level so pronunciation switches correctly. In the Tags panel, right-click the tag wrapping that content (for example a <P> or a <Span> you create around the phrase), choose Properties, and on the Tag tab set the Language dropdown to the passage's language. Nested Lang attributes override the document default for their subtree. Proper nouns and common loanwords do not need this, but a full sentence or block in another language does. This is tedious but it is what makes bilingual government notices read intelligibly aloud.

*Reference: PDF/UA clause 7.2; WCAG 3.1.2 (AA)*

### Fix reading order with the Order panel

When a screen reader reads content in the wrong sequence (footer before body, sidebar interrupting a paragraph), open the Reading Order tool and its Order panel. The panel lists numbered regions per page; drag entries up or down to reorder, and the numbered overlays on the page update live. This is the fastest way to correct gross sequence problems without editing the Tags tree by hand. Remember the Order panel governs the order content is encountered, which must match the logical reading flow a sighted reader would follow. After reordering, re-run the checker's "Logical Reading Order" manual check and tab through with a screen reader to confirm.

*Reference: PDF/UA clause 7.1; WCAG 1.3.2 (A)*

### Handle multi-column layouts deliberately

Multi-column pages are where autotag most often fails, reading straight across both columns line by line instead of down column one then column two. Use the Reading Order tool to draw a region box around all of column one and tag it, then a separate box around column two, in the order they should be read. Alternatively, fix the sequence in the Tags tree by dragging the column-two <P> elements to follow column one. Verify by turning on Highlight Content and stepping through tags in order, watching the highlight travel down the first column completely before jumping to the second. Newspaper-style and two-column report layouts always need this check.

*Reference: PDF/UA clause 7.1; WCAG 1.3.2 (A)*

### Fix heading levels so they nest correctly

Headings must form a logical outline: an H1 for the document title, H2 for sections, H3 for subsections, without skipping a level (no H1 jumping straight to H3). Autotag frequently assigns heading tags by font size, producing wrong or skipped levels. In the Tags panel, right-click a heading tag, choose Properties, and change its Type on the Tag tab, or retype it directly. Walk the whole document and confirm the hierarchy makes sense as an outline. Screen-reader users navigate by heading level and jump between them, so a broken heading structure destroys their ability to skim a long government document efficiently.

*Reference: PDF/UA clause 7.4; WCAG 1.3.1 (A)*

### Add real alt text to meaningful images

Every <Figure> that conveys information needs alternate text. In the Tags panel, right-click the <Figure> tag and choose Properties, then type a concise description in the Alternate Text field; or use All Tools > Prepare for Accessibility > Set Alternate Text to step through every figure in the document one at a time. Describe the image's purpose and content, not "image of"; a chart's alt text should summarize the data point it makes. Keep it brief and do not duplicate a caption that already appears as visible text. The checker's "Figures alternate text" rule fails until every informative figure has non-empty alt text.

*Reference: PDF/UA clause 7.3; WCAG 1.1.1 (A)*

### Artifact decorative images and page furniture

Not every image needs alt text; decorative rules, background watermarks, repeated logos, header and footer graphics, and page borders should be hidden from assistive technology as artifacts, not described. In the Reading Order tool, select the region and click "Background/Artifact," or in the Set Alternate Text dialog check "Decorative figure." This removes the element from the tag tree so a screen reader skips it silently. The judgment call is whether the image carries meaning; a decorative divider does not, an org chart does. Over-describing decoration is as harmful as missing real alt text because it adds noise the user must wade through.

*Reference: PDF/UA clause 7.1; WCAG 1.1.1 (A)*

### Artifact running headers, footers, and page numbers

Repeating page furniture, running page headers, footers, and page numbers, should be marked as pagination artifacts so screen readers do not re-announce them on every page. In the Reading Order tool, select the header or footer region and click "Background/Artifact," or select the text and use the Tags panel to remove it from the structure tree. A user reading a fifty-page ordinance does not want "Page 12 of 50, City of Springfield" spoken between every paragraph. Genuine content that merely sits in the margin, however, is not furniture and must stay tagged. Distinguish repeated boilerplate from real information before artifacting.

*Reference: PDF/UA clause 7.8; WCAG 1.3.1 (A)*

### Distinguish real text from figures

Scanned pages and some exports place actual readable text inside a <Figure> tag, so a screen reader announces only the alt text (or nothing) instead of reading the words. Conversely, a stylized text logo may be genuine text that should be a figure with alt text. When a paragraph is trapped in a figure, it usually means the page is an image and needs OCR (Scan & OCR > Recognize Text) before tagging, or the tag must be changed to <P> once real characters exist underneath. Highlight the tag and check whether selectable characters appear. If there is no underlying text, no retagging will fix it; recognize text first.

*Reference: PDF/UA clause 7.3; WCAG 1.4.5 (AA)*

### Tag tables with a real Table structure

A data table must be a genuine <Table> containing <TR> rows and <TH>/<TD> cells, not a grid of loose <P> paragraphs or, worse, tab-spaced text. Autotag often flattens tables. Use the Reading Order tool to select the whole grid and click "Table," then verify a <Table> tag appeared with proper row and cell children in the Tags panel. If the structure is wrong, the Table Editor (right-click the table region in the Reading Order tool > Table Editor) lets you inspect and correct the cell grid visually. Only a properly structured table lets a screen reader announce "row 3, column 2" and read associated headers.

*Reference: PDF/UA clause 7.5; WCAG 1.3.1 (A)*

### Mark header cells and set scope

In a data table, the cells that label rows or columns must be <TH> (table header), not <TD> (data), and each <TH> needs a Scope of Row or Column so screen readers associate the right header with each data cell. Open the Table Editor from the Reading Order tool, right-click a header cell, choose Table Cell Properties, set the type to Header Cell, and select the appropriate Scope. Color-coding in the Table Editor shows headers versus data at a glance. Without scope, a user hearing "$4,200" has no idea which quarter and which department it belongs to. Every table with headers needs this pass.

*Reference: PDF/UA clause 7.5; WCAG 1.3.1 (A)*

### Use the Table Editor for complex grids

For tables with merged cells, spanning headers, or multiple header rows, the Table Editor is essential. Right-click the table in the Reading Order tool and choose Table Editor to see every cell outlined and labeled. Here you can set ColSpan and RowSpan on cells via Table Cell Properties, assign an ID to a header, and reference it with Associated Header Cell IDs on the data cells that a simple Row/Column scope cannot reach. This is how you make a two-level header table (say, "2025" spanning "Q1" and "Q2") readable. It is fiddly work, but complex financial and statistical tables in government reports require it.

*Reference: PDF/UA clause 7.5; WCAG 1.3.1 (A)*

### Build ordered and unordered lists correctly

A real list is an <L> tag containing <LI> items, each holding an <Lbl> (the bullet or number) and an <LBody> (the item text). Autotag and conversion often produce loose paragraphs with literal bullet characters instead, which a screen reader cannot announce as "list, 5 items." In the Tags panel, wrap the items in an <L>, give each an <LI> with <Lbl> and <LBody> children, and move the marker character into the <Lbl>. This lets assistive technology announce list boundaries and item counts. Do not fake lists with tabs and bullet glyphs; the structure, not the visible symbol, is what conveys "this is a list."

*Reference: PDF/UA clause 7.6; WCAG 1.3.1 (A)*

### Nest sublists inside the parent list item

For multi-level lists (outline numbering, indented sub-bullets), the nested <L> belongs inside the parent item's <LBody>, not as a sibling of the parent <LI>. A common mistake is placing the child list after the parent item at the same level, which flattens the hierarchy and loses the "sub-item" relationship. In the Tags panel, drag the child <L> so it lives within the correct <LBody>. Expand the tree to confirm each level of indentation corresponds to one level of nesting. Complex agendas, statutes with subsections, and procedural documents rely on correct nesting so users understand which points are subordinate to which.

*Reference: PDF/UA clause 7.6; WCAG 1.3.1 (A)*

### Tag links as Link with an OBJR

An accessible link is a <Link> tag that contains both the visible link text and a <Link - OBJR> object reference pointing at the actual link annotation. If the OBJR is missing, the annotation floats free of the structure and a screen reader may not announce it as a link at all. The simplest repair is All Tools > Prepare for Accessibility > run the checker, then right-click the "Tagged annotations" failure and choose Fix, or use Autotag which usually creates the OBJR. Verify in the Tags panel that each <Link> has both its text run and its OBJR child. Also make the visible link text descriptive rather than a bare URL.

*Reference: PDF/UA clause 7.18; WCAG 2.4.4 (A)*

### Give links meaningful, distinguishable text

Beyond correct link tagging, the visible text matters. "Click here" and raw URLs like "https://example.gov/docs/2025/final-v3.pdf" are useless to a screen-reader user pulling up a links list. Edit the link text so it describes the destination, such as "2025 Budget Ordinance (PDF)." In Acrobat you may need to edit the underlying text run and ensure the <Link> tag wraps the descriptive phrase. Where you cannot change visible text, an Alternate Text on the <Link> tag can supply an accessible name. Distinct, purposeful link text also helps sighted users skimming a document full of references.

*Reference: PDF/UA clause 7.18; WCAG 2.4.4 (A)*

### Create a bookmark outline for long documents

Documents longer than a handful of pages should have a bookmark panel (the PDF outline) so users can jump to sections without scrolling. In the Bookmarks panel, you can auto-generate bookmarks from tagged headings: with structure in place, select your headings and use the panel Options > "New Bookmarks from Structure," choosing the heading tags. This builds a navigable table of contents that mirrors your heading hierarchy. Bookmarks are not strictly required by every checkpoint, but they are an expected usability affordance for long government PDFs and they reinforce the same logical structure your headings already define.

*Reference: PDF/UA clause 7.17; WCAG 2.4.1 (A)*

### Set tab order to follow document structure

Interactive PDFs (those with links or form fields) must let keyboard users tab through elements in logical order. In the Page Thumbnails panel, select all pages, then Options > Page Properties > Tab Order, and choose "Use Document Structure." This ties the tab sequence to your tag tree instead of an arbitrary or creation order. The Accessibility Checker's "Tab order" rule fails on any page where tab order is unspecified. Do this after your reading order and structure are correct, since "Use Document Structure" inherits whatever sequence the tags define. Then tab through with the keyboard to confirm focus moves sensibly and never gets trapped.

*Reference: PDF/UA clause 7.18; WCAG 2.4.3 (A)*

### Tag form fields with names and tooltips

Every interactive form field needs an accessible name so a screen reader announces its purpose. In Prepare Form mode, double-click each field, open Properties, and fill the Tooltip, which Acrobat exposes as the field's accessible name; "Applicant last name" is far better than "Text1." Ensure each field is also represented in the tag tree (autotagging a form usually creates the field tags). Group related radio buttons and checkboxes correctly, and provide the visible label text as the tooltip so what users see matches what they hear. The checker flags fields lacking descriptions; unlabeled form fields make an application form impossible to complete non-visually.

*Reference: PDF/UA clause 7.18; WCAG 3.3.2 (A), 4.1.2 (A)*

### Verify the reading order includes every field's label

For forms, the visible label text and its field must be adjacent in reading order so a screen reader announces "First name" immediately before landing on the input. Autotag sometimes separates the label paragraph from the field tag, so the label reads at the top of the page and the field far below. In the Tags tree, position each field's <Form> tag right after its label text, or ensure the tooltip carries the label so association survives regardless. Tab through the completed form with a screen reader running and confirm every field speaks a clear prompt at the moment focus arrives, with no orphaned labels or silent inputs.

*Reference: PDF/UA clause 7.18; WCAG 3.3.2 (A)*

### Set the PDF/UA identifier once conformance is met

After a document genuinely conforms, embedding the PDF/UA-1 identifier flag signals to software that it claims conformance. Acrobat's Accessibility Checker offers this, or preflight profiles can add it; some remediation validators (like PAC) check for it. Only set this flag when the file actually meets the requirements; a PDF/UA claim on a broken file is worse than no claim because it asserts something false. The identifier itself changes nothing about how the document reads; it is metadata. Treat it as the last step after tags, reading order, tables, alt text, language, and title are all verified, not as a checkbox that confers conformance.

*Reference: PDF/UA (ISO 14289-1) conformance identifier*

### Validate beyond Acrobat with PAC

Acrobat's built-in checker misses many PDF/UA requirements, so run a finished file through a dedicated validator such as PAC (PDF Accessibility Checker), which tests against the full ISO 14289-1 machine-checkable rule set and offers a screen-reader preview and a logical-structure view. PAC will surface issues Acrobat is silent on, like missing OBJR references, malformed tables, or an absent PDF/UA flag. Use it as an independent second opinion, then return to Acrobat to fix what it reports. No automated tool catches everything, so still test with an actual screen reader, but a clean PAC result plus a clean Acrobat check is a much stronger baseline than either alone.

*Reference: PDF/UA (ISO 14289-1); WCAG 2.1 AA*

### Read the checker report items, do not just click Fix All

The Accessibility Checker lets you right-click failures for a Fix option, but blindly auto-fixing can create wrong results, autotagging can shred a table, auto-setting reading order can misorder columns. Read each item, use Explain to understand what it wants, and decide whether the automatic fix or a manual repair is appropriate. Items marked "Needs manual check" (logical reading order, color contrast) will never clear automatically; you must inspect and then right-click Pass or Fail yourself. Treat the report as a checklist you reason through, not a button that makes the document accessible. Understanding why each rule exists is what separates real remediation from box-ticking.

*Reference: Adobe Acrobat Accessibility Checker; WCAG 2.1 AA*

### Watch out for empty and orphaned tags

Conversion and editing leave behind empty <P> or <Span> tags with no content, and orphaned tags whose content was deleted, both add noise or confusion for screen readers. In the Tags panel, enable Highlight Content and step through; any tag that highlights nothing is a candidate for deletion. Remove genuinely empty structural tags, but be careful not to delete a tag that legitimately wraps children. The Accessibility Checker does not always flag these, so a manual sweep of the tree is worthwhile on documents that went through several conversions. A tidy tag tree with no dead entries reads cleanly and is far easier to audit later.

*Reference: PDF/UA clause 7.1; WCAG 1.3.1 (A)*

### Correct mojibake and unmapped characters

Sometimes tags and reading order look perfect but a screen reader speaks gibberish because glyphs lack a proper Unicode mapping (common with certain fonts, ligatures, or symbol characters). Test by using Save As Text or having a screen reader read a suspect line; if "fi" ligatures, bullets, or accented letters come out wrong, the font's ToUnicode map is broken. Fixes include using the Reading Order tool's actual-text feature, adding an ActualText attribute in tag properties to spell out the intended characters, or, if widespread, rebuilding from source with a better font. Perfect structure over garbled characters still produces an unusable document, so verify the words themselves are spoken correctly.

*Reference: PDF/UA clause 7.2; WCAG 1.3.1 (A)*

### Add ActualText for stylized or split words

When a word is visually rendered in pieces, split across a line break, drawn as decorative characters, or built from a logo font, add an ActualText attribute so assistive technology speaks the intended word instead of fragments. In the Tags panel, right-click the tag, choose Properties, and enter the correct text in the ActualText field on the Tag tab. Unlike Alternate Text, ActualText replaces the reading of the actual characters, so use it precisely for the exact word or phrase. This is the right tool for a heading where "COVID-19" is spaced oddly or a drop cap separates the first letter from its word. Use sparingly and only where character reading genuinely fails.

*Reference: PDF/UA clause 7.3; WCAG 1.3.1 (A)*

### Know when a PDF is too broken to remediate

Remediation has a point of diminishing returns. If a PDF is a flat scan with no text layer, has hundreds of malformed tables, uses fonts that will not map to Unicode, or was produced by a tool that mangles structure beyond hand-repair, it is faster and more reliable to rebuild from the source file. Fix accessibility in the original Word, InDesign, or web content, then re-export a tagged PDF, rather than spending hours patching a corrupt tag tree that will still fail validation. Ask for the source before quoting a remediation. Recognizing this early saves budget and produces a genuinely accessible result instead of a heroic but fragile patch job.

*Reference: PDF/UA (ISO 14289-1); WCAG 2.1 AA*
