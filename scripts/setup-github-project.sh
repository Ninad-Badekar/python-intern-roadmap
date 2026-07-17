#!/usr/bin/env bash
# Create a GitHub Project board like the DE Training Program reference.
# Requires: gh auth refresh -h github.com -s project,read:project
set -euo pipefail

OWNER="${OWNER:-Ninad-Badekar}"
REPO="${REPO:-Ninad-Badekar/python-intern-roadmap}"
PROJECT_TITLE="${PROJECT_TITLE:-Python Intern Training Program}"

echo "==> Creating project: ${PROJECT_TITLE}"
PROJECT_JSON=$(gh project create --owner "$OWNER" --title "$PROJECT_TITLE" --format json)
PROJECT_NUMBER=$(echo "$PROJECT_JSON" | jq -r '.number')
PROJECT_ID=$(echo "$PROJECT_JSON" | jq -r '.id')
echo "    Project #${PROJECT_NUMBER} (${PROJECT_ID})"

echo "==> Linking repo ${REPO}"
gh project link "$PROJECT_NUMBER" --owner "$OWNER" --repo "$REPO"

echo "==> Creating Module field"
MODULE_FIELD=$(gh project field-create "$PROJECT_NUMBER" --owner "$OWNER" \
  --name "Module" --data-type "SINGLE_SELECT" --format json \
  --single-select-options "0. Setup & Git,1. Python Basics,2. Flask,3. FastAPI,4. Data Science,5. Capstone Projects")
MODULE_FIELD_ID=$(echo "$MODULE_FIELD" | jq -r '.id')

echo "==> Adding open issues to project"
gh issue list --repo "$REPO" --label roadmap --state open --json number,title,labels \
  --limit 100 | jq -c '.[]' | while read -r issue; do
  NUM=$(echo "$issue" | jq -r '.number')
  TITLE=$(echo "$issue" | jq -r '.title')
  LABELS=$(echo "$issue" | jq -r '[.labels[].name] | join(",")')

  ITEM=$(gh project item-add "$PROJECT_NUMBER" --owner "$OWNER" --url "https://github.com/${REPO}/issues/${NUM}" --format json)
  ITEM_ID=$(echo "$ITEM" | jq -r '.id')

  MODULE=""
  case "$LABELS" in
    *"module: 0-setup"*) MODULE="0. Setup & Git" ;;
    *"module: 1-python-basics"*) MODULE="1. Python Basics" ;;
    *"module: 2-flask"*) MODULE="2. Flask" ;;
    *"module: 3-fastapi"*) MODULE="3. FastAPI" ;;
    *"module: 4-data-science"*) MODULE="4. Data Science" ;;
    *"module: 5-capstone"*) MODULE="5. Capstone Projects" ;;
  esac

  if [[ -n "$MODULE" && "$ITEM_ID" != "null" ]]; then
    OPTION_ID=$(gh project field-list "$PROJECT_NUMBER" --owner "$OWNER" --format json \
      | jq -r --arg mod "$MODULE" '.fields[] | select(.name=="Module") | .options[] | select(.name==$mod) | .id')
    gh project item-edit "$PROJECT_NUMBER" --owner "$OWNER" --id "$ITEM_ID" \
      --field-id "$MODULE_FIELD_ID" --single-select-option-id "$OPTION_ID" >/dev/null 2>&1 || true
  fi
  echo "    Added #${NUM}: ${TITLE} → ${MODULE:-unassigned}"
done

PROJECT_URL="https://github.com/users/${OWNER}/projects/${PROJECT_NUMBER}"
echo ""
echo "✅ Project ready: ${PROJECT_URL}"
echo ""
echo "Next steps (in GitHub UI):"
echo "  1. Open the project → Layout → group by 'Module' (Modules & Tasks view)"
echo "  2. Add a Roadmap view grouped by dates if needed"
echo "  3. Pin the project on your profile or org"
