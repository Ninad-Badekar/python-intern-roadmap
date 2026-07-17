#!/usr/bin/env bash
# Create roadmap issues in the repo (works with standard repo scope).
set -euo pipefail

REPO="${REPO:-Ninad-Badekar/python-intern-roadmap}"
BASE="https://github.com/${REPO}/blob/master"

create_issue() {
  local title="$1"
  local module="$2"
  local body="$3"
  gh issue create \
    --repo "$REPO" \
    --title "$title" \
    --label "module: ${module}" \
    --label "roadmap" \
    --body "$body"
}

# Module labels
for mod in "0-setup" "1-python-basics" "2-flask" "3-fastapi" "4-data-science" "5-capstone"; do
  gh label create "module: ${mod}" --repo "$REPO" --color "0E8A16" --force 2>/dev/null || true
done
gh label create "roadmap" --repo "$REPO" --color "1D76DB" --force 2>/dev/null || true

echo "Creating issues..."

create_issue "Environment Setup & Git Basics" "0-setup" "$(cat <<EOF
**Module:** 0. Setup & Git

## Tasks
- [ ] Install Python 3.11+
- [ ] Set up virtual environments
- [ ] Configure VS Code / Cursor for Python
- [ ] Create GitHub account and configure Git
- [ ] Clone a repo and push your first commit

📖 [Setup guide](${BASE}/docs/00-setup.md)
EOF
)"

create_issue "Python Syntax, Types & Control Flow" "1-python-basics" "$(cat <<EOF
**Module:** 1. Python Basics

## Tasks
- [ ] Variables, types, operators
- [ ] if/elif/else and loops
- [ ] f-strings and string methods
- [ ] range(), enumerate(), zip()

📖 [Python basics](${BASE}/docs/01-python-basics.md)
EOF
)"

create_issue "Functions & Collections" "1-python-basics" "$(cat <<EOF
**Module:** 1. Python Basics

