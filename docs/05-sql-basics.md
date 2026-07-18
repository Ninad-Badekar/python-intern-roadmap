# Module 3: SQL Basics

**Goal:** Query and manipulate relational data — the foundation for backends and data work.

**Duration:** 1–2 weeks

**Prerequisites:** [Module 2 — Advanced Python](./04-python-advanced.md)

> **Practice environment:** Use [SQLite](https://www.sqlite.org/) (built into Python via `sqlite3`), [DB Browser for SQLite](https://sqlitebrowser.org/), or an online playground like [SQLite Online](https://sqliteonline.com/).

---

## Topics & checklist

### Querying data
- [ ] What a relational database, table, row, and column are
- [ ] `SELECT` columns and `SELECT *`
- [ ] Column and table aliases (`AS`)
- [ ] Filtering with `WHERE`, `AND`, `OR`, `NOT`
- [ ] `IN`, `BETWEEN`, `LIKE`, `IS NULL`
- [ ] Sorting with `ORDER BY` (ASC / DESC)
- [ ] `LIMIT` and `OFFSET`

### Aggregations
- [ ] `COUNT`, `SUM`, `AVG`, `MIN`, `MAX`
- [ ] `GROUP BY`
- [ ] `HAVING` (filtering groups)
- [ ] `DISTINCT`

### Relationships & joins
- [ ] Primary keys and foreign keys
- [ ] `INNER JOIN`
- [ ] `LEFT JOIN` (and when you need it)
- [ ] Joining three or more tables
- [ ] Understanding one-to-many relationships

### Beyond basics
- [ ] Subqueries in `WHERE` and `FROM`
- [ ] Common Table Expressions (`WITH ... AS`)
- [ ] Creating and querying `VIEW`s
- [ ] Modifying data: `INSERT`, `UPDATE`, `DELETE`
- [ ] Creating tables: `CREATE TABLE` with data types

---

## Key examples

### Filtering and sorting
```sql
SELECT name, price
FROM products
WHERE price > 100 AND category = 'books'
ORDER BY price DESC
LIMIT 10;
```

### Aggregation
```sql
SELECT category, COUNT(*) AS total, AVG(price) AS avg_price
FROM products
GROUP BY category
HAVING COUNT(*) > 5;
```

### Join
```sql
SELECT o.id, c.name, o.total
FROM orders AS o
INNER JOIN customers AS c ON c.id = o.customer_id
WHERE o.total > 500;
```

### CTE
```sql
WITH big_orders AS (
    SELECT customer_id, SUM(total) AS spent
    FROM orders
    GROUP BY customer_id
    HAVING SUM(total) > 1000
)
SELECT c.name, b.spent
FROM big_orders AS b
JOIN customers AS c ON c.id = b.customer_id;
```

---

## Using SQL from Python

```python
import sqlite3

conn = sqlite3.connect("shop.db")
cur = conn.cursor()
cur.execute("SELECT name, price FROM products WHERE price > ?", (100,))
for name, price in cur.fetchall():
    print(name, price)
conn.close()
```

> Always use **parameterized queries** (`?` placeholders) — never build SQL with string concatenation (SQL injection risk).

---

## Practice exercises

1. **Top customers** — Find the 5 customers with the highest total spend.
2. **Category report** — Count products and average price per category.
3. **Missing joins** — List customers who have never placed an order (`LEFT JOIN` + `IS NULL`).
4. **Monthly sales** — Total sales grouped by month.

---

## Mini-project

Query a **sample SQLite database** (e.g. [Chinook](https://github.com/lerocha/chinook-database) or a dataset you create):
- [ ] Create/load at least 2 related tables
- [ ] Write 5+ queries covering filtering, aggregation, and a join
- [ ] Include at least one subquery or CTE
- [ ] Save your queries in a `.sql` file with comments

---

## Self-assessment

Ready for Module 4 (Cloud Basics) when you can:
- [ ] Write a query with `WHERE`, `GROUP BY`, and `ORDER BY`
- [ ] Join two tables on a foreign key
- [ ] Explain the difference between `INNER` and `LEFT JOIN`
- [ ] Query a database from Python safely

---

## Next step

→ [Module 4: Cloud Basics](./10-cloud-basics.md)
