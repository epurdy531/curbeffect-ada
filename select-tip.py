#!/usr/bin/env python3
"""
select-tip.py — pick the day's PDF-remediation tip from the 365-tip bank.

Selection is sampling WITHOUT replacement: each run picks a RANDOM tip from the
ones not yet sent in the current cycle, so tips do not repeat until all 365 have
gone out. When the cycle is exhausted it resets and a fresh random cycle begins.

It reads tips-365.md, writes a ready-to-send email draft (same envelope the old
workflow produced: subject, "Document Accessibility Tip of the Day" header, Topic line,
the tip paragraph, a Reference line, and the standard hashtag footer), records
the chosen tip number in the cycle state file, and appends a human-readable line
to the send log.

Usage:
  select-tip.py --tips tips-365.md --footer templates/pdf-tip-footer.md \
                --out drafts/pdf-tip-YYYY-MM-DD.md \
                --state pdf-tips-cycle.txt --log pdf-tips-sent.log --date YYYY-MM-DD

Exits non-zero (without writing a draft) if anything goes wrong, so the caller
can skip the send rather than mail a broken tip.
"""
import argparse
import os
import random
import re
import sys

TIP_RE = re.compile(r'^###\s+(\d+)\.\s+(.*)$')
REF_RE = re.compile(r'^\*+\s*Reference:\s*(.*?)\s*\*+\s*$', re.IGNORECASE)


def parse_tips(path):
    """Return {number: {'title':..., 'body':..., 'reference':...}} from the bank."""
    tips = {}
    cur = None
    with open(path, encoding="utf-8") as fh:
        for line in fh.read().splitlines():
            m = TIP_RE.match(line)
            if m:
                if cur is not None:
                    tips[cur["num"]] = cur
                cur = {"num": int(m.group(1)), "title": m.group(2).strip(),
                       "body": [], "reference": ""}
                continue
            if cur is None:
                continue
            r = REF_RE.match(line.strip())
            if r:
                cur["reference"] = r.group(1).strip()
            elif line.startswith("## ") or line.strip() == "---":
                # section header / divider — ignore
                continue
            else:
                cur["body"].append(line)
    if cur is not None:
        tips[cur["num"]] = cur
    # tidy each body: drop leading/trailing blank lines, collapse to text
    for t in tips.values():
        body = t["body"]
        while body and body[0].strip() == "":
            body.pop(0)
        while body and body[-1].strip() == "":
            body.pop()
        t["body"] = "\n".join(body).strip()
    return tips


def read_sent(state_path):
    if not os.path.exists(state_path):
        return []
    nums = []
    with open(state_path, encoding="utf-8") as fh:
        for line in fh:
            line = line.strip()
            if line.isdigit():
                nums.append(int(line))
    return nums


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--tips", required=True)
    ap.add_argument("--footer", required=True)
    ap.add_argument("--out", required=True)
    ap.add_argument("--state", required=True)
    ap.add_argument("--log", required=True)
    ap.add_argument("--date", required=True)
    args = ap.parse_args()

    tips = parse_tips(args.tips)
    if not tips:
        print("ERROR: no tips parsed from %s" % args.tips, file=sys.stderr)
        return 1
    all_nums = set(tips.keys())
    total = len(all_nums)

    sent = read_sent(args.state)
    sent_set = set(sent)

    # Cycle reset: once every tip has been sent, start a fresh cycle.
    reset = False
    if sent_set >= all_nums:
        sent = []
        sent_set = set()
        reset = True
        # truncate the state file for the new cycle
        open(args.state, "w", encoding="utf-8").close()

    remaining = sorted(all_nums - sent_set)
    if not remaining:
        print("ERROR: no remaining tips to choose from", file=sys.stderr)
        return 1

    pick = random.choice(remaining)
    tip = tips[pick]

    with open(args.footer, encoding="utf-8") as fh:
        footer = fh.read().rstrip("\n")

    ref = tip["reference"] or "see the referenced standard for exact wording."

    draft = (
        "Subject: daily pdf remediation tip\n"
        "To: info@curbeffect.com\n\n"
        "Document Accessibility Tip of the Day\n\n"
        "\U0001F4C3Topic: %s\U0001F4C4\n\n"
        "%s\n\n"
        "\U0001F50D Reference: %s\n\n\n"
        "%s\n"
    ) % (tip["title"], tip["body"], ref, footer)

    with open(args.out, "w", encoding="utf-8") as fh:
        fh.write(draft)

    # Record the pick in the cycle state and the human log.
    with open(args.state, "a", encoding="utf-8") as fh:
        fh.write("%d\n" % pick)
    sent_count = len(sent_set) + 1
    with open(args.log, "a", encoding="utf-8") as fh:
        fh.write("%s — #%d — %s — (%d of %d this cycle)\n"
                 % (args.date, pick, tip["title"], sent_count, total))

    if reset:
        print("cycle complete — reset; starting a new random cycle")
    print("selected tip #%d (%d of %d this cycle): %s"
          % (pick, sent_count, total, tip["title"]))
    print("wrote draft: %s" % args.out)
    return 0


if __name__ == "__main__":
    sys.exit(main())