## Tasks
- [ ] Define functions with parameters and return values
- [ ] Lists, dicts, sets, tuples
- [ ] List and dict comprehensions
- [ ] Read/write files with \`with open()\`
- [ ] try/except/finally

📖 [Python basics](${BASE}/docs/01-python-basics.md)
EOF
)"

create_issue "OOP, Modules & Python Project Structure" "1-python-basics" "$(cat <<EOF
**Module:** 1. Python Basics

## Tasks
- [ ] Classes, __init__, methods
- [ ] Inheritance and super()
- [ ] Import modules and create packages
- [ ] Use \`if __name__ == \"__main__\"\`
- [ ] **Project:** CLI todo app or expense tracker

📖 [Python basics](${BASE}/docs/01-python-basics.md)
EOF
)"

create_issue "HTTP Basics & Flask Core" "2-flask" "$(cat <<EOF
**Module:** 2. Flask Web Development

## Tasks
- [ ] HTTP methods and status codes
- [ ] Routes, debug mode, URL parameters
- [ ] request object and redirect/url_for
- [ ] Flash messages

📖 [Flask guide](${BASE}/docs/02-flask.md)
EOF
)"

create_issue "Jinja2 Templates & Static Files" "2-flask" "$(cat <<EOF
**Module:** 2. Flask Web Development

## Tasks
- [ ] render_template and templates/ folder
- [ ] Variables, loops, conditionals in Jinja2
- [ ] Template inheritance (extends/block)
- [ ] Static CSS/JS files

📖 [Flask guide](${BASE}/docs/02-flask.md)
EOF
)"

create_issue "Flask Forms, SQLite & Project Structure" "2-flask" "$(cat <<EOF
**Module:** 2. Flask Web Development

## Tasks
- [ ] HTML forms with POST and server-side validation
- [ ] SQLite integration
- [ ] Application factory and blueprints
- [ ] **Project:** Flask blog or expense tracker

📖 [Flask guide](${BASE}/docs/02-flask.md)
EOF
)"

create_issue "REST API Design & FastAPI Core" "3-fastapi" "$(cat <<EOF
**Module:** 3. FastAPI & REST APIs

## Tasks
- [ ] REST resources and CRUD mapping
- [ ] Path/query parameters
- [ ] Request body with Pydantic models
- [ ] Response models and status codes
- [ ] Run with uvicorn --reload

📖 [FastAPI guide](${BASE}/docs/03-fastapi.md)
EOF
)"

create_issue "Pydantic Validation & API Documentation" "3-fastapi" "$(cat <<EOF
**Module:** 3. FastAPI & REST APIs

## Tasks
- [ ] Field validation and optional fields
- [ ] Separate Create vs Read models
- [ ] Dependency injection (Depends)
- [ ] APIRouter for modular routes
- [ ] Use interactive docs at /docs

📖 [FastAPI guide](${BASE}/docs/03-fastapi.md)
EOF
)"

create_issue "FastAPI CRUD Project & Testing" "3-fastapi" "$(cat <<EOF
**Module:** 3. FastAPI & REST APIs

## Tasks
- [ ] Build full CRUD task API
- [ ] Pagination and filtering
- [ ] 404 error handling
- [ ] Test with httpx/pytest (intro)
- [ ] **Project:** Task REST API with README and curl examples

📖 [FastAPI guide](${BASE}/docs/03-fastapi.md)
EOF
)"

create_issue "NumPy & pandas Fundamentals" "4-data-science" "$(cat <<EOF
**Module:** 4. Data Science

## Tasks
- [ ] NumPy arrays, shape, vectorized ops
- [ ] pandas Series and DataFrame
- [ ] read_csv, head, info, describe
- [ ] Filter, groupby, handle missing values
- [ ] Jupyter notebook workflow

📖 [Data science guide](${BASE}/docs/04-data-science.md)
EOF
)"

create_issue "Data Visualization & Cleaning" "4-data-science" "$(cat <<EOF
**Module:** 4. Data Science

## Tasks
- [ ] Matplotlib line, bar, histogram, scatter
- [ ] Seaborn statistical plots
- [ ] Parse dates and fix data types
- [ ] Document cleaning steps in notebook

📖 [Data science guide](${BASE}/docs/04-data-science.md)
EOF
)"

create_issue "scikit-learn Intro & EDA Project" "4-data-science" "$(cat <<EOF
**Module:** 4. Data Science

## Tasks
- [ ] Train/test split
- [ ] Fit a simple sklearn model
- [ ] Evaluate accuracy or MSE/R²
- [ ] **Project:** EDA notebook on a public dataset

📖 [Data science guide](${BASE}/docs/04-data-science.md)
EOF
)"

create_issue "Capstone: Full-stack Task Manager" "5-capstone" "$(cat <<EOF
**Module:** 5. Capstone Projects

Build a full-stack task manager combining FastAPI backend + simple frontend.

📖 [Projects guide](${BASE}/docs/projects.md)
EOF
)"

create_issue "Capstone: Data-backed API" "5-capstone" "$(cat <<EOF
**Module:** 5. Capstone Projects

FastAPI service serving insights from a cleaned CSV dataset.

📖 [Projects guide](${BASE}/docs/projects.md)
EOF
)"

create_issue "Capstone: ML Prediction API" "5-capstone" "$(cat <<EOF
**Module:** 5. Capstone Projects

Train a sklearn model and expose predictions via FastAPI.

📖 [Projects guide](${BASE}/docs/projects.md)
EOF
)"

create_issue "Capstone: Flask Data Dashboard" "5-capstone" "$(cat <<EOF
**Module:** 5. Capstone Projects

Flask app displaying charts and summary tables from a dataset.

📖 [Projects guide](${BASE}/docs/projects.md)
EOF
)"

echo "Done. Issues created in ${REPO}."
