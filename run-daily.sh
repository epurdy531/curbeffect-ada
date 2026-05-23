#!/bin/zsh
#
# run-daily.sh — CurbEffect daily digest automation
#
# 1. Generates today's accessibility-news digest by running Claude Code
#    headlessly (print mode) against workflows/daily-digest.md, which saves
#    a draft to drafts/.
# 2. Emails the newest draft via send-digest.py.
#
# Intended to be launched by launchd at 05:00. All output (stdout+stderr)
# from each step, plus timestamped status lines, is appended to
# logs/daily-digest.log. The launchd plist additionally captures raw
# stdout/stderr to logs/launchd.out.log and logs/launchd.err.log.

set -u

PROJECT_DIR="/Users/ericamcdevitt/code/curbeffect-ada"
CLAUDE="/opt/homebrew/bin/claude"
PYTHON="/opt/homebrew/bin/python3"
SECRETS="$HOME/.curbeffect-secrets.env"
LOG="$PROJECT_DIR/logs/daily-digest.log"

# launchd runs with a minimal PATH; make sure Homebrew tools (and anything
# claude shells out to, e.g. node) are findable.
export PATH="/opt/homebrew/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"

# Always operate from the project directory.
cd "$PROJECT_DIR" || exit 1
mkdir -p "$PROJECT_DIR/logs"

# Timestamped log helper.
log() { echo "[$(date '+%Y-%m-%d %H:%M:%S')] $*" >> "$LOG"; }

log "=== daily-digest run starting ==="

# Load the Gmail app password (GMAIL_APP_PASSWORD) from the secrets file.
if [ -f "$SECRETS" ]; then
    source "$SECRETS"
    log "loaded secrets from $SECRETS"
else
    log "WARNING: secrets file $SECRETS not found; GMAIL_APP_PASSWORD may be unset"
fi

# 1. Generate the digest draft headlessly.
# Scoped to only the tools the workflow needs (web research + read/write the
# draft). No shell or arbitrary commands; anything outside this allowlist is
# denied automatically rather than prompting (which would hang a headless run).
log "generating digest via claude (print mode, workflows/daily-digest.md) ..."
"$CLAUDE" -p "Follow the instructions in workflows/daily-digest.md exactly. Produce today's digest and save it as a draft under drafts/. Do NOT send any email." \
    --allowedTools "WebSearch" "WebFetch" "Read" "Write" "Glob" >> "$LOG" 2>&1
claude_rc=$?
log "claude exit code: $claude_rc"

# 2. Email the most recent digest draft.
log "sending newest digest via send-digest.py ..."
"$PYTHON" "$PROJECT_DIR/send-digest.py" >> "$LOG" 2>&1
send_rc=$?
log "send-digest.py exit code: $send_rc"

log "=== daily-digest run finished (claude=$claude_rc send=$send_rc) ==="

# Non-zero exit if either step failed, so launchd records the failure.
[ "$claude_rc" -eq 0 ] && [ "$send_rc" -eq 0 ]
