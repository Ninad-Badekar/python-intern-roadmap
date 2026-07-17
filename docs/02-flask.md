# Phase 2: Flask Web Development

**Goal:** Build server-rendered web applications with routes, templates, forms, and a database.

**Duration:** 2 weeks

**Prerequisites:** [Phase 1 — Python basics](./01-python-basics.md)

---

## Topics & checklist

### HTTP & web basics
- [ ] HTTP methods: GET, POST, PUT, DELETE
- [ ] Status codes: 200, 201, 400, 404, 500
- [ ] Request vs response (headers, body)
- [ ] What a web server does

### Flask core
- [ ] Install Flask: `pip install flask`
- [ ] Minimal app with `@app.route`
- [ ] Debug mode and auto-reload (dev only)
- [ ] URL parameters and query strings
- [ ] `request` object (`request.form`, `request.args`)
- [ ] `redirect` and `url_for`
- [ ] Flash messages for user feedback

### Templates (Jinja2)
- [ ] `render_template` and folder layout (`templates/`)
- [ ] Variables: `{{ variable }}`
- [ ] Control flow: `{% for %}`, `{% if %}`
- [ ] Template inheritance (`{% extends %}`, `{% block %}`)
- [ ] Static files (`static/css`, `static/js`)

### Forms & data
- [ ] HTML forms with POST
- [ ] Form validation (server-side)
- [ ] Flask-WTF or manual validation
- [ ] SQLite with `sqlite3` or Flask-SQLAlchemy (intro)

### Project structure
- [ ] Application factory pattern (`create_app()`)
- [ ] Blueprints for larger apps
- [ ] `requirements.txt` and `.env` for secrets (never commit secrets)

---

## Minimal Flask app

```python
from flask import Flask, render_template

app = Flask(__name__)

@app.route("/")
def home():
    return render_template("index.html", title="Home")

if __name__ == "__main__":
    app.run(debug=True)
```

---

## Recommended project structure

```
flask-blog/
├── README.md
├── requirements.txt
├── .env                 # FLASK_SECRET_KEY=... (gitignored)
├── .gitignore
├── app/
│   ├── __init__.py      # create_app()
│   ├── routes/
│   │   ├── __init__.py
│   │   └── posts.py
│   ├── models.py
│   ├── templates/
│   │   ├── base.html
│   │   └── posts/
│   └── static/
│       └── css/
│       └── style.css
└── run.py
```

---

## Practice exercises

1. **Hello routes** — `/`, `/about`, `/user/<name>` returning HTML or templates.
2. **Contact form** — Form that validates email and shows a success flash message.
3. **Item list** — CRUD for a list of items stored in SQLite (create, read, update, delete).
4. **404 page** — Custom error handler with a styled template.

---

## Mini-project ideas

| Project | Features |
|---------|----------|
| Personal blog | Posts with title/body, list + detail pages |
| Expense tracker | Add expenses, filter by date, show totals |
| Book library | Add books, mark read/unread, search |
| Event RSVP | Form signup, list attendees |

### Minimum features for your project
- [ ] At least 3 routes
- [ ] Template inheritance
- [ ] One HTML form with validation
- [ ] Data persisted in SQLite
- [ ] README with install & run instructions

---

## Useful packages

```txt
flask>=3.0
python-dotenv>=1.0
flask-sqlalchemy>=3.1   # optional ORM
```

Install:
```bash
pip install flask python-dotenv
pip freeze > requirements.txt
```

---

## Security basics (don't skip)

- Set `app.secret_key` from an environment variable
- Never trust user input — validate on the server
- Use parameterized SQL queries (no string concatenation for SQL)
- Turn off `debug=True` in production

---

## Self-assessment

Ready for Phase 3 when you can:
- [ ] Explain what happens when a user submits a form
- [ ] Create a multi-page app with shared layout
- [ ] Store and retrieve records from SQLite
- [ ] Run your app locally and demo it to someone

---

## Next step

→ [Phase 3: FastAPI](./03-fastapi.md)
