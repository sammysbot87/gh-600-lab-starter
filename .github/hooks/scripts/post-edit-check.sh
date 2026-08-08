#!/bin/bash
# Post-edit check hook
# Runs AFTER file edits — adds context about what was changed
# Used for audit trail and drift detection

INPUT=$(cat)
TOOL_NAME=$(echo "$INPUT" | jq -r '.toolName // empty')

# Log the edit to an audit trail file
AUDIT_FILE=".github/hooks/audit-trail.log"
TIMESTAMP=$(date -u +"%Y-%m-%dT%H:%M:%SZ")
FILE_PATH=$(echo "$INPUT" | jq -r '.toolArgs // empty')

echo "${TIMESTAMP} | tool=${TOOL_NAME} | file=${FILE_PATH}" >> "$AUDIT_FILE" 2>/dev/null || true

# Warn if editing workflow files (high-risk area)
if echo "$FILE_PATH" | grep -q "\.github/workflows/"; then
  echo '{"output": "⚠️ Workflow file edited. Ensure changes follow least-privilege permissions and include required checks."}'
  exit 0
fi

# Warn if editing hook files (security controls)
if echo "$FILE_PATH" | grep -q "\.github/hooks/"; then
  echo '{"output": "⚠️ Security hook edited. Verify the change does not weaken agent guardrails."}'
  exit 0
fi

exit 0
