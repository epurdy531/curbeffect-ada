#!/usr/bin/env python3
"""Email a CurbEffect draft via Gmail SMTP.

Usage:
    send-digest.py [PATH]

With no argument, finds the newest drafts/daily-digest-*.md file. With a
PATH argument, sends that specific file instead (e.g. a workflow #2 prospect
brief). Either way it reads the Subject:/To: header lines and the body below
them, and sends a multipart email (HTML so bold text and links render and
are clickable, plus a plain-text fallback).

Login:    admin@curbeffect.com
Password: read from the GMAIL_APP_PASSWORD environment variable (never
          hardcoded).

The source file is only read, never modified or deleted.
"""

import glob
import html
import os
import re
import smtplib
import ssl
import sys
from email.message import EmailMessage
from pathlib import Path

# --- Configuration -------------------------------------------------------
# The account that authenticates to Gmail SMTP and that mail is sent FROM.
# GMAIL_APP_PASSWORD must be an app password for THIS account.
SENDER = "admin@curbeffect.com"
# When set, the digest is sent here regardless of the "To:" line in the
# digest file. Set to None to fall back to the file's "To:" header.
RECIPIENT_OVERRIDE = "erica.mcdevitt@curbeffect.com"
SMTP_HOST = "smtp.gmail.com"
SMTP_PORT = 465  # SSL
DRAFTS_DIR = Path(__file__).resolve().parent / "drafts"
DIGEST_GLOB = "daily-digest-*.md"


def find_latest_digest():
    """Return the Path of the newest digest file, or None if none exist."""
    matches = glob.glob(str(DRAFTS_DIR / DIGEST_GLOB))
    if not matches:
        return None
    # Newest by modification time. The dated filenames also sort sensibly,
    # but mtime is robust to out-of-band edits.
    return Path(max(matches, key=os.path.getmtime))


def parse_digest(text):
    """Split a digest into (subject, recipient, body).

    The header is the run of lines before the first blank line; we pull the
    Subject: and To: values from it. The body is everything after that blank
    line, verbatim.
    """
    lines = text.splitlines()

    # Find the first blank line that separates header from body.
    blank_idx = next((i for i, ln in enumerate(lines) if ln.strip() == ""), None)
    if blank_idx is None:
        raise ValueError("digest has no blank line separating header from body")

    header_lines = lines[:blank_idx]
    body = "\n".join(lines[blank_idx + 1:]).strip("\n")

    subject = recipient = None
    for ln in header_lines:
        if ln.lower().startswith("subject:"):
            subject = ln.split(":", 1)[1].strip()
        elif ln.lower().startswith("to:"):
            recipient = ln.split(":", 1)[1].strip()

    if not subject:
        raise ValueError("digest is missing a 'Subject:' header line")
    if not recipient:
        raise ValueError("digest is missing a 'To:' header line")
    if not body.strip():
        raise ValueError("digest has an empty body")

    return subject, recipient, body


# --- Markdown -> HTML (small, stdlib-only converter) ---------------------
_URL_RE = re.compile(r"https?://[^\s<>\)]+")
_MD_LINK_RE = re.compile(r"\[([^\]]+)\]\((https?://[^\s)]+)\)")
_BOLD_RE = re.compile(r"\*\*(.+?)\*\*")
_OL_ITEM_RE = re.compile(r"\d+\.\s+(.*)")


def _linkify_and_format(escaped_line):
    """Apply inline markdown (links, then bare URLs, then bold) to one
    already-HTML-escaped line."""
    placeholders = []

    def stash(anchor_html):
        token = f"\x00{len(placeholders)}\x00"
        placeholders.append(anchor_html)
        return token

    # Markdown links [text](url) first, so their URLs aren't re-linked.
    def md_link(m):
        text, url = m.group(1), m.group(2)
        return stash(f'<a href="{url}">{text}</a>')

    line = _MD_LINK_RE.sub(md_link, escaped_line)

    # Bare URLs next.
    def bare_url(m):
        url = m.group(0)
        # Don't pull trailing sentence punctuation into the link; emit it
        # as plain text after the anchor instead.
        trailing = ""
        while url and url[-1] in ".,;:!?":
            trailing = url[-1] + trailing
            url = url[:-1]
        return stash(f'<a href="{url}">{url}</a>') + trailing

    line = _URL_RE.sub(bare_url, line)

    # Bold.
    line = _BOLD_RE.sub(r"<strong>\1</strong>", line)

    # Restore stashed anchors.
    for i, anchor in enumerate(placeholders):
        line = line.replace(f"\x00{i}\x00", anchor)
    return line


