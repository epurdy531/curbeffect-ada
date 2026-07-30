### Never use Print to PDF from Word

When you export a Word document, avoid the "Print to PDF" or "Microsoft Print to PDF" printer driver at all costs. Printing flattens your document into an image-like page stream that strips out every heading, list, table, and reading-order tag, leaving a completely untagged PDF that screen readers cannot navigate. Instead use File > Save As (or File > Export > Create PDF/XPS), which routes through Word's accessibility-aware engine. The difference is invisible on screen but total for assistive technology: one path produces a tagged, structured document, the other produces an inaccessible page picture. Train every author on your team that "Print to PDF" is banned for any document destined for public distribution.

*Reference: PDF/UA (ISO 14289-1); WCAG 1.3.1 (A)*

### Turn on structure tags in Word's Save As Options

The single most important checkbox when exporting from Word lives in a dialog most people never open. In File > Save As, choose PDF as the file type, then click the Options button before saving. In that Options dialog, confirm that "Document structure tags for accessibility" is checked. This setting is what carries your headings, lists, tables, and reading order into the tag tree of the PDF. It is normally on by default, but macros, older templates, or a colleague's earlier session can silently disable it. Making a habit of opening Options and verifying the box every export takes five seconds and prevents shipping a document with no tags at all.

*Reference: PDF/UA (ISO 14289-1) clause 7*

### Include headings and bookmarks in the export

While you have Word's PDF Options dialog open, check "Create bookmarks using: Headings" so your Heading 1 through Heading 6 styles become navigable PDF bookmarks. Bookmarks give sighted and assistive-technology users a clickable table of contents in the reader's navigation pane, which is invaluable for long documents like agendas, ordinances, and reports. This option only works if you built the document with real heading styles rather than manually bolded text, so it doubles as a check on your source structure. Also confirm "Document properties" is checked so the title and language you set in the source travel into the PDF metadata rather than defaulting to the filename.

*Reference: WCAG 2.4.1 (A), 2.4.5 (AA)*

### Set the document title and language before exporting

A tagged PDF still fails accessibility checks if it lacks a real title and a declared language. In Word, before you export, open File > Info and set the Title property to a human-readable name, and confirm the editing language under Review > Language > Set Proofing Language matches the document's actual language. When you Save As PDF with "Document properties" enabled, both values carry over: the title becomes the metadata that screen readers announce and that the reader displays in its title bar instead of the filename, and the language tells assistive technology which pronunciation rules to use. Setting these at the source is far faster than adding them by hand in Acrobat afterward.

*Reference: WCAG 3.1.1 (A), 2.4.2 (A)*

### Export accessible PDFs from PowerPoint

PowerPoint exports tagged PDFs through the same File > Save As / Export path as Word, and the same "Document structure tags for accessibility" option applies. Before you export, fix the two things PowerPoint gets wrong most often: reading order and slide titles. Open Home > Arrange > Selection Pane and reorder objects so the bottom of the list reads first (PowerPoint reads bottom-to-top), and give every slide a unique title via the Outline view or an off-slide title placeholder. Add alt text to images through the Alt Text pane. Then Save As PDF with tags enabled. Never export via Print, and never rely on speaker notes to carry information a screen reader user needs.

*Reference: WCAG 1.3.2 (A), 2.4.2 (A)*

### Handle Excel exports carefully

Excel is the hardest Office app to export accessibly, because spreadsheets have no reading order and no heading structure the way documents do. When you Save As PDF from Excel with structure tags enabled, the tags produced are minimal, so consider whether a spreadsheet is even the right delivery format for public content. If the data is truly tabular, define a print area, set the header row to repeat, name the sheet meaningfully, and give each table a defined range so the export has something to tag. For anything that is really a report rather than a data grid, rebuild it in Word where you have real headings and table markup, then export from there.

*Reference: WCAG 1.3.1 (A)*

### Know the difference between Microsoft's and Adobe's PDF engines

Word can produce a PDF two ways, and they are not the same. The built-in Microsoft engine (File > Save As > PDF) is free, always available, and produces good tags for most documents. The Adobe Acrobat add-in installs an "Acrobat" ribbon tab with a "Create PDF" button that uses Adobe's PDFMaker engine instead. PDFMaker sometimes handles complex tables, cross-references, and multi-column layouts better and preserves more metadata, but it can also introduce its own quirks. Pick one engine and standardize on it across your team so your results are predictable, then verify tags either way. Do not assume the Acrobat button is automatically more accessible than Save As.

*Reference: PDF/UA (ISO 14289-1)*

### Preserve hyperlinks as real links on export

When a document has clickable links, exporting correctly keeps them as live, tagged link annotations rather than blue underlined text that goes nowhere. In Word, always insert links with Ctrl+K (Insert > Link) rather than typing a bare URL and hoping autoformat catches it, and give each link meaningful display text instead of a raw address. Both the Microsoft and Adobe export engines preserve properly inserted hyperlinks, including their tooltip text, into the PDF. After export, tab through the document in the reader to confirm links are focusable and activate. A link that renders as styled text but is not actually clickable is a common casualty of Print-to-PDF and copy-paste workflows.

