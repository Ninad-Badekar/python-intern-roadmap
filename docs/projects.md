# Capstone Projects

Build these after completing Phases 1–4. Each capstone combines multiple skills and should live in **its own GitHub repository** with a professional README.

---

## Project requirements (all capstones)

Every project you submit should include:

- [ ] `README.md` — what it does, how to install, how to run
- [ ] `requirements.txt` with pinned or minimum versions
- [ ] `.gitignore` (Python, venv, `.env`, `__pycache__`)
- [ ] Meaningful commit messages (not just "fix" or "update")
- [ ] No secrets in the repo (API keys in `.env`, gitignored)

---

## Tier 1 — Phase mini-projects

Complete one per phase during learning.

| Phase | Project | Repo name suggestion |
|-------|---------|-------------------|
| 1 | CLI todo or expense tracker | `intern-todo-cli` |
| 2 | Flask blog or expense web app | `intern-flask-blog` |
| 3 | Task REST API with CRUD | `intern-task-api` |
| 4 | EDA Jupyter notebook on public data | `intern-data-eda` |

---

## Tier 2 — Integration capstones

Pick **one** after finishing all phases.

### 1. Full-stack task manager

Combine Flask (or a simple HTML frontend) + FastAPI backend.

**Features:**
- FastAPI backend with task CRUD
- SQLite database
- Simple frontend (Flask templates or fetch from `/docs` API)
- User-facing README with architecture diagram

**Skills:** API design, DB, integration, documentation

---

### 2. Data-backed API

FastAPI service that serves insights from a dataset.

**Features:**
- Load and clean a CSV on startup or via a script
- Endpoints like `GET /stats/summary`, `GET /stats/by-category`
- Pydantic response models
- Optional: one chart saved as static image

**Example:** Sales API returning top products, monthly totals, regional breakdown.

**Skills:** pandas, API design, data pipelines

---

### 3. ML prediction API

Train a simple model and expose predictions via FastAPI.

**Features:**
- Train sklearn model in a script or notebook (save with `joblib`)
- `POST /predict` accepting JSON features
- Input validation with Pydantic
- README explaining the model and limitations

**Example:** Iris species classifier, housing price estimator.

**Skills:** scikit-learn, model serialization, API validation

---

### 4. Internal dashboard (Flask + charts)

Flask app that displays charts from a CSV dataset.

**Features:**
- Upload or select a dataset
- Summary tables and 2–3 charts (matplotlib or plotly)
- Filter by date or category
- Clean Bootstrap or simple CSS layout

**Skills:** Flask, pandas, visualization, UX basics

---

## Tier 3 — Stretch goals (optional)

For interns who finish early:

- Add **authentication** (JWT or session-based) to your API
- Write **pytest** tests with >70% coverage on core logic
- Dockerize your app (`Dockerfile` + `docker compose`)
- Deploy to **Render**, **Railway**, or **PythonAnywhere** (free tiers)
- Add **CI** with GitHub Actions (lint + test on push)

---

## README template

Copy this into each project repo:

```markdown
# Project Name

One-line description.

## Features
- Feature 1
- Feature 2

## Tech stack
- Python 3.11+
- FastAPI / Flask / pandas / etc.

## Setup

\`\`\`bash
git clone https://github.com/YOU/project-name.git
cd project-name
python3 -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
\`\`\`

## Run

\`\`\`bash
uvicorn app.main:app --reload   # FastAPI
# or
flask --app run run             # Flask
\`\`\`

## API examples

\`\`\`bash
curl http://127.0.0.1:8000/tasks
\`\`\`

## Author
Your Name — Python Intern 2026
```

---

## Evaluation rubric (for mentors)

| Criteria | Points |
|----------|--------|
| Runs without errors from README steps | 25 |
| Code organization & naming | 20 |
| Correct use of framework patterns | 20 |
| Error handling & validation | 15 |
| Documentation & commits | 20 |

---

## Back to roadmap

→ [Main README](../README.md)