def body_to_html(body):
    """Convert the digest body markdown into a simple HTML document.

    Handles: **bold**, [text](url) and bare URLs (clickable), '- ' bullet
    lists, '1.' ordered lists, '---' horizontal rules, blank-line paragraph
    breaks, and single newlines as <br>.
    """
    out = []
    list_type = None  # None, "ul", or "ol"
    para = []  # consecutive non-blank plain lines, joined with <br>

    def flush_para():
        nonlocal para
        if para:
            out.append(f"<p>{'<br>'.join(para)}</p>")
            para = []

    def close_list():
        nonlocal list_type
        if list_type:
            out.append(f"</{list_type}>")
            list_type = None

    def open_list(kind):
        nonlocal list_type
        if list_type != kind:
            close_list()
            out.append(f"<{kind}>")
            list_type = kind

    lines = body.splitlines()
    for i, raw in enumerate(lines):
        stripped = raw.strip()

        if stripped == "":
            flush_para()
            close_list()
            continue
        if stripped == "---":
            flush_para()
            close_list()
            out.append("<hr>")
            continue

        if stripped.startswith("- "):
            flush_para()
            open_list("ul")
            out.append(f"<li>{_linkify_and_format(html.escape(stripped[2:]))}</li>")
            continue

        # Numbered lines become a real <ol> only for a SIMPLE list. If the next
        # line is an indented continuation, this is a structured numbered record
        # (e.g. a prospect/call-list entry with fields under each number), so we
        # keep the literal number as text rather than starting a restarting <ol>.
        ol = _OL_ITEM_RE.match(stripped)
        next_is_continuation = (
            i + 1 < len(lines)
            and lines[i + 1][:1] in (" ", "\t")
            and lines[i + 1].strip() != ""
        )
        if ol and not next_is_continuation:
            flush_para()
            open_list("ol")
            out.append(f"<li>{_linkify_and_format(html.escape(ol.group(1)))}</li>")
            continue

        # Plain line: accumulate into the current paragraph so consecutive
        # lines (e.g. a signature block) render as one tight block joined by
        # <br>, not as separate spaced-out paragraphs. A blank line, list, or
        # rule flushes the buffer into a <p>.
        close_list()
        para.append(_linkify_and_format(html.escape(raw)))

    flush_para()
    close_list()
    inner = "\n".join(out)
    return (
        "<!DOCTYPE html><html><head><meta charset=\"utf-8\"></head>"
        "<body style=\"font-family: Arial, Helvetica, sans-serif; "
        "font-size: 14px; line-height: 1.5; color: #111;\">\n"
        f"{inner}\n</body></html>"
    )


def body_to_text(body):
    """Plain-text fallback: render markdown links as 'text (url)', drop the
    ** bold markers, and keep everything else (bare URLs stay as-is)."""
    text = _MD_LINK_RE.sub(r"\1 (\2)", body)
    return _BOLD_RE.sub(r"\1", text)


def build_message(subject, recipient, body):
    msg = EmailMessage()
    msg["Subject"] = subject
    msg["From"] = SENDER
    msg["To"] = recipient
    msg.set_content(body_to_text(body))
    msg.add_alternative(body_to_html(body), subtype="html")
    return msg


def main():
    # Optional CLI argument: a path to a specific file to send (e.g. a
    # workflow #2 prospect brief). With no argument, fall back to the newest
    # daily-digest-*.md, exactly as before.
    if len(sys.argv) > 1:
        digest_path = Path(sys.argv[1])
        if not digest_path.is_file():
            print(
                f"ERROR: file not found: {sys.argv[1]}. Nothing to send.",
                file=sys.stderr,
            )
            return 1
    else:
        digest_path = find_latest_digest()
        if digest_path is None:
            print(
                f"ERROR: no digest files matching '{DIGEST_GLOB}' were found in "
                f"{DRAFTS_DIR}. Nothing to send.",
                file=sys.stderr,
            )
            return 1

    try:
        text = digest_path.read_text(encoding="utf-8")
        subject, recipient, body = parse_digest(text)
    except (OSError, ValueError) as e:
        print(f"ERROR: could not read/parse {digest_path}: {e}", file=sys.stderr)
        return 1

    if RECIPIENT_OVERRIDE:
        recipient = RECIPIENT_OVERRIDE

    password = os.environ.get("GMAIL_APP_PASSWORD")
    if not password:
        print(
            "ERROR: the GMAIL_APP_PASSWORD environment variable is not set. "
            "Set it to the Gmail app password for "
            f"{SENDER} and try again.",
            file=sys.stderr,
        )
        return 1

    msg = build_message(subject, recipient, body)

    try:
        context = ssl.create_default_context()
        with smtplib.SMTP_SSL(SMTP_HOST, SMTP_PORT, context=context) as server:
            server.login(SENDER, password)
            server.send_message(msg)
    except smtplib.SMTPAuthenticationError:
        print(
            "ERROR: Gmail rejected the login. Check that GMAIL_APP_PASSWORD "
            f"is a valid app password for {SENDER}.",
            file=sys.stderr,
        )
        return 1
    except (smtplib.SMTPException, OSError, ssl.SSLError) as e:
        print(f"ERROR: failed to send the digest email: {e}", file=sys.stderr)
        return 1

    print("Digest sent successfully.")
    print(f"  Source : {digest_path.name}")
    print(f"  Subject: {subject}")
    print(f"  To     : {recipient}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