*Reference: WCAG 2.4.4 (A), 1.3.1 (A)*

### Export tagged PDFs from Adobe InDesign

InDesign produces excellent tagged PDFs, but only if you export the right way. Use File > Export, choose Adobe PDF (Print) — not (Interactive) for most accessible documents — and in the export dialog's General tab, check "Create Tagged PDF" and "Create Acrobat Layers" only as needed. Confirm "Bookmarks" and "Hyperlinks" are checked so navigation and links carry over. The tagging quality depends entirely on the structure you built with paragraph styles mapped to export tags, the Articles panel, and Object Export Options. Never export a print-only PDF and try to tag it in Acrobat afterward; set up the source correctly so the export does the work.

*Reference: PDF/UA (ISO 14289-1) clause 7*

### Map InDesign paragraph styles to export tags

InDesign will not guess your document structure, so you must tell it which paragraph styles become which PDF tags. Open a paragraph style, go to the Export Tagging section, and set the PDF Tag (H1, H2, P, and so on) for each style; do the same for character styles. You can also open the Tags-to-Styles mapping from the Paragraph Styles panel menu to set them all at once. This mapping is what turns your visually styled headings into a real tag tree at export time. Without it, everything exports as generic paragraphs and the document has no heading navigation, no matter how good it looks on the page.

*Reference: WCAG 1.3.1 (A), 2.4.6 (AA)*

### Control reading order with the InDesign Articles panel

Visual layout order and reading order are different things, and in InDesign the Articles panel (Window > Articles) is how you control what a screen reader encounters first. Drag your text frames and graphics into the Articles panel in the sequence they should be read, then check "Use for Reading Order in Tagged PDF" from the panel menu. This overrides InDesign's default guess, which is based on page geometry and often wrong for multi-column or sidebar layouts. At export time, make sure "Use Structure for Tab Order" or the Articles reading order option is honored. Verify the result by reading the exported PDF's tag tree top to bottom in Acrobat.

*Reference: WCAG 1.3.2 (A)*

### Add alt text via InDesign Object Export Options

Rather than adding alternate text to every image after export in Acrobat, set it at the source in InDesign so it survives every re-export. Select an image or graphic frame, then open Object > Object Export Options. On the Alt Text tab, choose "Custom" and type the description, or map it from a metadata field. On the Tagged PDF tab you can set whether the object is tagged as a figure or marked as an artifact if it is purely decorative. Because this data lives with the object in the .indd file, regenerating the PDF next month keeps all your alt text intact instead of forcing a full re-remediation.

*Reference: WCAG 1.1.1 (A)*

### Understand Google Docs export limits

Google Docs can export a PDF via File > Download > PDF Document, and it does carry over heading styles, list structure, and alt text you added through Format > Alt text, producing a basically tagged file. But its tagging is less complete than Microsoft Word's: complex tables, nested lists, and reading order in multi-column layouts often need cleanup afterward. For simple documents this export is adequate; for anything complex, a common workflow is to download as .docx, open in Word, and export from there for finer control, or plan for a remediation pass in Acrobat. Know the tool's ceiling so you set the right expectation with the author.

*Reference: PDF/UA (ISO 14289-1)*

### Run OCR to turn scanned paper into real text

A scanned document is just a picture of a page: it has no selectable text, no tags, and is completely inaccessible until you run optical character recognition. In Acrobat, use Scan & OCR > Recognize Text > In This File to convert the page images into a searchable, selectable text layer. Choose "Searchable Image" to keep the original scan appearance while adding text behind it. OCR is only the first step, not the finish line — after recognition you still must add tags, set reading order, and correct any garbled words, especially on faded or handwritten originals. Always proofread the recognized text against the source before distributing.

*Reference: WCAG 1.4.5 (AA), 1.3.1 (A)*

### Re-scan bad originals rather than fighting OCR

Optical character recognition is only as good as the scan you feed it, and no export setting fixes a poor capture. If OCR produces garbled words, missed columns, or recognizes a stamp as text, the fastest remediation is often to re-scan the original at 300 dpi or higher, straightened, with good contrast, before recognizing text. Skewed pages, colored backgrounds, and low resolution all wreck recognition accuracy. For bound documents, a flatbed capture beats a phone photo. Spending five extra minutes on a clean scan saves an hour of manually correcting the text layer later, and it produces text that assistive technology and search can actually read reliably.

*Reference: WCAG 1.4.5 (AA)*

### Configure batch OCR and export for large jobs

When you have dozens or hundreds of scanned documents to make accessible, do not process them one at a time. Acrobat's Action Wizard (Tools > Action Wizard) lets you build a reusable action that runs Recognize Text, sets document properties, and saves each file, then apply it to an entire folder in one pass. For enterprise volumes, Adobe's Autotag and server-side tools can OCR and tag in bulk. Batch processing gets you consistent settings and a mechanical first draft, but scanned material almost always needs individual review afterward for reading order and correct tags, so treat the batch output as a starting point, not a finished deliverable.

*Reference: PDF/UA (ISO 14289-1)*

