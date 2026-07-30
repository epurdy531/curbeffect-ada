### Never use tables for page layout

If a table has no row/column relationships to convey, it is a layout table and should not exist. Screen readers announce "table, 4 columns, 12 rows" and read cell-by-cell, turning a two-column newsletter layout into a confusing maze. In Word and PowerPoint, rebuild the layout with proper columns, text boxes, or a multi-column section instead of a grid. In HTML, use CSS grid or flexbox rather than `<table>`. In PDF, retag any layout grid so it is not a `Table` structure element. Reserve real `<table>` markup exclusively for genuine data with meaningful rows and headers.

*Reference: WCAG 1.3.1 (A); ADA Title II*

### Tell a data table apart from a layout table

Before remediating, decide what you are looking at: a data table has header cells that label the meaning of the data cells (a "Month" column, a "Revenue" row), so reading a value out of context requires knowing its headers. A layout table just positions unrelated content in a grid with no such labels. Ask, "Would any cell be ambiguous without a row or column header?" If yes, it is a data table and needs proper header markup. If no, it should not be a table at all. This single decision drives every other choice you make about scope, captions, and structure.

*Reference: WCAG 1.3.1 (A)*

### Mark header cells in Word

In Microsoft Word, select the top row of a data table, open Table Design, and check "Header Row" in the Table Style Options group. Then, with the table selected, go to Layout and click "Repeat Header Rows." Crucially, also right-click the table, choose Table Properties, open the Row tab, and enable "Repeat as header row at the top of each page." This tells Word the row is a genuine header, and when the document exports to tagged PDF, those cells become `TH` elements instead of ordinary `TD` cells. Visual bolding alone does not create the accessibility relationship.

*Reference: WCAG 1.3.1 (A); PDF/UA*

### Set header scope in HTML

In an HTML data table, use `<th>` for header cells and add a `scope` attribute so assistive technology knows what each header governs. Column headers get `scope="col"`; row headers get `scope="row"`. For example, `<th scope="col">Quarter</th>` labels a whole column, while `<th scope="row">West Region</th>` labels a whole row. Without scope, browsers guess associations and often guess wrong on anything beyond the simplest grid. Add `scope` to every header cell, not just the first, and verify the pairing by tabbing through with a screen reader that announces the header before each data value.

*Reference: WCAG 1.3.1 (A); HTML `th` scope*

### Associate complex headers with headers and id

When a table has more than one header dimension per cell (for instance a header row plus a header column, or spanned multi-level headers), `scope` alone cannot express the relationships. Instead give every header cell a unique `id`, then on each data cell add a `headers` attribute listing the ids that apply, space-separated: `<td headers="q1 west">…</td>`. This explicitly binds a value to both its column and row headers, so a screen reader announces "Q1, West, 4200." It is more verbose than scope but is the only reliable method for genuinely complex tables. Reserve it for tables where simple scope truly fails.

*Reference: WCAG 1.3.1 (A); HTML `headers`/`id`*

### Tag TH cells in a PDF

In a tagged PDF, header cells must be `<TH>` structure elements, not `<TD>`. In Acrobat Pro, open the Tags panel (or the Accessibility Table Editor: select the table with the Reading Order tool, then "Table Editor"), right-click a cell, and choose Table Cell Properties to change its type to Header Cell and set its Scope to Row, Column, or Both. Work through every header cell, including row-label cells down the left side. A PDF that visually looks like a table but has only `TD` tags will fail accessibility checks and will not announce headers to a screen reader, even if the source Word file was correct.

*Reference: PDF/UA; WCAG 1.3.1 (A)*

### Set cell scope in a PDF Table Editor

After marking a PDF cell as a header (`TH`), you must also give it a Scope so the association direction is unambiguous. In Acrobat's Table Editor, open Table Cell Properties on each header cell and choose Scope: Row for a row label, Column for a column label, or Both for a corner cell that labels both. For data cells in complex tables, the Cell Properties dialog also lets you enter associated header cell IDs, mirroring the HTML `headers`/`id` approach. Do not leave scope as "None" on a header cell; an unscoped `TH` still leaves the reading relationship ambiguous for assistive technology.

*Reference: PDF/UA clause 7.5; WCAG 1.3.1 (A)*

### Avoid merged and split cells

Merged (spanned) cells break the clean grid that assistive technology depends on and are the leading cause of tables reading incorrectly. Before remediating, redesign so each row and column is uniform: split a merged title cell into a real caption above the table, and repeat a shared value into each cell rather than merging. In Word, use Layout > Split Cells to undo merges; in Excel, avoid "Merge & Center" entirely and use "Center Across Selection" for visual centering instead. If a spanned header is truly unavoidable, you must fall back to explicit `headers`/`id` association, because simple scope cannot describe a cell that covers multiple columns.

*Reference: WCAG 1.3.1 (A)*

### Add a caption to a data table

A caption gives the table a programmatic title that a screen reader announces when the user enters the table, so they know what they are reading. In HTML, place a `<caption>` element as the first child of `<table>`. In Word, right-click the table, choose Insert Caption, and position it above the table; keep it as a true caption, not a free-floating line of text. In a tagged PDF, use a `<Caption>` element inside the `<Table>` structure. Keep captions short and descriptive ("Q1 2026 revenue by region"). A caption is not the same as a summary and does not replace header cells.

*Reference: WCAG 1.3.1 (A); HTML `caption`*

