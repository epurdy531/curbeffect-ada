### Define data ranges as real Tables

In Excel, select your data range and use Insert > Table (or Ctrl+T) to turn it into a defined Table with a true header row; make sure "My table has headers" is checked. A real Table exposes column names to screen readers, supports keyboard navigation between cells, and lets assistive technology announce which column a value belongs to. Loose ranges of cells that only look like a table give no such structure. Give the Table a meaningful name in Table Design > Table Name (for example "InvoicesQ1" rather than "Table1") so its purpose is clear. One Table per logical dataset keeps the structure clean and predictable for everyone.

*Reference: WCAG 1.3.1 (A); ADA Title II*

### Give every worksheet tab a meaningful name

Double-click each sheet tab and rename it from generic labels like "Sheet1" or "Sheet2" to something that describes its contents, such as "2026 Budget" or "Vendor Contacts." Screen reader users navigate a workbook by moving between sheets, and the tab name is often the only cue they get about what each sheet holds. Keep names short, unique, and free of redundant words, and avoid characters that assistive technology may read oddly. If a sheet is a work-in-progress or scratch space, either name it accordingly or delete it before publishing. Clear tab names also help sighted keyboard users orient themselves quickly across a multi-sheet file.

*Reference: WCAG 2.4.6 (AA); ADA Title II*

### Avoid merged cells for layout

Merged cells break the row-and-column grid that screen readers rely on to announce a cell's coordinates and associate it with its headers. When you merge cells, assistive technology can lose track of which data belongs where, and keyboard navigation jumps unpredictably. Instead of merging, use Format Cells > Alignment > Horizontal > "Center Across Selection" when you only need a centered visual heading, since it keeps each cell independent in the grid. For data, restructure so each value sits in its own unmerged cell. Run the Accessibility Checker (Review > Check Accessibility) afterward, as it flags merged cells explicitly and lets you jump to each one to fix it.

*Reference: WCAG 1.3.1 (A); ADA Title II*

### Don't use blank rows and columns for spacing

Empty rows and columns inserted purely for visual spacing can signal to a screen reader that the data region has ended, causing it to stop reading before the real content is finished. They also confuse the Table detection and sorting features. Instead of blank rows between sections, put each dataset on its own Table or its own sheet, and control visual separation with cell borders, fill, or row height rather than empty cells. If you need whitespace around a printed report, use margins and print settings, not empty grid cells. Keeping your data contiguous ensures assistive technology reads the entire range without prematurely cutting off.

*Reference: WCAG 1.3.1 (A); ADA Title II*

### Add alt text to charts and objects

Right-click any chart, image, shape, SmartArt, or embedded object, choose View Alt Text (or use the Alt Text pane), and write a concise description of what it conveys. For a chart, summarize the key trend or comparison the reader is meant to take away, not a pixel-by-pixel account, and note where the underlying numbers can be found. Screen readers announce this alt text so non-sighted users get the same insight sighted users see at a glance. Mark purely decorative objects as decorative using the checkbox in the same pane so they are skipped. Never leave a chart with no alt text and no accessible data behind it.

*Reference: WCAG 1.1.1 (A); ADA Title II*

### Provide the data behind every chart

A chart alone is not accessible to a screen reader, which cannot interpret its visual bars or lines. Always keep the source data on the sheet in a clearly labeled Table so users can read the actual numbers, and reference that location in the chart's alt text (for example "Data in the Monthly Sales table below"). Avoid pasting charts as static images, which strips out any connection to the numbers. When possible, add data labels directly on the chart so values are visible without hovering. This dual approach - visual chart plus accessible underlying Table - ensures both sighted and non-sighted users can extract the same information from your workbook.

*Reference: WCAG 1.1.1 (A); ADA Title II*

### Convey status by more than color

Do not rely on cell fill color alone to mark status - a red cell meaning "overdue" or green meaning "paid" is invisible to colorblind and screen reader users. Add a text label, a symbol, or an icon in an adjacent cell so the meaning is carried by something other than color. Excel's Conditional Formatting includes an "Icon Sets" option that can pair shapes with color, and you can add a plain-text status column ("Overdue," "Paid," "Pending"). If you use fill colors for emphasis, treat them as redundant decoration, not the sole carrier of meaning. This keeps your workbook usable regardless of how a person perceives color.

*Reference: WCAG 1.4.1 (A); ADA Title II*

### Use number formatting, not color, to flag values

