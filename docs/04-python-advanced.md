# Module 2: Advanced Python

**Goal:** Go beyond the basics — handle errors and files, write Pythonic iterators, and package your code properly. Includes coding practice problems.

**Duration:** 1–2 weeks

**Prerequisites:** [Module 1 — Python Basics](./01-python-basics.md)

---

## Topics & checklist

### Errors, exceptions & file handling
- [ ] `try` / `except` / `else` / `finally`
- [ ] Catching specific exceptions (not bare `except`)
- [ ] Raising exceptions with `raise`
- [ ] Creating custom exception classes
- [ ] Reading & writing files with `with open(...)`
- [ ] Working with CSV (`csv` module) and JSON (`json` module)

### Comprehensions, iterators & generators
- [ ] List / dict / set comprehensions
- [ ] `enumerate`, `zip`, `map`, `filter`
- [ ] The iterator protocol (`__iter__`, `__next__`)
- [ ] Generator functions with `yield`
- [ ] Generator expressions
- [ ] Why generators save memory on large data

### Decorators, type hints & environments
- [ ] Functions as first-class objects
- [ ] Closures
- [ ] Writing and applying decorators
- [ ] Type hints (`def f(x: int) -> str:`)
- [ ] `typing` basics (`list[int]`, `Optional`, `Union`)
- [ ] Virtual environments (`venv`) and `pip`
- [ ] Pinning dependencies in `requirements.txt`

---

## Key examples

### Exception handling
```python
try:
    with open("data.json", encoding="utf-8") as f:
        data = json.load(f)
except FileNotFoundError:
    data = {}
except json.JSONDecodeError as exc:
    raise ValueError("Corrupt data file") from exc
```

### Generator
```python
def read_large_file(path):
    with open(path, encoding="utf-8") as f:
        for line in f:
            yield line.rstrip("\n")
```

### Decorator
```python
import functools, time

def timed(func):
    @functools.wraps(func)
    def wrapper(*args, **kwargs):
        start = time.perf_counter()
        result = func(*args, **kwargs)
        print(f"{func.__name__} took {time.perf_counter() - start:.3f}s")
        return result
    return wrapper
```

---

## Practice exercises

1. **Safe JSON loader** — Read a JSON file, returning `{}` if missing or invalid.
2. **Line counter generator** — Yield non-empty lines from a large text file.
3. **Retry decorator** — Retry a function up to 3 times on exception.
4. **CSV to dict** — Convert a CSV file into a list of dictionaries.

---

## Mini-project

Build a small **utility package** with:
- [ ] A package folder with `__init__.py`
- [ ] At least one decorator and one generator
- [ ] Type hints on public functions
- [ ] A `requirements.txt`
- [ ] A short README with usage examples

---

## Self-assessment

Ready for Module 3 when you can:
- [ ] Handle errors without crashing the program
- [ ] Read/write CSV and JSON files
- [ ] Explain the difference between a list and a generator
- [ ] Write a simple decorator

---

## Next step

→ [Module 3: SQL Basics](./05-sql-basics.md)

Also practice: [Interview & coding guide](./interview-and-coding.md#advanced-python)
