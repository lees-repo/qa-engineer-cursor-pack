#!/usr/bin/env bash
# Install qa-test-agent skill into .cursor/skills/qa-test-agent/

set -e

SKILL_DIR=".cursor/skills/qa-test-agent"
SKILL_FILE="SKILL.md"

REPO="${QA_ENGINEER_REPO:-https://github.com/YOUR_ORG/qa-engineer-cursor-pack}"
BRANCH="${QA_ENGINEER_BRANCH:-main}"
GITHUB_HOST="https://github.com"
RAW_HOST="https://raw.githubusercontent.com"
RAW_URL="${REPO/$GITHUB_HOST/$RAW_HOST}/$BRANCH/skills/qa-test-agent/$SKILL_FILE"

mkdir -p "$SKILL_DIR"
if command -v curl >/dev/null 2>&1; then
  if curl -sSL -o "$SKILL_DIR/$SKILL_FILE" "$RAW_URL"; then
    echo "Installed skill: $SKILL_DIR/$SKILL_FILE"
    exit 0
  fi
elif command -v wget >/dev/null 2>&1; then
  if wget -q -O "$SKILL_DIR/$SKILL_FILE" "$RAW_URL"; then
    echo "Installed skill: $SKILL_DIR/$SKILL_FILE"
    exit 0
  fi
fi

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
LOCAL_SKILL="$SCRIPT_DIR/../skills/qa-test-agent/$SKILL_FILE"
if [ -f "$LOCAL_SKILL" ]; then
  mkdir -p "$SKILL_DIR"
  cp "$LOCAL_SKILL" "$SKILL_DIR/$SKILL_FILE"
  echo "Installed skill from local pack: $SKILL_DIR/$SKILL_FILE"
  exit 0
fi

if ! command -v curl >/dev/null 2>&1 && ! command -v wget >/dev/null 2>&1; then
  echo "Need curl or wget to download the skill." >&2
fi
exit 1
