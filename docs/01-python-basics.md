# Phase 1: Python Fundamentals

**Goal:** Write clear Python programs using core language features.

**Duration:** 2–3 weeks

---

## Topics & checklist

### Week 1 — Syntax & data types
- [ ] Variables and naming conventions (`snake_case`)
- [ ] Types: `int`, `float`, `str`, `bool`, `None`
- [ ] f-strings and string methods
- [ ] `if` / `elif` / `else`
- [ ] `for` and `while` loops
- [ ] `range()`, `enumerate()`, `zip()`

### Week 2 — Functions & collections
- [ ] Defining functions, parameters, return values
- [ ] Default arguments and `*args` / `**kwargs` (basics)
- [ ] Lists: append, slice, list comprehensions
- [ ] Dictionaries: keys, `.get()`, dict comprehensions
- [ ] Sets and tuples — when to use each
- [ ] Reading/writing files (`with open(...)`)
- [ ] `try` / `except` / `finally`

### Week 3 — OOP & structure
- [ ] Classes, `__init__`, instance methods
- [ ] Inheritance and `super()`
- [ ] `@property` and `@staticmethod` (intro)
- [ ] Importing modules and creating your own packages
- [ ] `if __name__ == "__main__":` pattern

---

## Key concepts to understand

### List comprehension
```python
squares = [x ** 2 for x in range(10) if x % 2 == 0]
```

### Dictionary lookup
```python
user = {"name": "Ada", "role": "intern"}
role = user.get("role", "guest")  # safe default
```

### Class example
```python
class Task:
    def __init__(self, title: str, done: bool = False):
        self.title = title
        self.done = done

    def mark_done(self) -> None:
        self.done = True
```

### File I/O
```python
with open("notes.txt", "r", encoding="utf-8") as f:
    content = f.read()
```

---

## Practice exercises

Do these without looking up full solutions first.

1. **FizzBuzz** — Print 1–100; "Fizz" for multiples of 3, "Buzz" for 5, "FizzBuzz" for both.
2. **Word counter** — Read a text file and print the top 5 most common words.
3. **Contact book** — Store contacts in a dict; add, search, delete via a simple menu loop.
4. **Bank account class** — `deposit`, `withdraw`, `balance` with validation (no negative balance).
5. **CSV reader** — Parse a CSV and print summary stats (count, average of a numeric column).

---

## Mini-project ideas

Pick **one** and push it to GitHub.

| Project | Skills practiced |
|---------|------------------|
| CLI todo app | Files, classes, argparse |
| Password generator | Random, strings, CLI |
| Quiz game | Dicts, loops, scoring |
| Expense tracker (CLI) | File persistence, formatting |

### Suggested structure
```
todo-cli/
├── README.md
├── requirements.txt   # can be empty at first
├── .gitignore
└── todo/
    ├── __init__.py
    ├── main.py
    ├── models.py
    └── storage.py
```

---

## Common mistakes to avoid

- Mutating a list while iterating over it — iterate over a copy instead.
- Using `==` to compare to `None` — use `is None`.
- Forgetting to activate your virtual environment before `pip install`.
- Giant functions — break logic into smaller, named functions.

---

## Self-assessment

You are ready for Phase 2 when you can:
- [ ] Explain the difference between a list and a tuple
- [ ] Write a class with at least two methods
- [ ] Handle file-not-found with `try/except`
- [ ] Complete a small CLI project without step-by-step guidance

---

## Next step

→ [Module 4: Python Advanced](./04-python-advanced.md)