### Standardize enterprise export settings with a preset

In an office that produces many public PDFs, inconsistent export settings are a top source of accessibility failures. In InDesign, save an Adobe PDF Export preset (File > Adobe PDF Presets > Define) with tagging, bookmarks, and hyperlinks locked on, and share the .joboptions file across the team. In Word environments, distribute a template with the correct language and heading styles baked in and document the Save As Options steps in a one-page guide. Standardizing removes the chance that each author's individual habits determine whether a document is accessible. The goal is that the accessible export path is the default, easy path — not something each person has to remember to configure.

*Reference: PDF/UA (ISO 14289-1)*

### Preserve document language on export

Every exported PDF needs a declared primary language so screen readers pronounce content correctly, and the cleanest way is to set it at the source rather than patch it in Acrobat. In Word, set the language under Review > Language before export; in InDesign, the document language derives from your character styles and can be set per paragraph for multilingual content. When the source language is set, the export writes a /Lang entry into the PDF catalog automatically. For documents that mix languages — an English report quoting a Spanish statute, for instance — mark the passages in their own language at the source so those spans export with their own language tag.

*Reference: WCAG 3.1.1 (A), 3.1.2 (AA)*

### Verify the tags actually survived the export

Never assume an export worked just because the settings were right. Open the finished PDF in Acrobat Pro and run Tools > Accessibility > Check for Accessibility (the Full Check) to get a report of missing tags, alt text, titles, and reading-order issues. Then open the Tags panel (View > Show/Hide > Navigation Panes > Tags) and confirm a real tag tree exists rather than a single "No Tags Available" node. Use the Reading Order tool or Read Out Loud to spot-check the sequence. This verification step catches silently disabled options, engine quirks, and source problems before the document reaches the public — it is the difference between believing a file is accessible and knowing it.

*Reference: PDF/UA (ISO 14289-1); WCAG 1.3.1 (A)*

### Check reading order with the Order panel after export

A PDF can pass an automated tag check and still read in a nonsensical order, because automated tools cannot judge whether the sequence makes sense. After exporting, open Acrobat's Reading Order tool or the Order panel (Accessibility Tags in newer versions) and step through the content in sequence. Confirm that a sidebar does not interrupt the main text, that a caption follows its figure, and that multi-column layouts flow down each column rather than across. This is especially important for InDesign exports where the Articles panel was misconfigured and for Word documents with text boxes. Fixing order at the source and re-exporting is cleaner than dragging tags around in Acrobat.

*Reference: WCAG 1.3.2 (A)*

### Confirm tables exported with real structure

Tables are where exports most often quietly break, so verify them specifically. After export, open the Tags panel in Acrobat and confirm each table appears as a Table tag containing TR rows with TH header cells and TD data cells — not as a loose pile of paragraphs or, worse, an image. Header cells must be tagged as TH with a scope so screen readers can associate data with the right row and column headers. If the structure is wrong, fix it at the source: in Word, use a real inserted table with a designated header row; in InDesign, use proper table styles. Re-export rather than rebuilding the table by hand in Acrobat.

*Reference: WCAG 1.3.1 (A)*

### Do not tag decorative images as content on export

Purely decorative graphics — background flourishes, divider lines, logos that repeat in a header — should be marked as artifacts so screen readers skip them, not tagged as figures demanding alt text. Set this at the source: in InDesign use Object Export Options > Tagged PDF > "Artifact," and in Word mark decorative images via the Alt Text pane's "Mark as decorative" checkbox before exporting. Getting this right at export time means the tag tree contains only meaningful content, so assistive-technology users are not forced to hear "image" over and over for elements that carry no information. Over-tagging decoration is as much a barrier as under-tagging real content.

*Reference: WCAG 1.1.1 (A)*

### Preserve form fields and their labels on export

If your document contains fillable fields, exporting correctly must keep them as real, tagged, labeled form controls rather than flattening them into static lines on the page. When exporting an interactive PDF from InDesign, use File > Export > Adobe PDF (Interactive) so buttons and fields survive, and confirm each field has a descriptive name that becomes its accessible label. From Word, fields created with content controls export better than drawn boxes. After export, tab through the form in Acrobat to confirm every field is reachable by keyboard, announces a label, and follows a logical tab order. A form that looks fillable but has no labeled controls is unusable with a screen reader.

*Reference: WCAG 1.3.1 (A), 3.3.2 (A), 4.1.2 (A)*

### Re-export from source instead of remediating in Acrobat

When you find a tagging problem in an exported PDF, resist the urge to fix it only in Acrobat. Manual Acrobat repairs are lost the moment the author updates the source and re-exports, which for recurring documents like monthly agendas or quarterly reports means redoing the same work forever. Instead, trace each defect back to its cause in the Word or InDesign source — a missing heading style, an unmapped export tag, a wrong reading order — fix it there, and re-export. This front-loads effort but makes accessibility repeatable and cheap over the document's life. Reserve Acrobat remediation for one-off legacy files whose source is gone.

*Reference: PDF/UA (ISO 14289-1); WCAG 1.3.1 (A)*