Instead of coloring negative numbers red as the only cue, apply Format Cells > Number formatting that shows the meaning in the text itself - for example a format that displays negatives with parentheses or a leading minus, or a custom format that appends a label. Screen readers announce the formatted value but not the font color, so a red "500" and a black "500" sound identical. Custom number formats like `#,##0;(#,##0)` make the sign visible to everyone. For thresholds, consider a dedicated status column with words rather than shading. Reserve color for redundant visual emphasis, and let the number format itself carry any distinction that must be understood.

*Reference: WCAG 1.4.1 (A); ADA Title II*

### Write meaningful hyperlink text

When you insert a link with Ctrl+K, fill in the "Text to display" field with wording that describes the destination rather than pasting a raw URL or using "click here." Screen reader users often pull up a list of links out of context, so "City permit application form" is far more useful than "https://example.gov/xh27" or a bare "here." Keep the visible text concise and unique within the sheet so two different links never share identical wording. If the workbook will be printed, consider whether the full URL also needs to appear elsewhere. Descriptive link text helps every reader understand where a link goes before activating it.

*Reference: WCAG 2.4.4 (A); ADA Title II*

### Set the print and reading area

Define the intended content region with Page Layout > Print Area > Set Print Area so tools and exports know where the meaningful data starts and stops. A clear print area helps when the workbook is later converted to PDF, keeping stray notes or scratch cells out of the reading order. Also set Page Layout > Print Titles to repeat header rows on each printed page, which preserves context. Removing content from far-flung cells outside the intended area prevents assistive technology and export routines from wandering into empty or irrelevant regions. A well-defined print area produces cleaner output whether the file is read on screen, printed, or exported.

*Reference: WCAG 1.3.2 (A); ADA Title II*

### Avoid nested or stacked header rows

Multi-level headers - a top row spanning several columns above a second row of sub-labels - are hard for screen readers to associate correctly with data cells, because assistive technology expects a single header row per column. Wherever possible, flatten the structure so each column has one clear, self-sufficient header (for example "Q1 Revenue" and "Q2 Revenue" instead of a merged "Revenue" banner over "Q1" and "Q2"). If you truly need grouping, split the data across separate Tables or sheets rather than stacking header tiers. A single unambiguous header row per Table is what the Accessibility Checker and screen readers can reliably interpret and announce.

*Reference: WCAG 1.3.1 (A); ADA Title II*

### Remove empty and hidden sheets

Before publishing, delete worksheets that contain no meaningful content. Empty sheets add navigation overhead for screen reader users, who must tab past them without knowing they are blank, and they clutter the file. Right-click each unneeded tab and choose Delete. Be equally cautious with hidden sheets that hold stale or sensitive data - unhide them (right-click a tab > Unhide) to review, then remove what is not needed. A lean workbook with only purposeful, well-named sheets is faster to navigate and less confusing. Pair this cleanup with meaningful tab names on the sheets you keep so the remaining structure is entirely clear.

*Reference: WCAG 2.4.6 (AA); ADA Title II*

### Run the built-in Accessibility Checker

Open Review > Check Accessibility to scan the workbook for common problems: merged cells, missing alt text, blank Table headers, default sheet names, and hard-to-read color contrast. The results pane groups issues by severity and, when you select one, offers a "Why fix" explanation plus recommended actions and a link that jumps straight to the offending cell or object. Enable "Keep accessibility checker running while I work" so issues surface as you build the file rather than only at the end. Treat a clean checker result as a floor, not a ceiling - it catches structural issues but cannot judge whether your labels and descriptions actually make sense.

*Reference: WCAG 2.1 AA; ADA Title II*

### Add a top-of-sheet title cell

Screen reader users benefit from a clear orientation cue when they land on a sheet. Place a descriptive title in cell A1 - for example "FY2026 Capital Projects - Status Report" - before the data Table begins, styled with a Cell Style so it reads as a heading. This gives immediate context about what the sheet contains and complements the tab name. Keep the title in a single cell rather than spread across merged cells. A consistent A1 title convention across all sheets in a workbook makes the whole file predictable, so users always know to check A1 first when arriving on a new sheet.

*Reference: WCAG 2.4.6 (AA); ADA Title II*

### Ensure sufficient contrast in cells

Text in cells, headers, and chart labels must stand out clearly against its fill color. Low-contrast combinations - light gray text on white, or pale text on a colored fill - are hard for users with low vision to read. Aim for the standard contrast ratio of at least 4.5:1 for normal-size text; check pairings with a contrast tool, since Excel's Accessibility Checker flags some but not all low-contrast cases. Prefer dark text on light fills or vice versa, and avoid relying on subtle tonal shading to carry meaning. Good contrast helps every reader, especially on projectors, printouts, and small screens where color fidelity varies.

