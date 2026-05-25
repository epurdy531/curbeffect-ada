# Workflow #4 — Daily PDF Remediation Tip

## Purpose
Each day, email Erica one original, practical tip. Tips come from two angles: working with a PDF directly, and authoring accessible Word documents so the PDF exported from them starts out accessible. The tips are written from general PDF- and document-accessibility best practice. They are NOT excerpts, summaries, or paraphrases of the ISO 14289-1 (PDF/UA-1) standard. The standard is referred to only by clause number, as a pointer Erica can look up in her own licensed copy.

## Important
- Do NOT read, open, quote, excerpt, or closely paraphrase the ISO 14289-1 standard or any other copyrighted source. Write every tip in your own words from general knowledge of document accessibility.
- Clause numbers below are reference pointers only. Citing a clause number is fine; reproducing what the clause says is not.

## Steps

### 1. Choose today's topic
Tips come from two groups, and the workflow alternates between them day to day.

Look at the most recent entry in pdf-tips-log.md and determine which group it belongs to (match the topic name to the lists below if an older entry has no group label):
- If the most recent tip was from Group A, today's tip is from Group B.
- If the most recent tip was from Group B, today's tip is from Group A.
- If pdf-tips-log.md does not exist or is empty, start with Group A, topic 1.

Within the chosen group, pick the next topic in the list that has not yet been covered. If every topic in that group has already been covered, start that group again from the top, and this time choose a different practical angle so the new tip does not repeat the earlier one.

**Group A — Working with the PDF itself**

1. Tagging real content and logical reading order — clause 7.1
2. Text and declaring the document's natural language — clause 7.2
3. Figures, images, and alternative text — clause 7.3
4. Decorative images and artifacts — clause 7.1
5. Headings and heading structure — clause 7.4
6. Tables: header cells, scope, and structure — clause 7.5
7. Lists and list tagging — clause 7.6
8. Mathematical expressions — clause 7.7
9. Running headers and footers as pagination artifacts — clause 7.8
10. Footnotes, endnotes, and references — clause 7.9
11. Embedded files and attachments — clause 7.11
12. Form fields and the Form tag — clause 7.18
13. Tab order — clause 7.18
14. Links and their alternate descriptions — clause 7.18
15. Document metadata, title, and DisplayDocTitle — clause 7.1
16. Bookmarks and the document outline — clause 7.17
17. Font embedding and Unicode mapping — clause 7.21
18. Security settings that keep assistive technology access open — clause 7.16

**Group B — Authoring accessible Word documents (so the exported PDF starts accessible)**

Every Group B tip is about something the author does in Microsoft Word, and explains how that choice makes the PDF exported from the document more accessible.

1. Exporting the right way: use Word's Save As PDF or Export feature with structure tags enabled, never "Print to PDF" — clause 7.1
2. Use Word's built-in Heading styles for every heading instead of manually bolding or resizing text — clause 7.4
3. Add alternative text to every image, chart, and shape in Word — clause 7.3
4. Build real tables with the Insert Table tool, designate a header row, and keep them simple — clause 7.5
5. Use Word's bulleted and numbered list buttons instead of typing dashes or numbers by hand — clause 7.6
6. Set the document's editing language, and mark any passages written in another language — clause 7.2
7. Fill in the document Title in Word's file properties before exporting — clause 7.1
8. Write meaningful hyperlink display text instead of bare URLs or "click here" — clause 7.18
9. Run Word's built-in Accessibility Checker and clear its findings before exporting — clause 7.1
10. Place running headers and footers in Word's header and footer area, not in the body text — clause 7.8
11. Insert footnotes and endnotes with Word's References tools rather than typing superscripts by hand — clause 7.9
12. Use real multi-column layouts and avoid floating text boxes for meaningful content — clause 7.1

### 2. Write the tip
Write an original, practical tip on the chosen topic. It should be:
- accurate and practitioner-level — genuinely useful to someone doing PDF remediation day to day
- specific and concrete — name the actual menus, features, or steps involved rather than staying general
- plain language, a few sentences to a short paragraph
- focused on one clear, actionable idea

For a Group B (Word) tip, describe what to do in Word and explain how it carries through to the exported PDF — what the document gains, or what remediation work it saves later.

Write every tip entirely in your own words from general document-accessibility best practice. Do not consult or reproduce the ISO standard.

### 3. Assemble the email
Build the email in exactly this format:

    Subject: daily pdf remediation tip
    To: erica.mcdevitt@curbeffect.com

    Topic: [topic name]

    [the tip — a few sentences to a short paragraph of practical advice]

    Reference: for the exact normative wording, see PDF/UA clause [number] in your ISO 14289-1 copy.

### 4. Log and save
- Append one line to pdf-tips-log.md recording today's date, the group (A or B), the topic name, and the clause number. Create the file if it does not exist.
- Save the email to drafts/pdf-tip-YYYY-MM-DD.md using today's date.
- Do NOT send anything. Saving the draft is the final step for this workflow; sending is handled separately by the runner script.

## Notes
- Each tip is original educational content, not a reproduction of any standard.
- Keep tips short, specific, and focused — one idea, clearly explained.
