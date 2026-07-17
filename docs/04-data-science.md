# Phase 4: Data Science with Python

**Goal:** Load, clean, analyze, and visualize data; run introductory machine learning workflows.

**Duration:** 3–4 weeks

**Prerequisites:** [Phase 1 — Python basics](./01-python-basics.md) (especially lists, dicts, file I/O)

---

## Topics & checklist

### Environment
- [ ] Install data stack: `pip install numpy pandas matplotlib seaborn jupyter scikit-learn`
- [ ] Launch Jupyter: `jupyter lab` or `jupyter notebook`
- [ ] Understand notebooks: cells, kernel, restart & run all

### NumPy (Week 1)
- [ ] Creating arrays (`np.array`, `np.zeros`, `np.arange`)
- [ ] Shape, dtype, reshaping
- [ ] Vectorized operations (avoid Python loops on large data)
- [ ] Indexing, slicing, boolean masks
- [ ] Basic stats: `mean`, `std`, `sum`, `min`, `max`

### pandas (Week 2)
- [ ] `Series` vs `DataFrame`
- [ ] Read CSV/JSON: `pd.read_csv()`
- [ ] Inspect: `.head()`, `.info()`, `.describe()`
- [ ] Select columns, filter rows, `.loc` / `.iloc`
- [ ] Handle missing values: `.isna()`, `.fillna()`, `.dropna()`
- [ ] `groupby()` and aggregations
- [ ] Merge/join DataFrames (intro)
- [ ] Export: `.to_csv()`

### Visualization (Week 2–3)
- [ ] Line, bar, histogram, scatter plots
- [ ] Labels, titles, legends
- [ ] Seaborn for statistical plots (`pairplot`, `heatmap`)
- [ ] Save figures: `plt.savefig()`

### Data cleaning workflow
- [ ] Parse dates with `pd.to_datetime()`
- [ ] Remove duplicates
- [ ] Fix data types
- [ ] Outlier awareness (don't delete blindly — document why)

### scikit-learn intro (Week 3–4)
- [ ] Features (X) vs target (y)
- [ ] Train/test split: `train_test_split`
- [ ] Fit a simple model (e.g. `LinearRegression`, `LogisticRegression`)
- [ ] Evaluate: accuracy, MSE, or R²
- [ ] Concept of overfitting (high level)

---

## Starter notebook workflow

```python
import pandas as pd
import matplotlib.pyplot as plt

df = pd.read_csv("data/sales.csv")
print(df.shape)
print(df.dtypes)
print(df.isna().sum())

monthly = df.groupby("month")["revenue"].sum()
monthly.plot(kind="bar", title="Monthly Revenue")
plt.ylabel("Revenue")
plt.tight_layout()
plt.savefig("output/monthly_revenue.png")
```

---

## Practice exercises

1. **Iris exploration** — Load sklearn's iris dataset; plot sepal length vs width by species.
2. **Missing data** — Given a messy CSV, document and fix missing values.
3. **Group & aggregate** — Top 10 products by total sales from an orders dataset.
4. **Time series** — Parse dates and plot daily counts.
5. **Simple classifier** — Train logistic regression on iris; report accuracy on test set.

---

## Mini-project ideas

| Project | Dataset ideas |
|---------|---------------|
| Sales dashboard notebook | [Kaggle retail datasets](https://www.kaggle.com/datasets) |
| Movie rating analysis | TMDB or MovieLens sample |
| COVID/regional trends | Public government CSVs |
| Housing price EDA | Boston or California housing data |

### Minimum deliverables
- [ ] Jupyter notebook with clear markdown sections
- [ ] Data loading + cleaning documented
- [ ] At least 3 meaningful visualizations
- [ ] Written conclusions (what did you learn from the data?)
- [ ] Exported notebook or README explaining how to run it

---

## Recommended notebook structure

```markdown
# Project Title
## 1. Problem & questions
## 2. Data source & loading
## 3. Data quality check
## 4. Exploratory analysis
## 5. Visualizations
## 6. Modeling (optional)
## 7. Conclusions & next steps
```

---

## Useful packages

```txt
numpy>=1.26
pandas>=2.2
matplotlib>=3.8
seaborn>=0.13
jupyterlab>=4.0
scikit-learn>=1.4
```

---

## Data ethics & good habits

- Cite your data source and license
- Don't cherry-pick charts to mislead
- Document every transformation step
- Use random seeds (`random_state=42`) for reproducible ML splits
- Keep raw data separate from processed data (`data/raw/`, `data/processed/`)

---

## Self-assessment

Ready for capstone projects when you can:
- [ ] Load a CSV and describe its structure
- [ ] Clean missing or wrong-type columns
- [ ] Create a chart that answers a specific question
- [ ] Train and evaluate a basic sklearn model
- [ ] Walk someone through your notebook start to finish

---

## Next step

→ [Capstone Projects](./projects.md)
