#!/usr/bin/env bash
# Configure the Python Intern Training Program GitHub Project board.
# Requires: gh auth refresh -h github.com -s project,read:project
set -euo pipefail

OWNER="${OWNER:-Ninad-Badekar}"
REPO="${REPO:-Ninad-Badekar/python-intern-roadmap}"
PROJECT="${PROJECT:-4}"
PROJECT_ID="${PROJECT_ID:-PVT_kwHODNIsO84Bdqg6}"

echo "==> Renaming and linking project ${PROJECT}"
gh project edit "$PROJECT" --owner "$OWNER" \
  --title "Python Intern Training Program" \
  --visibility PUBLIC \
  -d "Structured Python intern learning path: basics → Flask → FastAPI → data science"
gh project link "$PROJECT" --owner "$OWNER" --repo "$REPO" 2>/dev/null || true

echo "==> Creating Module field (skip if exists)"
gh project field-create "$PROJECT" --owner "$OWNER" \
  --name "Module" --data-type "SINGLE_SELECT" --format json \
  --single-select-options "0. Setup & Git,1. Python Basics,2. Flask,3. FastAPI,4. Data Science,5. Capstone Projects" \
  2>/dev/null || true

echo "==> Assigning milestones to issues"
bash "$(dirname "$0")/assign-milestones.sh"

echo "==> Creating module-specific project views"
python3 <<PY
import json, subprocess
owner = "${OWNER}"
project = ${PROJECT}
modules = [
    "0. Setup & Git",
    "1. Python Basics",
    "2. Flask Web Development",
    "3. FastAPI & REST APIs",
    "4. Data Science",
    "5. Capstone Projects",
]
for mod in modules:
    payload = json.dumps({
        "name": f"📋 {mod}",
        "layout": "table",
        "filter": f'milestone:"{mod}"',
        "visible_fields": [369784998, 369786279, 369785001],
    })
    try:
        subprocess.check_output([
            "gh", "api", "-H", "X-GitHub-Api-Version: 2022-11-28",
            "-X", "POST", f"users/{owner}/projectsV2/{project}/views", "--input", "-"
        ], input=payload, text=True)
        print(f"  view: {mod}")
    except subprocess.CalledProcessError:
        print(f"  view exists or skipped: {mod}")
PY

echo ""
echo "✅ Project ready: https://github.com/users/${OWNER}/projects/${PROJECT}"
echo "   Switch view tabs to browse each module section."
