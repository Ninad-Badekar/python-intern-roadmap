# Phase 0: Environment Setup

Complete this phase before writing any Python code.

---

## Checklist

- [ ] Install Python 3.11 or newer
- [ ] Verify install: `python3 --version`
- [ ] Install a code editor (VS Code or Cursor recommended)
- [ ] Install the Python extension in your editor
- [ ] Install Git
- [ ] Create a GitHub account
- [ ] Configure Git with your name and email

---

## 1. Install Python

**Linux (Ubuntu/Debian):**
```bash
sudo apt update
sudo apt install python3 python3-pip python3-venv
```

**macOS (with Homebrew):**
```bash
brew install python@3.12
```

**Windows:** Download from [python.org](https://www.python.org/downloads/) — check **"Add Python to PATH"**.

Verify:
```bash
python3 --version   # should show 3.11+
pip3 --version
```

---

## 2. Virtual environments

Always use a virtual environment per project — it keeps dependencies isolated.

```bash
mkdir my-first-project
cd my-first-project
python3 -m venv .venv
source .venv/bin/activate   # Linux/macOS
# .venv\Scripts\activate    # Windows

pip install --upgrade pip
```

You'll see `(.venv)` in your terminal prompt when it's active.

Deactivate when done:
```bash
deactivate
```

---

## 3. Editor setup

**VS Code / Cursor extensions:**
- Python (Microsoft)
- Pylance
- Python Debugger

**Recommended settings:**
- Format on save (optional): Black formatter
- Linting: enable `ruff` or `flake8`

---

## 4. Git & GitHub

```bash
git config --global user.name "Your Name"
git config --global user.email "you@example.com"
```

**First repo workflow:**
```bash
mkdir hello-git
cd hello-git
git init
echo "# Hello Git" > README.md
git add README.md
git commit -m "Initial commit"
```

On GitHub: **New repository** → copy the remote URL:
```bash
git remote add origin https://github.com/YOUR_USERNAME/hello-git.git
git branch -M main
git push -u origin main
```

### Git commands you'll use daily

| Command | Purpose |
|---------|---------|
| `git status` | See changed files |
| `git add <file>` | Stage changes |
| `git commit -m "message"` | Save a snapshot |
| `git push` | Upload to GitHub |
| `git pull` | Download latest changes |
| `git checkout -b feature-x` | Create a new branch |

---

## 5. Verify everything works

Create `hello.py`:
```python
def greet(name: str) -> str:
    return f"Hello, {name}!"

if __name__ == "__main__":
    print(greet("Intern"))
```

Run:
```bash
python hello.py
```

Expected output: `Hello, Intern!`

---

## Next step

→ [Phase 1: Python Basics](./01-python-basics.md)
