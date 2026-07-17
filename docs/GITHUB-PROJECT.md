# GitHub Project Board Setup

This roadmap is designed to work like the [DE Training Program](https://github.com/users/vikas-yadav-neo/projects/1) — a **GitHub Project** with modules and trackable tasks.

---

## Quick links

| Resource | URL |
|----------|-----|
| **All roadmap tasks (Issues)** | [Issues tab](https://github.com/Ninad-Badekar/python-intern-roadmap/issues?q=is%3Aissue+label%3Aroadmap) |
| **Project board** | [Python Intern Training Program](https://github.com/users/Ninad-Badekar/projects) *(create via script below)* |
| **Docs** | [docs/](./docs/) |

---

## Project structure (matches DE Training Program)

The board uses these **modules** as group headers:

| Module | Tasks |
|--------|-------|
| **0. Setup & Git** | Environment setup, venv, Git basics |
| **1. Python Basics** | Syntax, functions, OOP, CLI project |
| **2. Flask** | HTTP, templates, forms, SQLite project |
| **3. FastAPI** | REST, Pydantic, CRUD API project |
| **4. Data Science** | NumPy, pandas, viz, sklearn, EDA project |
| **5. Capstone Projects** | Full-stack, data API, ML API, dashboard |

Each task is a **GitHub Issue** with a checklist. Interns move cards on the project board as they progress.

---

## One-time setup (maintainers)

### Step 1 — Grant GitHub Projects permission

```bash
gh auth refresh -h github.com -s project,read:project
```

Complete the browser login when prompted.

### Step 2 — Create issues (already done if you see 17 roadmap issues)

```bash
bash scripts/create-issues.sh
```

### Step 3 — Create the project board

```bash
bash scripts/setup-github-project.sh
```

This creates **Python Intern Training Program**, links it to this repo, adds all roadmap issues, and sets the **Module** field on each card.

### Step 4 — Configure views in GitHub UI

After the script runs, open the project and add views like the DE Training Program:

1. **Modules & Tasks** — Table or Board layout, **group by Module**
2. **Roadmap** — Roadmap layout, group by Module or assign date ranges
3. **By status** — Board layout, columns: Todo / In Progress / Done

Pin the project to your profile: **Your profile → Projects → Pin**.

---

## For interns

1. Open the [Project board](https://github.com/users/Ninad-Badekar/projects) (link from your mentor).
2. Find your assigned module section.
3. Click a task card → read the linked doc → check off items in the issue.
4. Move the card to **In Progress**, then **Done** when complete.
5. Build the phase project before moving to the next module.

---

## Manual setup (without script)

If you prefer the GitHub UI:

1. Go to your profile → **Projects** → **New project** → **Board**
2. Name it **Python Intern Training Program**
3. Link repository: `Ninad-Badekar/python-intern-roadmap`
4. Add field **Module** (Single select) with the 6 module names above
5. Add all [roadmap issues](https://github.com/Ninad-Badekar/python-intern-roadmap/issues?q=label%3Aroadmap) to the project
6. Create view **Modules & Tasks** → Group by **Module**