### Provide a summary for complex tables

For a table whose structure is intricate, a summary explains how it is organized so a non-visual user can navigate it. In HTML, do not revive the obsolete `summary` attribute; instead describe the layout in a `<caption>`, in adjacent prose, or via `aria-describedby` pointing to a nearby paragraph. In a tagged PDF, put the explanation in the table's Alternate Text or a preceding paragraph. Write it functionally: "Read across each row for a region; the final column totals the year." Reserve summaries for genuinely complex tables; a simple two-header grid needs only good headers and a caption, not extra prose.

*Reference: WCAG 1.3.1 (A)*

### Handle multi-level column headers

When a table has grouped headers, such as a "2026" header spanning "Q1" and "Q2" sub-columns, you have two header rows and cannot rely on scope alone. In HTML, give the top spanning header `colspan` plus an `id`, give each sub-header its own `id`, and reference both ids from each data cell's `headers` attribute. You can also use `scope="colgroup"` on a header that spans a group of columns. In a PDF, set the spanning cell's ColSpan in Table Cell Properties and use associated cell IDs. Wherever possible, though, flatten the design into a single header row to avoid the complexity entirely.

*Reference: WCAG 1.3.1 (A); HTML `scope="colgroup"`*

### Flatten nested tables

A table placed inside the cell of another table is almost always a mistake and is extremely hard for assistive technology to convey, because the reader must track which table it is in at each moment. Remediate by splitting the content into two separate, sibling tables, each with its own headers and caption, or by redesigning the data so a single flat table with clear column headers carries everything. In Word and PowerPoint, delete the inner table and reflow its data into added columns or a second table below. Never build a new nested table; if you inherit one, unnesting it is the fix, not tagging it.

*Reference: WCAG 1.3.1 (A)*

### Deal with empty cells intentionally

A truly empty data cell can leave a screen-reader user unsure whether data is missing or the cell simply doesn't apply, and an empty cell can even disrupt some readers' header tracking. Decide per cell: if a value is genuinely zero, enter "0"; if it does not apply, enter a clear marker like "N/A" or "—" with a note explaining the symbol. Avoid leaving header-position cells blank, since an empty `<th>` provides no label. In HTML you can use CSS to hide a placeholder visually while keeping it available to assistive tech, but usually an explicit "N/A" is clearest for everyone.

*Reference: WCAG 1.3.1 (A)*

### Repeat header rows across page breaks

When a printed or PDF table spans multiple pages, the header row must repeat at the top of each page so the labels stay attached to the data. In Word, select the header row, go to the Layout tab, and click "Repeat Header Rows"; also enable "Repeat as header row" in Table Properties > Row. In Excel, set Page Layout > Print Titles > "Rows to repeat at top." In HTML, place headers in `<thead>` so browsers and print styles repeat them. This keeps the association intact visually and, in tagged output, ensures the continued rows still map back to their `TH` headers.

*Reference: WCAG 1.3.1 (A)*

### Build accessible tables in Excel

Excel worksheets are not automatically accessible just because they hold data. Convert a data range into a named Table via Insert > Table, confirm "My table has headers," and give the table a meaningful name in Table Design so screen-reader users can navigate to it. Keep one clean header row, avoid blank rows and columns inside the data region, and never use "Merge & Center." Set a print title row for multi-page output. Add a sheet-level description in the Alt Text pane if the layout needs explaining. Avoid stacking multiple separate tables on one sheet, which confuses navigation; give each its own sheet or clear separation.

*Reference: WCAG 1.3.1 (A)*

### Make PowerPoint tables accessible

Insert tables in PowerPoint with Insert > Table so they become real table objects, not images or grouped text boxes. Mark the top row as a header by selecting the table, opening the Table Design tab, and checking "Header Row." Keep the table simple, since PowerPoint offers no way to set row-header scope or multi-level headers; if the data is complex, present it on a slide as a simple summary and link to an accessible Word or HTML version. Verify the slide reading order in the Selection Pane so the table is read at the right point, and add alt text describing its purpose.

*Reference: WCAG 1.3.1 (A)*

### Run the built-in table checks

Do not trust a table by eye; use the tools. In Word, PowerPoint, and Excel, run File > Info > Check for Issues > Check Accessibility, which flags tables missing a header row and merged cells. In Acrobat Pro, run the Accessibility Check and inspect "Tables" results, then use the Table Editor to confirm every header is `TH` with a scope. For HTML, validate the markup and test with a screen reader's table-navigation keys (in NVDA, Ctrl+Alt+arrow keys) to hear whether headers are announced with each cell. Automated checks catch structure errors, but only a screen-reader pass confirms the relationships truly read correctly.

*Reference: WCAG 1.3.1 (A); PDF/UA*

### Preserve table tags when converting formats

Table accessibility is fragile across conversions: a perfectly tagged Word table can lose its `TH` markup when saved to PDF through the wrong path. Always export using Acrobat's "Create PDF" add-in or File > Save As Adobe PDF with "Enable Accessibility and Reflow with tagged Adobe PDF" checked, never "Print to PDF," which flattens structure. After any conversion, reopen the result and re-verify headers, scope, and reading order rather than assuming they survived. When copying a table between Word, PowerPoint, and Excel, the header-row designation and merged-cell state often change, so re-apply the header settings in the destination application every time.

*Reference: WCAG 1.3.1 (A); PDF/UA*
