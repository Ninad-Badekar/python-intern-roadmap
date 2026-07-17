#!/usr/bin/env bash
# Assign roadmap issues to module milestones for grouped Project board sections.
set -euo pipefail

REPO="${REPO:-Ninad-Badekar/python-intern-roadmap}"

declare -A MILESTONES=(
  ["0-setup"]="0. Setup & Git"
  ["1-python-basics"]="1. Python Basics"
  ["2-flask"]="2. Flask Web Development"
  ["3-fastapi"]="3. FastAPI & REST APIs"
  ["4-data-science"]="4. Data Science"
  ["5-capstone"]="5. Capstone Projects"
)

echo "Creating milestones..."
for key in "${!MILESTONES[@]}"; do
  title="${MILESTONES[$key]}"
  gh api "repos/${REPO}/milestones" \
    -f title="$title" \
    -f description="Python Intern Roadmap — ${title}" \
    >/dev/null 2>&1 || true
  echo "  ✓ ${title}"
done

assign() {
  local num="$1"
  local milestone="$2"
  gh issue edit "$num" --repo "$REPO" --milestone "$milestone"
  echo "  #${num} → ${milestone}"
}

echo ""
echo "Assigning issues to milestones..."
assign 1  "0. Setup & Git"
assign 2  "1. Python Basics"
assign 3  "1. Python Basics"
assign 4  "1. Python Basics"
assign 5  "2. Flask Web Development"
assign 6  "2. Flask Web Development"
assign 7  "2. Flask Web Development"
assign 8  "3. FastAPI & REST APIs"
assign 9  "3. FastAPI & REST APIs"
assign 10 "3. FastAPI & REST APIs"
assign 11 "4. Data Science"
assign 12 "4. Data Science"
assign 13 "4. Data Science"
assign 14 "5. Capstone Projects"
assign 15 "5. Capstone Projects"
assign 16 "5. Capstone Projects"
assign 17 "5. Capstone Projects"

echo ""
echo "Done. In your GitHub Project:"
echo "  View dropdown → + New view → Name: 'Modules & Tasks'"
echo "  Layout: Table → Group by: Milestone"
echo "  (Or Board layout → Group by: Milestone)"