*Reference: WCAG 1.4.3 (AA); ADA Title II*

### Set a single language for the workbook

Under File > Options > Language, confirm the editing language matches the language your content is actually written in so screen readers pronounce words correctly. A workbook flagged as one language but containing text in another causes assistive technology to apply the wrong pronunciation rules, making numbers, dates, and labels sound garbled. If a sheet mixes languages, keep the primary one set correctly and be aware that cell-level language tagging is limited in Excel compared with Word. Setting the right default language is a quick step that improves the spoken output of your data for anyone using a screen reader.

*Reference: WCAG 3.1.1 (A); ADA Title II*

### Name cells and ranges meaningfully

Use the Name Box or Formulas > Define Name to give important cells and ranges descriptive names such as "TotalDue" or "ContactEmail" instead of leaving them as raw coordinates. Named ranges make formulas easier to understand and give assistive technology and downstream tools a human-readable handle for key values. This is especially helpful in workbooks others will reuse or audit. Keep names concise, without spaces, and clearly tied to their purpose. While named ranges are primarily a usability and maintainability aid, they also reduce the chance of errors that make a workbook confusing - which supports overall comprehension for people using screen readers to trace where a number comes from.

*Reference: WCAG 1.3.1 (A); ADA Title II*

### Understand the limits of exporting to PDF

Exporting an Excel workbook with File > Save As or Export > Create PDF/XPS does not reliably produce a fully accessible, tagged PDF. Spreadsheet-to-PDF conversion often loses Table header associations, may not tag content in a logical reading order, and can drop chart alt text. If you must deliver a PDF, choose "Best for electronic distribution and accessibility," then open the result in a PDF tool and verify and repair the tag structure and reading order before publishing. Where possible, offer the native .xlsx file itself, which preserves the accessible structure you built. Never assume the exported PDF is compliant just because the source workbook passed Excel's checker.

*Reference: PDF/UA (ISO 14289-1); WCAG 1.3.1 (A)*

### Keep one dataset per sheet

Avoid packing several unrelated Tables side by side or stacked on a single worksheet. Multiple datasets on one sheet confuse screen reader navigation and Excel's own Table detection, because there is no clean boundary between one region's headers and the next. Give each distinct dataset its own sheet with a meaningful tab name, or at minimum its own clearly separated named Table. This keeps header-to-data relationships unambiguous and lets users move logically from one topic to another via the sheet tabs. A one-dataset-per-sheet habit also makes sorting, filtering, and later export far more predictable and less error-prone.

*Reference: WCAG 1.3.1 (A); ADA Title II*

### Add descriptive comments sparingly and accessibly

If you use cell notes or threaded comments (Review > New Comment) to explain data, keep them concise and remember that not all export paths carry them into an accessible output. Comments can supply helpful context - such as how a figure was calculated - but they should never be the only place critical information lives, since a screen reader user may not discover them or they may be lost on conversion to PDF. Put anything essential in a visible cell, a header, or a documentation sheet instead. Reserve comments for supplementary notes, and review them before publishing so stale or internal remarks are not shipped to the public.

*Reference: WCAG 1.3.1 (A); ADA Title II*

### Format dates and numbers consistently

Apply consistent Format Cells number and date formats across a column so screen readers announce values predictably and users can compare them easily. Mixing text-entered dates with real date values, or storing numbers as text, causes assistive technology and formulas to behave inconsistently and can hide meaning. Use real numeric and date types with a clear display format rather than typing symbols manually, and avoid embedding units inside text strings when a number format can show them. Consistent formatting also prevents sorting errors that would otherwise scramble the logical order a screen reader reads. Predictable, properly typed values make a workbook easier to understand for everyone.

*Reference: WCAG 1.3.1 (A); ADA Title II*

### Document the workbook's structure

For complex workbooks, add a brief "Read Me" or index sheet as the first tab that lists each sheet, its purpose, and any conventions used (such as what a status column's values mean). This gives screen reader users a roadmap before they dive into the data, much like a table of contents. Keep it in plain cells with descriptive text and, if helpful, meaningful hyperlinks to each sheet using Ctrl+K to link within the workbook. An index sheet is especially valuable for public records and reports that recipients did not build themselves. It turns a sprawling file into something navigable and self-explanatory for all users.

*Reference: WCAG 2.4.6 (AA); ADA Title II*
