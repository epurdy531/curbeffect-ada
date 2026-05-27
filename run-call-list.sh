#!/bin/zsh
#
# run-call-list.sh — CurbEffect daily call-list automation (workflow #3)
#
# 1. Generates today's call list by running Claude Code headlessly (print
#    mode) against workflows/call-list.md, which may append cold-call targets
#    to contact-log.md and saves a draft to drafts/.
# 2. Emails the newest drafts/call-list-*.md via send-digest.py.
#
# Intended to be launched by launchd on weekdays. All output (stdout+stderr)
# from each step, plus timestamped status lines, is appended to
# logs/call-list.log.

set -u

PROJECT_DIR="/Users/ericamcdevitt/code/curbeffect-ada"
CLAUDE="/opt/homebrew/bin/claude"
PYTHON="/opt/homebrew/bin/python3"
SECRETS="$HOME/.curbeffect-secrets.env"
LOG="$PROJECT_DIR/logs/call-list.log"

# launchd runs with a minimal PATH; make sure Homebrew tools (and anything
# claude shells out to, e.g. node) are findable.
export PATH="/opt/homebrew/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"

# Always operate from the project directory.
cd "$PROJECT_DIR" || exit 1
mkdir -p "$PROJECT_DIR/logs"

# Timestamped log helper.
log() { echo "[$(date '+%Y-%m-%d %H:%M:%S')] $*" >> "$LOG"; }

log "=== call-list run starting ==="

# Load the Gmail app password (GMAIL_APP_PASSWORD) from the secrets file.
if [ -f "$SECRETS" ]; then
    source "$SECRETS"
    log "loaded secrets from $SECRETS"
else
    log "WARNING: secrets file $SECRETS not found; GMAIL_APP_PASSWORD may be unset"
fi

# 1. Generate the call list headlessly.
# Scoped to the tools the workflow needs: web research (phone numbers, vendor
# checks), Read (contact-log.md), Write (the draft), and Edit (append any
# cold-call targets to contact-log.md). Anything outside this allowlist is
# denied automatically rather than prompting, which would hang a headless run.
log "generating call list via claude (print mode, workflows/call-list.md) ..."
"$CLAUDE" -p "Follow the instructions in workflows/call-list.md and generate today's call list." \
    --allowedTools "WebSearch" "WebFetch" "Read" "Write" "Edit" "Glob" >> "$LOG" 2>&1
claude_rc=$?
log "claude exit code: $claude_rc"

# 2. Email the newest call-list draft. Pass the file path explicitly so
# send-digest.py does NOT fall back to sending the daily digest. The (Nom)
# glob qualifier orders matches by modification time (newest first) and
# yields nothing — instead of erroring — when no call-list draft exists.
lists=("$PROJECT_DIR"/drafts/call-list-*.md(Nom))
if (( ${#lists} == 0 )); then
    log "ERROR: no drafts/call-list-*.md found; skipping send"
    send_rc=1
else
    newest_list="${lists[1]}"
    log "sending call list via send-digest.py: $newest_list"
    "$PYTHON" "$PROJECT_DIR/send-digest.py" "$newest_list" >> "$LOG" 2>&1
    send_rc=$?
    log "send-digest.py exit code: $send_rc"
fi

log "=== call-list run finished (claude=$claude_rc send=$send_rc) ==="

# Non-zero exit if either step failed, so launchd records the failure.
[ "$claude_rc" -eq 0 ] && [ "$send_rc" -eq 0 ]
