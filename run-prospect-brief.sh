#!/bin/zsh
#
# run-prospect-brief.sh — CurbEffect prospect-brief automation (workflow #2)
#
# 1. Generates a prospecting brief by running Claude Code headlessly (print
#    mode) against workflows/prospect-brief.md: finds new ADA Title II
#    entities, looks up contacts, appends them to contact-log.md, and saves
#    a draft to drafts/prospects-YYYY-MM-DD.md.
# 2. Emails that newest prospect brief via send-digest.py.
#
# Intended to be launched by launchd on weekdays at 05:00. All output
# (stdout+stderr) from each step, plus timestamped status lines, is appended
# to logs/prospect-brief.log. The launchd plist additionally captures raw
# stdout/stderr to logs/prospect-brief.out.log and logs/prospect-brief.err.log.

set -u

PROJECT_DIR="/Users/ericamcdevitt/code/curbeffect-ada"
CLAUDE="/opt/homebrew/bin/claude"
PYTHON="/opt/homebrew/bin/python3"
SECRETS="$HOME/.curbeffect-secrets.env"
LOG="$PROJECT_DIR/logs/prospect-brief.log"

# launchd runs with a minimal PATH; make sure Homebrew tools (and anything
# claude shells out to, e.g. node) are findable.
export PATH="/opt/homebrew/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"

# Always operate from the project directory.
cd "$PROJECT_DIR" || exit 1
mkdir -p "$PROJECT_DIR/logs"

# Timestamped log helper.
log() { echo "[$(date '+%Y-%m-%d %H:%M:%S')] $*" >> "$LOG"; }

log "=== prospect-brief run starting ==="

# Load the Gmail app password (GMAIL_APP_PASSWORD) from the secrets file.
if [ -f "$SECRETS" ]; then
    source "$SECRETS"
    log "loaded secrets from $SECRETS"
else
    log "WARNING: secrets file $SECRETS not found; GMAIL_APP_PASSWORD may be unset"
fi

# 1. Generate the prospect brief headlessly.
# Scoped to only the tools the workflow needs: web research plus read/write/
# edit of contact-log.md and the draft. (Edit is required to append rows to
# the existing contact-log.md.) Anything outside this allowlist is denied
# automatically rather than prompting, which would hang a headless run.
log "generating prospect brief via claude (print mode, workflows/prospect-brief.md) ..."
"$CLAUDE" -p "Follow the instructions in workflows/prospect-brief.md exactly. Produce today's prospect brief, update contact-log.md, and save the brief as a draft under drafts/. Do NOT send any email." \
    --allowedTools "WebSearch" "WebFetch" "Read" "Write" "Edit" "Glob" >> "$LOG" 2>&1
claude_rc=$?
log "claude exit code: $claude_rc"

# 2. Email the newest prospect brief. Pass the file path explicitly so
# send-digest.py does NOT fall back to sending the daily digest. The (Nom)
# glob qualifier orders matches by modification time (newest first) and
# yields nothing — instead of erroring — when no brief exists.
briefs=("$PROJECT_DIR"/drafts/prospects-*.md(Nom))
if (( ${#briefs} == 0 )); then
    log "ERROR: no drafts/prospects-*.md found; skipping send"
    send_rc=1
else
    newest_brief="${briefs[1]}"
    log "sending prospect brief via send-digest.py: $newest_brief"
    "$PYTHON" "$PROJECT_DIR/send-digest.py" "$newest_brief" >> "$LOG" 2>&1
    send_rc=$?
    log "send-digest.py exit code: $send_rc"
fi

log "=== prospect-brief run finished (claude=$claude_rc send=$send_rc) ==="

# Non-zero exit if either step failed, so launchd records the failure.
[ "$claude_rc" -eq 0 ] && [ "$send_rc" -eq 0 ]
