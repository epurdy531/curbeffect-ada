#!/usr/bin/env python3
import os, re, datetime

BASE = "/Users/ericamcdevitt/code/curbeffect-ada/tmp/tips365"
OUT = "/Users/ericamcdevitt/code/curbeffect-ada/tips-365.md"

# order -> (filename, section label)
MANIFEST = [
    ("01-foundations.md", "Foundations, the Law & ADA Title II"),
    ("02-word.md",        "Microsoft Word"),
    ("03-pdf.md",         "PDF Remediation in Acrobat"),
    ("04-export.md",      "Converting & Exporting to PDF"),
    ("05-powerpoint.md",  "Microsoft PowerPoint"),
    ("06-excel.md",       "Microsoft Excel & Spreadsheets"),
    ("07-google.md",      "Google Workspace (Docs, Slides, Sheets)"),
    ("08-epub.md",        "EPUB & E-Books"),
    ("09-web.md",         "Websites & Web Content (WCAG 2.1 AA)"),
    ("10-images.md",      "Images, Alt Text & Complex Graphics"),
    ("11-tables.md",      "Tables Across Formats"),
    ("12-forms.md",       "Forms Across Formats"),
    ("13-color.md",       "Color & Visual Design"),
    ("14-multimedia.md",  "Multimedia: Captions, Transcripts & Audio Description"),
    ("15-testing.md",     "Testing, Validation & Tools"),
    ("16-at.md",          "Assistive Technology & How People Read"),
]

def parse_tips(text):
    """Split a category file into (title, body_lines) blocks on H3 headings."""
    tips = []
    cur = None
    for line in text.splitlines():
        m = re.match(r'^###\s+(.*)$', line)
        if m:
            if cur is not None:
                tips.append(cur)
            cur = {"title": m.group(1).strip(), "body": []}
        else:
            if cur is not None:
                cur["body"].append(line)
    if cur is not None:
        tips.append(cur)
    # trim leading/trailing blank lines in each body
    for t in tips:
        while t["body"] and t["body"][0].strip() == "":
            t["body"].pop(0)
        while t["body"] and t["body"][-1].strip() == "":
            t["body"].pop()
    return tips

sections = []
counts = []
for fname, label in MANIFEST:
    with open(os.path.join(BASE, fname), encoding="utf-8") as fh:
        tips = parse_tips(fh.read())
    counts.append((label, len(tips)))
    sections.append((label, tips))

total = sum(c for _, c in counts)

today = datetime.date(2026, 7, 6).isoformat()

lines = []
lines.append("# CurbEffect — 365 Accessibility Remediation Tips")
lines.append("")
lines.append(f"A one-year bank of {total} daily tips for document and web accessibility "
             "remediation, spanning every major document type, exporting to PDF, and "
             "website content. Written for ADA Title II entities (US state & local "
             "governments, courts, libraries) and HHS-funded organizations.")
lines.append("")
lines.append("**Key legal framing woven throughout:** Under ADA Title II, a public "
             "entity's web content and the documents it posts must meet WCAG 2.1 Level "
             "AA — and the *original/source* document (not just a PDF export) is what "
             "must be remediated, because the entity is liable for the content the "
             "public actually uses. Compliance deadlines (April 2026/2027/2028) move the "
             "timeline, not the liability: plaintiffs can sue today.")
lines.append("")
lines.append(f"_Generated {today}. Draft for proofreading._")
lines.append("")
lines.append("---")
lines.append("")

# Table of contents
lines.append("## Contents")
lines.append("")
start = 1
for label, n in counts:
    end = start + n - 1
    anchor = re.sub(r'[^a-z0-9 -]', '', label.lower()).replace(' ', '-')
    lines.append(f"- **{label}** — tips {start}–{end} ({n})")
    start = end + 1
lines.append("")
lines.append("---")
lines.append("")

# Body
n = 0
for label, tips in sections:
    lines.append(f"## {label}")
    lines.append("")
    for t in tips:
        n += 1
        lines.append(f"### {n}. {t['title']}")
        lines.append("")
        lines.extend(t["body"])
        lines.append("")
    lines.append("---")
    lines.append("")

with open(OUT, "w", encoding="utf-8") as fh:
    fh.write("\n".join(lines).rstrip() + "\n")

print(f"wrote {OUT}")
print(f"total tips: {total}")
for label, c in counts:
    print(f"  {c:3d}  {label}")
