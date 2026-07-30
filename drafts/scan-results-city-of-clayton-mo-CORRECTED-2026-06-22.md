Subject: CORRECTION — City of Clayton, MO agendas ARE inaccessible (sham/empty tagging)
To: info@curbeffect.com

CORRECTION to today's earlier Clayton report, which called Clayton "mostly accessible (7 of 8 docs tagged)." That conclusion was WRONG. Per Erica's manual tag-tree review, Clayton's agendas have **one tag with zero words in it** — a single empty structural tag while the actual text sits untagged.

**Why every automated check missed it:**
- veraPDF reported low failure counts on those docs.
- pdfinfo reports "Tagged: yes" (that only means the Marked flag is true).
- Our own untagged-check reported tagged=true (it only verifies a StructTreeRoot EXISTS).

None of these can detect a single empty tag. "Tagged" means "a structure tree is present," NOT "the content is actually tagged / accessible." Only manual review (Acrobat tag tree) catches sham tagging — which is exactly the value Erica's service provides.

**Confirmed:** the document on the Economic Development Committee page (claytonmo-588.pdf) is fully UNTAGGED — pdfinfo "Tagged: no", 9,156 characters of text with no structure at all. Plainly inaccessible.

**Corrected takeaway:** Do NOT treat Clayton as "mostly accessible." The agendas are effectively untagged (empty-tag sham) and inaccessible. This is a STRONG prospect, not a weak one — and a textbook example of why automated PDF/UA scans (including veraPDF) are not proof of accessibility. Recommend leading the pitch with a manual tag-tree screenshot of one agenda.

Reference: https://www.claytonmo.gov/government/boards-and-commissions/economic-development-committee
