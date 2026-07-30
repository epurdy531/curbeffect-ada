### Choose reflowable over fixed-layout when you can

For most text-heavy government e-books, publish reflowable EPUB rather than fixed-layout. Reflowable content lets the reading system resize text, change fonts, adjust line spacing, and reflow to any screen, which is essential for low-vision and dyslexic readers. Fixed-layout (set via `rendition:layout` = `pre-paginated` in the OPF) locks each page to exact coordinates, defeating text resizing and often trapping content in images. Reserve fixed-layout only for genuinely visual material like children's picture books or complex forms. If you inherit a fixed-layout file, the remediation goal is usually to rebuild it as reflowable with real text and semantic structure rather than patch the pinned pages.

*Reference: EPUB Accessibility 1.1; WCAG 1.4.4 (AA)*

### Run ACE by DAISY early and often

Install ACE by DAISY, the free open-source EPUB accessibility checker, and run it before and after every remediation pass: `ace -o report_folder book.epub`. It generates an HTML report plus a JSON summary flagging missing alt text, absent accessibility metadata, heading-order problems, and missing page-list navigation. Treat ACE as a floor, not a ceiling: it catches machine-detectable issues but cannot judge whether alt text is meaningful or whether reading order makes sense. Use its outline and image tables to triage, then verify the rest manually in a real reading system. Save the report with the deliverable so the client has an audit trail of what was checked.

*Reference: EPUB Accessibility 1.1; ACE by DAISY*

### Set the spine to match true reading order

The `<spine>` in the OPF (content.opf) defines the default linear reading order of your EPUB. Assistive technology follows the spine, so its sequence must match the logical order a person would read: front matter, chapters in order, then back matter. Every content document a reader should encounter linearly needs a `<itemref idref="...">` in the spine. Use `linear="no"` only for genuinely non-linear content like pop-up footnotes or answer keys that shouldn't appear in the main flow. Don't rely on file names or folder order; the spine is authoritative. After reordering, re-open in a reading system and page straight through to confirm nothing is skipped or out of sequence.

*Reference: EPUB 3.3 spine; WCAG 1.3.2 (A)*

### Build a real page-list for print-page navigation

If your e-book has a corresponding print edition or official pagination, add a page-list so readers can jump to a cited page. In the EPUB 3 navigation document (nav.xhtml), include `<nav epub:type="page-list">` containing an ordered list of links to each page location. This lets a court clerk or student navigate to "page 47" the same way a sighted reader flips there. Pair it with the `dc:source` and `schema:accessibilityFeature` value `printPageNumbers` in metadata. Without a page-list, page-based citations are unusable in the digital version, which matters heavily for legal, legislative, and academic documents that are referenced by page.

*Reference: EPUB Accessibility 1.1; WCAG 2.4.1 (A)*

### Anchor each page break with a pagebreak marker

