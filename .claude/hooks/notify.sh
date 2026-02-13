#!/bin/bash
# Claude Code notification hook - sends macOS native notifications

INPUT=$(cat)
MESSAGE=$(echo "$INPUT" | jq -r '.message // "Claude needs attention"')
TITLE=$(echo "$INPUT" | jq -r '.title // "Claude Code"')
TYPE=$(echo "$INPUT" | jq -r '.notification_type // "unknown"')

# Send macOS notification
osascript -e "display notification \"$MESSAGE\" with title \"$TITLE\" sound name \"Glass\""

exit 0
