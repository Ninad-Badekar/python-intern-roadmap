# Module 5: FastAPI & REST APIs

**Goal:** Design and build JSON REST APIs with automatic validation and interactive documentation.

**Duration:** 2 weeks

**Prerequisites:** [Module 4 — Flask](./02-flask.md) (HTTP concepts)

---

## Topics & checklist

### REST API design
- [ ] Resources and URLs (`/tasks`, `/tasks/{id}`)
- [ ] HTTP verbs mapped to CRUD
- [ ] JSON request and response bodies
- [ ] Status codes for APIs (201 Created, 204 No Content, 422 Validation Error)
- [ ] Idempotency (GET, PUT, DELETE vs POST)

### FastAPI core
- [ ] Install: `pip install "fastapi[standard]" uvicorn`
- [ ] Path parameters and type hints
- [ ] Query parameters with defaults
- [ ] Request body with Pydantic models
- [ ] Response models and status codes
- [ ] Run with: `uvicorn main:app --reload`

### Pydantic
- [ ] `BaseModel` fields and types
- [ ] Optional fields and defaults
- [ ] Field validation (`EmailStr`, `gt=0`, etc.)
- [ ] Separate models for Create vs Read (don't expose passwords)

### Advanced (intro)
- [ ] Dependency injection (`Depends`)
- [ ] APIRouter for modular routes
- [ ] Background tasks (awareness)
- [ ] Interactive docs at `/docs` and `/redoc`

### Testing APIs
- [ ] Manual testing with `/docs` (Swagger UI)
- [ ] `httpx` + `pytest` for automated API tests (intro)

---

## Minimal FastAPI app

```python
from fastapi import FastAPI
from pydantic import BaseModel

app = FastAPI(title="Intern Task API")

class TaskCreate(BaseModel):
    title: str
    completed: bool = False

tasks: list[dict] = []
next_id = 1

@app.get("/tasks")
def list_tasks():
    return tasks

@app.post("/tasks", status_code=201)
def create_task(payload: TaskCreate):
    global next_id
    task = {"id": next_id, **payload.model_dump()}
    next_id += 1
    tasks.append(task)
    return task
```

Run:
```bash
uvicorn main:app --reload
```

Open: http://127.0.0.1:8000/docs

---

## Recommended project structure

```
task-api/
├── README.md
├── requirements.txt
├── .gitignore
├── app/
│   ├── __init__.py
│   ├── main.py
│   ├── models.py        # Pydantic schemas
│   ├── routers/
│   │   └── tasks.py
│   ├── database.py      # optional SQLite/ORM
│   └── dependencies.py
└── tests/
    └── test_tasks.py
```

---

## Practice exercises

1. **Health check** — `GET /health` returns `{"status": "ok"}`.
2. **CRUD tasks** — In-memory store first, then swap to SQLite.
3. **Pagination** — `GET /tasks?skip=0&limit=10`.
4. **Filtering** — `GET /tasks?completed=true`.
5. **Error handling** — Return 404 when task ID not found.

---

## Mini-project ideas

| Project | Endpoints |
|---------|-----------|
| Task manager API | Full CRUD on `/tasks` |
| Book catalog API | Books + authors, nested routes |
| URL shortener API | POST long URL, GET short code |
| Notes API | User notes with tags |

### Minimum features
- [ ] At least 4 endpoints (Create, Read, Update, Delete)
- [ ] Pydantic models for request/response
- [ ] Proper HTTP status codes
- [ ] Working `/docs` page
- [ ] README with example `curl` commands

---

## Flask vs FastAPI — when to use which

| Use Flask when… | Use FastAPI when… |
|-----------------|-------------------|
| Server-rendered HTML pages | JSON APIs for frontends/mobile |
| Simple sites, admin panels | You need automatic OpenAPI docs |
| You're learning web basics | Performance & type validation matter |

Many teams use **both**: Flask for admin UI, FastAPI for the API layer.

---

## Example API test

```python
from fastapi.testclient import TestClient
from app.main import app

client = TestClient(app)

def test_create_task():
    response = client.post("/tasks", json={"title": "Learn FastAPI"})
    assert response.status_code == 201
    assert response.json()["title"] == "Learn FastAPI"
```

---

## Self-assessment

Ready for Module 6 when you can:
- [ ] Design RESTful URLs for a resource
- [ ] Validate input with Pydantic and return clear errors
- [ ] Demo your API using the Swagger UI
- [ ] Explain the difference between Flask templates and FastAPI JSON responses

---

## Next step

→ [Module 6: Data Science](./04-data-science.md)
