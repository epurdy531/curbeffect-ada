Subject: City of Ames 2026 city-council-agenda PDFs (CORRECTED — PDF/UA-1)
To: erica.mcdevitt@curbeffect.com

Correction to the earlier listing email I sent today. The previous version used veraPDF's default PDF/A-1B profile (an archival format that doesn't require tags), so it reported 2–6 "failures" on completely untagged PDFs. I've fixed VerapdfRunner to use the PDF/UA-1 profile, which is the accessibility one. The real numbers below.

Top 10 of 12 scanned 2026 Ames City Council meeting agenda PDFs (from outreach-db/lib/city_of_ames/), ranked by PDF/UA-1 failures:

1. ~Master - January 13, 2026, Regular Meeting of the Ames City Council Agenda.pdf — **4,050 failures / 4,435 checks** (91%)
2. ~Master - March 10, 2026, Regular Meeting of the Ames City Council Amended.pdf — 3,722 / 4,097 (91%)
3. ~Master - February 24, 2026, Regular Meeting of the Ames City Council Amend.pdf — 3,630 / 4,010 (91%)
4. ~Master - February 10, 2026, Regular Meeting of the Ames City Council.pdf — 2,917 / 3,296 (89%)
5. ~Master - January 27, 2026, Regular Meeting of the Ames City Council Agenda.pdf — 2,887 / 3,266 (88%)
6. ~Master - February 3, 2026, Special Meeting of the Ames City Council_ Budget.pdf — 557 / 879 (63%)
7. ~Master - February 5, 2026, Special Meeting of the Ames City Council_ Budget.pdf — 539 / 846 (64%)
8. ~Master - February 4, 2026, Special Meeting of the Ames City Council_ Budget.pdf — 448 / 749 (60%)
9. ~Master - February 27, 2026, Special Meeting of the Ames City Council Agenda.pdf — 382 / 683 (56%)
10. ~Master - January 20, 2026, Special Meeting of the Ames City Council Agenda.pdf — 350 / 646 (54%)

For reference, the two not in the top 10:
- ~Master - January 30, 2026, Special Meeting of the Ames City Council.pdf — 348 / 649 (54%)
- ~Master - January 17, 2026, Special Meeting of the Ames City Council Agenda.pdf — 342 / 653 (52%)

All 12 PDFs are essentially untagged and failing the majority of PDF/UA-1 structural checks. Auto-validator failure counts only catch part of the story — even if these passed, list/heading mis-tagging would still need a manual review.
