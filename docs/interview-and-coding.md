# Interview Questions & Coding Practice

Use this page alongside the project board cards. Try answering out loud before peeking at hints.

---

## Setup & Git

1. **What is a virtual environment?** — Isolated Python packages per project so dependencies don't conflict.
2. **`git pull` vs `git fetch`?** — `fetch` downloads remote changes; `pull` = fetch + merge.
3. **What is a commit?** — A snapshot of staged changes with a message and unique hash.
4. **Why use branches?** — Work on features without breaking `main`.
5. **What should not be committed?** — Secrets (`.env`), `venv/`, large data, `__pycache__/`.

---

## Python Basics

### Interview
1. **Mutable vs immutable** — Mutable: list, dict, set. Immutable: int, str, tuple.
2. **List vs tuple** — List is mutable; tuple is immutable and hashable (can be dict keys).
3. **`*args` / `**kwargs`** — Variable positional / keyword arguments.
4. **`==` vs `is`** — `==` compares values; `is` compares identity (same object).
5. **List comprehension** — Concise way to build a list: `[x*2 for x in nums if x > 0]`.
6. **`__init__` / `self`** — Constructor; `self` is the instance.
7. **Inheritance** — Child class reuses/extends parent behavior via `class Child(Parent)`.
8. **`if __name__ == "__main__"`** — Runs code only when file is executed directly.

### Coding (practice)
| # | Problem | Hint |
|---|---------|------|
| 1 | Reverse a string | Loop or two-pointer |
| 2 | Is prime? | Check divisors up to √n |
| 3 | Second largest in list | One pass, track top 2 |
| 4 | Char frequency | `dict` or `Counter` |
| 5 | Anagrams? | Sort or count chars |
| 6 | Flatten nested list | Recursion |
| 7 | FizzBuzz | Modulo 3 and 5 |
| 8 | Remove duplicates (order) | Use a `set` of seen |
| 9 | Two-sum pairs | Hash map of complements |
| 10 | Rotate list by k | Slicing: `a[-k:]+a[:-k]` |

---

## Advanced Python

### Interview
1. **Generator** — Lazy iterator using `yield`; saves memory vs building a full list.
2. **Decorator** — Function that wraps another to add behavior.
3. **Iterator protocol** — Objects with `__iter__` / `__next__`.
4. **Context manager** — `with` ensures setup/teardown (e.g. closing files).
5. **Closure** — Inner function that remembers enclosing scope variables.
6. **`@staticmethod` vs `@classmethod`** — Static has no `cls`/`self`; classmethod receives class.
7. **Type hints** — Optional annotations for readability and tooling.
8. **GIL** — Global Interpreter Lock; only one thread executes Python bytecode at a time (CPython).

### Coding (practice)
| # | Problem | Hint |
|---|---------|------|
| 1 | Fibonacci generator | `yield` in a loop |
| 2 | Cache decorator | Dict keyed by args |
| 3 | Word count large file | Line-by-line generator |
| 4 | Flatten nested dict | Recursion + prefix keys |
| 5 | Custom `map` | Generator wrapping function |
| 6 | Group dicts by key | `defaultdict(list)` |
| 7 | Top-N from CSV | `csv` + sort |
| 8 | Timing context manager | `__enter__` / `__exit__` |
| 9 | LRU cache class | OrderedDict |
| 10 | Recursive dir walk | `os.scandir` + yield |

---

## SQL Basics

1. **`WHERE` vs `HAVING`** — `WHERE` filters rows; `HAVING` filters groups after `GROUP BY`.
2. **INNER vs LEFT JOIN** — INNER keeps matches only; LEFT keeps all left rows.
3. **Primary / foreign key** — PK uniquely identifies a row; FK references another table's PK.
4. **Index** — Speeds lookups; costs write time and storage.
5. **CTE** — Named temporary result with `WITH` for readability.
6. **SQL injection** — Always use parameterized queries from Python.

---

## Flask

1. **Flask vs Django** — Flask is lightweight/micro; Django is batteries-included.
2. **Route / view** — URL mapped to a Python function that returns a response.
3. **Jinja2** — Template engine for HTML with `{{ }}` and `{% %}`.
4. **GET vs POST** — GET retrieves; POST submits data.
5. **Blueprint** — Modular route groups for larger apps.
6. **`debug=True`** — Auto-reload + debugger; never enable in production.

---

## FastAPI

1. **REST** — Resource-oriented HTTP APIs (GET/POST/PUT/DELETE).
2. **Flask vs FastAPI** — FastAPI focuses on APIs, validation, and auto docs.
3. **Pydantic** — Data models + validation via type hints.
4. **422** — Validation error (invalid request body/params).
5. **OpenAPI / Swagger** — Auto API docs at `/docs`.
6. **Dependency injection** — Shared logic via `Depends()`.

---

## Data Science

1. **Mean vs median** — Median is robust to outliers.
2. **Std deviation** — Spread of values around the mean.
3. **Correlation ≠ causation** — Related variables aren't necessarily cause/effect.
4. **Train/test split** — Evaluate generalization on unseen data.
5. **Overfitting** — Model memorizes training data; poor on new data.
6. **Precision vs recall** — Precision: of predicted positives, how many correct? Recall: of actual positives, how many found?
7. **Confusion matrix** — TP/FP/TN/FN breakdown.
8. **Supervised vs unsupervised** — Labels vs no labels.
9. **Missing values** — Drop, impute mean/median/mode, or model-based fill — document why.
10. **Feature scaling** — Helps distance-based and gradient-based models.

---

## Capstone interview angles

Be ready to explain:
- Why you chose the stack
- How you structured the project
- How you validated inputs / handled errors
- What you would improve with more time

---

→ [Main README](../README.md)