The page-list only works if the body content has matching targets. At each print-page boundary, insert an inline element carrying `epub:type="pagebreak"`, for example `<span epub:type="pagebreak" id="page47" role="doc-pagebreak" aria-label="47"></span>`. The `aria-label` (or the element's text) supplies the spoken page number, and the `id` is what the page-list links to. Place the marker exactly where the print page turns, not at paragraph starts approximated later. Adding the ARIA `doc-pagebreak` role improves support in reading systems that map to ARIA. Consistent, correctly numbered pagebreak markers are what make "go to page N" actually land in the right spot for screen-reader users.

*Reference: EPUB Accessibility 1.1; WCAG 2.4.1 (A)*

### Populate the accessibility metadata block

Reading systems and library catalogs surface an e-book's accessibility from its metadata, so fill it in. In the OPF, add schema.org properties via `<meta property="schema:accessibilityFeature">` values such as `alternativeText`, `structuralNavigation`, `readingOrder`, `tableOfContents`, and `printPageNumbers`; declare `schema:accessMode` (`textual`, `visual`); and provide `schema:accessibilityHazard` (often `none`). Also include a plain-language `schema:accessibilitySummary` describing what the book supports. This metadata powers "accessible" filters in platforms like OverDrive and drives procurement decisions for libraries. Empty or default metadata makes a genuinely accessible book look unusable, so update it to reflect the remediation you actually performed.

*Reference: EPUB Accessibility 1.1; schema.org a11y metadata*

### Use accessModeSufficient to declare a text-only path

Beyond listing individual features, `schema:accessModeSufficient` tells readers whether the book can be consumed through a single sense. A value of `textual` means everything essential is available as text, so a screen-reader or braille user can read the whole book without needing vision. If some content is only conveyed visually (an un-described chart, an image of text), you cannot honestly claim `textual` sufficiency until it's remediated. Use this property to drive your work: aim to make `textual` a truthful claim by describing images, converting images-of-text to real text, and adding table structure. It's both a metadata field and a checklist for completeness.

*Reference: EPUB Accessibility 1.1; schema.org accessModeSufficient*

### Provide alt text for every meaningful image

Every informative image in an EPUB content document needs an `alt` attribute that conveys its purpose in context, for example `<img src="seal.png" alt="Official seal of the county clerk's office" />`. Keep it concise and describe function, not pixels. For purely decorative images (rules, flourishes), use empty `alt=""` so screen readers skip them. When an image needs a long explanation, such as a data chart, put a short `alt` plus a nearby text description or a `<figure>`/`<figcaption>` pairing, or link to an extended description with `aria-details`. Images of text should be avoided entirely; convert them to real, styled text so they reflow and resize.

*Reference: EPUB Accessibility 1.1; WCAG 1.1.1 (A)*

### Keep a correct heading hierarchy in every document

Each XHTML content file should use `<h1>`–`<h6>` in a logical, unbroken order that mirrors the document's structure: don't jump from `<h2>` to `<h4>`, and don't pick a heading level just to get a font size. Style with CSS instead. Screen-reader users navigate by heading, so a clean hierarchy is their table of contents within a chapter. For a multi-file book, a common pattern is one `<h1>` per chapter file with nested subheadings below. Never fake headings with bold paragraphs, and never use headings purely for visual emphasis. Verify the outline in ACE's report or a reading system's navigation view.

*Reference: EPUB Accessibility 1.1; WCAG 1.3.1 (A), 2.4.6 (AA)*

### Apply EPUB structural semantics with epub:type

EPUB's structural semantics vocabulary lets you label the role of content beyond generic HTML. Add `epub:type` to elements to mark parts like `cover`, `titlepage`, `toc`, `chapter`, `part`, `footnote`, `noteref`, `bibliography`, `glossary`, and `index`. For example `<section epub:type="chapter">` or `<a epub:type="noteref" href="#fn1">`. These hints help reading systems offer smarter navigation and let footnotes pop up inline rather than yanking readers away. Pair `epub:type` with matching ARIA `role` values (such as `role="doc-footnote"`) for broader assistive-technology support. Applied consistently, structural semantics turn a flat text dump into a navigable, well-understood document.

*Reference: EPUB Accessibility 1.1; EPUB Structural Semantics Vocabulary*

### Define landmarks in the navigation document

The nav.xhtml should include a `<nav epub:type="landmarks">` list pointing to the key entry points of the book: the start of the body content (`bodymatter`), the table of contents (`toc`), and any cover or index. Each landmark link carries an `epub:type` describing what it targets, for example `<a epub:type="bodymatter" href="chapter1.xhtml">Start of Content</a>`. Landmarks give assistive-technology users a quick "jump to" menu so they can skip front matter and land where reading begins. This is distinct from the table-of-contents `nav` and the page-list `nav`; a well-formed EPUB typically has all three navs in the single nav document.

*Reference: EPUB Accessibility 1.1; WCAG 2.4.1 (A)*

### Mark up tables with real header semantics

Data tables in an EPUB must use genuine HTML table markup, not text laid out with tabs or a fixed-layout image. Use `<table>` with `<thead>`/`<tbody>`, `<th>` for header cells, and `scope="col"` or `scope="row"` so screen readers can announce which row and column a cell belongs to. For complex tables, associate cells with headers using `headers` and `id`. Add a `<caption>` describing the table's purpose. Never use tables purely for visual layout. Test by navigating cell-by-cell in a reading system and confirming the correct headers are read aloud, especially for budget, schedule, and statute tables common in government publications.

*Reference: EPUB Accessibility 1.1; WCAG 1.3.1 (A)*

### Use native list markup for lists

Any content that is conceptually a list, such as agenda items, statutory subsections, or steps, should use `<ul>`, `<ol>`, or `<dl>` rather than paragraphs with manual bullets or numbers. Native list elements let screen readers announce list boundaries and item counts ("list of 5 items") and let readers navigate item by item. Use `<ol>` where sequence matters and set `start` or `type` for legal numbering schemes. For definition-style content like glossaries, `<dl>` with `<dt>`/`<dd>` pairs the term with its definition. Avoid faking nesting with indentation alone; nest child lists inside the parent `<li>` so the hierarchy is programmatically clear.

*Reference: EPUB Accessibility 1.1; WCAG 1.3.1 (A)*

### Encode equations as MathML, not images

Represent mathematics with MathML embedded directly in the XHTML rather than as pictures of equations. MathML gives assistive technology and reading systems a semantic, navigable representation that can be spoken, brailled, or magnified without losing meaning, and it reflows with the text. If your source has equation images, convert them (tools like MathType or automated OCR-to-MathML) and validate the markup. When you must keep an image fallback for older reading systems, wrap it so the MathML is primary and provide meaningful alt text as a backstop. Accessible math matters for court statistics, public-health data, and educational materials produced by HHS-funded institutions.

*Reference: EPUB Accessibility 1.1; WCAG 1.1.1 (A)*

### Sync narration with media overlays

For read-aloud e-books, EPUB media overlays synchronize pre-recorded audio with the text so words highlight as they're spoken, benefiting many print-disabled and emerging readers. Media overlays use SMIL files that map audio clip time ranges to the `id` of each text fragment, and the OPF references each overlay via the `media-overlay` attribute on the content item. Ensure every narrated passage has a matching text `id` so highlighting tracks correctly, and declare the `media:duration` metadata. This is a distinct feature from a screen reader's synthetic speech: media overlays ship human or curated narration inside the book. Test the sync in a supporting reading system before delivery.

*Reference: EPUB Accessibility 1.1; EPUB Media Overlays 3*

### Provide a navigable table of contents

Every EPUB 3 needs a table of contents in the nav document: `<nav epub:type="toc">` containing nested `<ol>` links to each section, in reading order. This is the primary structural navigation readers use to move around the book, so it must reflect real headings and be complete to the depth that helps, typically chapters and major subsections. Keep link text meaningful, matching the heading it targets. For backward compatibility with EPUB 2 reading systems you may also include an NCX (toc.ncx), but the XHTML nav is authoritative in EPUB 3. Declare `structuralNavigation` in the accessibility metadata once a genuine ToC is in place.

*Reference: EPUB Accessibility 1.1; WCAG 2.4.1 (A)*

### Embed fonts without breaking text integrity

When embedding fonts for consistent appearance, make sure the underlying text stays real, selectable, and mapped to correct Unicode, not converted to outlines or images. Reference embedded fonts through `@font-face` in your CSS and list each font file in the OPF manifest. Watch for fonts that use custom or private-use encodings, which can make copied or screen-read text come out as gibberish; verify by selecting a passage and reading it with a screen reader or copying it into a plain-text editor. Never rely on an icon font to convey meaning without a text equivalent. Keep font files licensed for embedding and reasonably sized so the book stays performant.

*Reference: EPUB Accessibility 1.1; WCAG 1.4.5 (AA)*

### Declare language so speech is pronounced correctly

Set the primary language of the publication in the OPF with `<dc:language>en</dc:language>` and on the root of each XHTML file with `xml:lang` and `lang` (for example `<html xml:lang="en" lang="en">`). This tells screen readers and text-to-speech engines which pronunciation rules and voice to use. When a passage switches languages, such as a Spanish quotation or a legal term in Latin, wrap it with an inline `lang`/`xml:lang` attribute so it's spoken correctly rather than mangled in the base language. Correct language tagging is easy to overlook but directly affects how understandable the audio rendering is, which matters for multilingual constituents served by government publications.

*Reference: EPUB Accessibility 1.1; WCAG 3.1.1 (A), 3.1.2 (AA)*
