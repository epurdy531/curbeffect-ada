#!/bin/zsh
#
# run-pdf-tips.sh — CurbEffect daily PDF-remediation-tip automation (workflow #4)
#
# 1. Generates today's PDF-remediation tip by running Claude Code headlessly
#    (print mode) against workflows/pdf-tips.md, which appends to
#    pdf-tips-log.md and saves a draft to drafts/.
# 2. Emails the newest drafts/pdf-tip-*.md via send-digest.py.
#
# Intended to be launched by launchd. All output (stdout+stderr) from each
# step, plus timestamped status lines, is appended to logs/pdf-tips.log.

set -u

PROJECT_DIR="/Users/ericamcdevitt/code/curbeffect-ada"
CLAUDE="/opt/homebrew/bin/claude"
PYTHON="/opt/homebrew/bin/python3"
SECRETS="$HOME/.curbeffect-secrets.env"
LOG="$PROJECT_DIR/logs/pdf-tips.log"

# launchd runs with a minimal PATH; make sure Homebrew tools (and anything
# claude shells out to, e.g. node) are findable.
export PATH="/opt/homebrew/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"

# Always operate from the project directory.
cd "$PROJECT_DIR" || exit 1
mkdir -p "$PROJECT_DIR/logs"

# Timestamped log helper.
log() { echo "[$(date '+%Y-%m-%d %H:%M:%S')] $*" >> "$LOG"; }

log "=== pdf-tips run starting ==="

# Load the Gmail app password (GMAIL_APP_PASSWORD) from the secrets file.
if [ -f "$SECRETS" ]; then
    source "$SECRETS"
    log "loaded secrets from $SECRETS"
else
    log "WARNING: secrets file $SECRETS not found; GMAIL_APP_PASSWORD may be unset"
fi

# 1. Select today's tip from the 365-tip bank (tips-365.md).
# Sampling WITHOUT replacement: select-tip.py picks a RANDOM tip from those not
# yet sent in the current cycle — so tips do not repeat until all 365 have gone
# out, and then a fresh random cycle begins. This replaces the old headless
# `claude -p` generation (which cost an API call each morning and occasionally
# failed, re-sending a stale tip). Selection is deterministic, offline, and
# fast: no web/API dependency, nothing to hang a scheduled run.
today=$(date +%F)
log "selecting today's tip from the bank (select-tip.py) ..."
"$PYTHON" "$PROJECT_DIR/select-tip.py" \
    --tips   "$PROJECT_DIR/tips-365.md" \
    --footer "$PROJECT_DIR/templates/pdf-tip-footer.md" \
    --out    "$PROJECT_DIR/drafts/pdf-tip-${today}.md" \
    --state  "$PROJECT_DIR/pdf-tips-cycle.txt" \
    --log    "$PROJECT_DIR/pdf-tips-sent.log" \
    --date   "$today" >> "$LOG" 2>&1
gen_rc=$?
log "select-tip.py exit code: $gen_rc"

# 2. Email TODAY's tip draft. Pass the file path explicitly so send-digest.py
# does NOT fall back to sending the daily digest.
#
# We send only the draft whose date matches today, NOT the newest pdf-tip-*.md
# by mtime. If step 1's generation fails (e.g. a transient API error), no new
# draft is written and the newest-by-mtime file would be YESTERDAY's tip —
# re-sending it produced the duplicate emails seen on every failed-generation
# day. Keying on today's date means a failed run sends nothing rather than a
# stale repeat.
todays_tip="$PROJECT_DIR/drafts/pdf-tip-${today}.md"
if [ ! -f "$todays_tip" ]; then
    log "ERROR: no draft for today ($todays_tip); tip selection likely failed (gen_rc=$gen_rc). Skipping send to avoid re-sending a stale tip."
    send_rc=1
else
    log "sending tip via send-digest.py: $todays_tip"
    "$PYTHON" "$PROJECT_DIR/send-digest.py" "$todays_tip" >> "$LOG" 2>&1
    send_rc=$?
    log "send-digest.py exit code: $send_rc"
fi

log "=== pdf-tips run finished (select=$gen_rc send=$send_rc) ==="

# Non-zero exit if either step failed, so launchd records the failure.
[ "$gen_rc" -eq 0 ] && [ "$send_rc" -eq 0 ]
