# GitHub Project Board Setup

This roadmap is designed to work like the [DE Training Program](https://github.com/users/vikas-yadav-neo/projects/1) — **grouped by module sections**, not one flat Todo column.

---

## Fix your board in 30 seconds

If all 17 tasks are piled in **Todo**, do this:

1. Open your project board
2. Click the **View** dropdown (top left, next to "Board")
3. Click **+ New view** → name it **`Modules & Tasks`**
4. Click **Layout** (top right) → choose **Table**
5. Click **Group by** → select **Milestone**
6. Rename the project: click the title **"@Ninad-Badekar's untitled project"** → rename to **`Python Intern Training Program`**

You should now see **6 sections**:

| Section | Tasks |
|---------|-------|
| **0. Setup & Git** | #1 |
| **1. Python Basics** | #2, #3, #4 |
| **2. Flask Web Development** | #5, #6, #7 |
| **3. FastAPI & REST APIs** | #8, #9, #10 |
| **4. Data Science** | #11, #12, #13 |
| **5. Capstone Projects** | #14–#17 |

> Milestones are already assigned to all issues. Refresh the project page if sections don't appear immediately.

### Optional: add a status board

Keep **Modules & Tasks** for learning order, and add a second view:

1. **+ New view** → name **`Progress`**
2. Layout: **Board**
3. Group by: **Status** (Todo / In Progress / Done)

Interns use **Modules & Tasks** to see what to learn next, and **Progress** to track completion.

---

## Quick links

| Resource | URL |
|----------|-----|
| **All roadmap tasks** | [Issues](https://github.com/Ninad-Badekar/python-intern-roadmap/issues?q=is%3Aissue+label%3Aroadmap) |
| **By milestone** | [Issues by module](https://github.com/Ninad-Badekar/python-intern-roadmap/milestones) |
| **Docs** | [docs/](./docs/) |

---

## Module structure

| Module | Milestone | Issues |
|--------|-----------|--------|
| 0. Setup & Git | `0. Setup & Git` | [#1](https://github.com/Ninad-Badekar/python-intern-roadmap/issues/1) |
| 1. Python Basics | `1. Python Basics` | [#2–#4](https://github.com/Ninad-Badekar/python-intern-roadmap/issues?q=milestone%3A%221.+Python+Basics%22) |
| 2. Flask | `2. Flask Web Development` | [#5–#7](https://github.com/Ninad-Badekar/python-intern-roadmap/issues?q=milestone%3A%222.+Flask+Web+Development%22) |
| 3. FastAPI | `3. FastAPI & REST APIs` | [#8–#10](https://github.com/Ninad-Badekar/python-intern-roadmap/issues?q=milestone%3A%223.+FastAPI+%26+REST+APIs%22) |
| 4. Data Science | `4. Data Science` | [#11–#13](https://github.com/Ninad-Badekar/python-intern-roadmap/issues?q=milestone%3A%224.+Data+Science%22) |
| 5. Capstone | `5. Capstone Projects` | [#14–#17](https://github.com/Ninad-Badekar/python-intern-roadmap/issues?q=milestone%3A%225.+Capstone+Projects%22) |

---

## Scripts (maintainers)

```bash
# Assign milestones to issues (already run)
bash scripts/assign-milestones.sh

# Create issues from scratch
bash scripts/create-issues.sh

# Full project setup with Module field (needs gh project scope)
gh auth refresh -h github.com -s project,read:project
bash scripts/setup-github-project.sh
```

---

## For interns

1. Open the project → switch to **Modules & Tasks** view
2. Start with section **0. Setup & Git**
3. Click each task → complete the checklist in the issue
4. Move cards to **In Progress** / **Done** on the Progress view when your mentor asks you to track status

---

## Back to roadmap

→ [Main README](../README.md)
