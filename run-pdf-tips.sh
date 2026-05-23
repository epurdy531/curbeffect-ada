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

# 1. Generate the tip draft headlessly.
# Scoped to only the tools the workflow needs: Read (the workflow + the tips
# log), Write (create the draft and the log), and Edit (append a line to the
# existing pdf-tips-log.md). Deliberately NO web tools — workflow #4 must write
# original tips from general knowledge and must not consult external sources.
# Anything outside this allowlist is denied automatically rather than prompting
# (which would hang a headless run).
log "generating tip via claude (print mode, workflows/pdf-tips.md) ..."
"$CLAUDE" -p "Follow the instructions in workflows/pdf-tips.md and generate today's tip." \
    --allowedTools "Read" "Write" "Edit" >> "$LOG" 2>&1
claude_rc=$?
log "claude exit code: $claude_rc"

# 2. Email the newest tip draft. Pass the file path explicitly so send-digest.py
# does NOT fall back to sending the daily digest. The (Nom) glob qualifier
# orders matches by modification time (newest first) and yields nothing —
# instead of erroring — when no tip draft exists.
tips=("$PROJECT_DIR"/drafts/pdf-tip-*.md(Nom))
if (( ${#tips} == 0 )); then
    log "ERROR: no drafts/pdf-tip-*.md found; skipping send"
    send_rc=1
else
    newest_tip="${tips[1]}"
    log "sending tip via send-digest.py: $newest_tip"
    "$PYTHON" "$PROJECT_DIR/send-digest.py" "$newest_tip" >> "$LOG" 2>&1
    send_rc=$?
    log "send-digest.py exit code: $send_rc"
fi

log "=== pdf-tips run finished (claude=$claude_rc send=$send_rc) ==="

# Non-zero exit if either step failed, so launchd records the failure.
[ "$claude_rc" -eq 0 ] && [ "$send_rc" -eq 0 ]
