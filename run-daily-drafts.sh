#!/bin/zsh
#
# run-daily-drafts.sh — CurbEffect daily true-draft outreach automation
#
# "Drafts to Erica; she sends." Each weekday this:
# 1. Picks up to PER_CATEGORY (default 3) eligible entities in each category
#    (city, county, library, court) straight from the database.
#    Eligible = continue_contact is not false, no email_date yet, and a real
#    (non-placeholder) contact email. High priority first.
# 2. Scans each picked entity for PDFs (veraPDF).
# 3. Composes a "true draft": Subject = the real outreach subject, body = the
#    exact email Erica will send, with ONE added line at the top — "Send to:
#    <recipient>". Greeting is personalized ("Hi <FirstName>," when the contact
#    is a named individual, else "Hi there,").
# 4. Emails that draft to erica.mcdevitt@curbeffect.com and sets the entity's
#    email_date to today (so it isn't picked again).
#
# NOTHING is emailed to the outside entity — Erica reviews each draft and
# sends it herself. Launched by launchd weekdays at 5:13am
# (com.curbeffect.daily-drafts.plist).

set -u

PROJECT_DIR="/Users/ericamcdevitt/code/curbeffect-ada"
SECRETS="$HOME/.curbeffect-secrets.env"
LOG="$PROJECT_DIR/logs/daily-drafts.log"

# launchd runs with a minimal PATH. Put the rbenv shims FIRST so `bin/rails`
# (#!/usr/bin/env ruby) resolves to the project's pinned Ruby 3.3.4 (via
# outreach-db/.ruby-version) rather than macOS system Ruby 2.6. Then Homebrew
# tools (python3, verapdf) and the rest.
export PATH="$HOME/.rbenv/shims:/opt/homebrew/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"

cd "$PROJECT_DIR/outreach-db" || exit 1
mkdir -p "$PROJECT_DIR/logs"

log() { echo "[$(date '+%Y-%m-%d %H:%M:%S')] $*" >> "$LOG"; }

log "=== daily-drafts run starting ==="

# Load GMAIL_APP_PASSWORD (used by send-digest.py via the rake task).
if [ -f "$SECRETS" ]; then
    source "$SECRETS"
    log "loaded secrets from $SECRETS"
else
    log "WARNING: secrets file $SECRETS not found; GMAIL_APP_PASSWORD may be unset"
fi

# The database is the master record — this job reads eligible entities
# straight from it and writes email_date straight back. It does NOT sync from
# contact-log.md.
log "running outreach:daily_drafts ..."
bin/rails outreach:daily_drafts >> "$LOG" 2>&1
rc=$?
log "outreach:daily_drafts exit code: $rc"

log "=== daily-drafts run finished (rc=$rc) ==="
exit $rc
