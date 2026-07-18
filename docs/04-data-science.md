# Module 6: Machine Learning Basics

**Goal:** Build a solid intern-ready foundation — from statistics and probability through EDA, visualization, and classical machine learning.

**Duration:** 4–6 weeks

**Prerequisites:** [Python Basics](./01-python-basics.md), [Advanced Python](./04-python-advanced.md), [SQL Basics](./05-sql-basics.md)

---

## Learning path (follow in order)

| Step | Topic | Board card |
|------|-------|------------|
| 1 | Statistics fundamentals | Statistics Fundamentals |
| 2 | Probability & hypothesis testing | Probability & Hypothesis Testing |
| 3 | NumPy & pandas | NumPy & pandas Fundamentals |
| 4 | Data cleaning & visualization | Data Visualization & Cleaning |
| 5 | EDA & feature engineering | EDA & Feature Engineering |
| 6 | Supervised learning | Supervised Learning Basics |
| 7 | Unsupervised + full workflow | Unsupervised Learning & Model Workflow |
| 8 | Capstone-style EDA/ML notebook | scikit-learn Intro & EDA Project |

---

## Statistics {#statistics}

### Checklist
- [ ] Mean, median, mode — when each is useful
- [ ] Range, variance, standard deviation
- [ ] Percentiles, quartiles, IQR
- [ ] Outliers (IQR rule / domain judgment)
- [ ] Distributions: normal, skewed (intuition)
- [ ] Covariance and Pearson correlation
- [ ] Sampling vs population; sampling bias

### Mini exercises
1. Given a list of salaries, compute mean, median, std.
2. Explain why median income is often reported instead of mean.
3. Find features that are highly correlated in a dataset.

---

## Probability & hypothesis testing {#probability--hypothesis-testing}

### Checklist
- [ ] Basic probability (events, independence)
- [ ] Conditional probability (intuition only)
- [ ] Null hypothesis vs alternative (high level)
- [ ] p-value meaning (not a proof of truth)
- [ ] A/B testing idea: control vs treatment
- [ ] Confidence interval (intuition)

### Mini exercises
1. Coin-flip simulations with NumPy.
2. Explain an A/B test for a “Buy” button color change.

---

## NumPy & pandas

### Checklist
- [ ] NumPy arrays, shape, dtype, vectorization
- [ ] Boolean masking and indexing
- [ ] `Series` / `DataFrame`
- [ ] `read_csv`, `head`, `info`, `describe`
- [ ] Filter, sort, `groupby`, aggregations
- [ ] Merge/join DataFrames
- [ ] Handle missing values: `isna`, `fillna`, `dropna`

```python
import pandas as pd
df = pd.read_csv("data.csv")
summary = df.groupby("category")["revenue"].agg(["count", "mean", "sum"])
```

---

## Visualization & cleaning

### Checklist
- [ ] Matplotlib: line, bar, hist, scatter
- [ ] Seaborn: boxplot, heatmap, pairplot
- [ ] Titles, labels, legends; save figures
- [ ] Parse dates, fix dtypes, drop duplicates
- [ ] Document every cleaning decision

---

## EDA & feature engineering {#eda--feature-engineering}

### Checklist
- [ ] Ask clear questions before coding
- [ ] Univariate analysis (distributions)
- [ ] Bivariate analysis (relationships)
- [ ] Encode categoricals (one-hot / label)
- [ ] Scale features (`StandardScaler`, `MinMaxScaler`)
- [ ] Train / validation / test split
- [ ] Avoid data leakage (fit scalers on train only)

### Recommended notebook structure
1. Problem statement  
2. Data loading & quality check  
3. EDA + charts  
4. Cleaning & features  
5. Modeling  
6. Evaluation & conclusions  

---

## Supervised learning {#supervised-learning}

### Checklist
- [ ] Regression vs classification
- [ ] Linear regression
- [ ] Logistic regression
- [ ] Tree-based models intro (Decision Tree / Random Forest)
- [ ] k-NN intuition
- [ ] Metrics:
  - Regression: MSE, RMSE, MAE, R²
  - Classification: accuracy, precision, recall, F1, confusion matrix
  - ROC-AUC (intro)

```python
from sklearn.model_selection import train_test_split
from sklearn.linear_model import LogisticRegression
from sklearn.metrics import classification_report

X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)
model = LogisticRegression(max_iter=1000)
model.fit(X_train, y_train)
print(classification_report(y_test, model.predict(X_test)))
```

---

## Unsupervised learning & workflow {#unsupervised--workflow}

### Checklist
- [ ] k-means clustering (intuition + when to use)
- [ ] PCA at a high level (dimensionality reduction)
- [ ] Cross-validation
- [ ] GridSearch / hyperparameter awareness
- [ ] Save/load models with `joblib`
- [ ] Reproducibility: `random_state`, seeds, documented steps

### Ethics & good habits
- Cite data sources
- Don’t cherry-pick charts
- Document assumptions and limitations
- Keep `data/raw/` separate from `data/processed/`

---

## Packages to install

```txt
numpy>=1.26
pandas>=2.2
matplotlib>=3.8
seaborn>=0.13
scipy>=1.11
jupyterlab>=4.0
scikit-learn>=1.4
```

---

## Capstone-style project (required)

Pick a public dataset and deliver:
- [ ] Cleaned notebook with markdown sections
- [ ] Stats summary + at least 4 visualizations
- [ ] One supervised model with evaluation metrics
- [ ] Written conclusions and next steps
- [ ] README with how to run

Dataset ideas: Titanic, Iris, California Housing, any Kaggle beginner set.

---

## Interview prep

See [Interview & coding guide — Machine Learning Basics](./interview-and-coding.md#machine-learning-basics).

---

## Self-assessment

You're ready for capstones when you can:
- [ ] Explain mean/median/std and pick the right summary
- [ ] Clean a messy CSV and justify choices
- [ ] Build charts that answer a question
- [ ] Train and evaluate a simple sklearn model
- [ ] Walk a mentor through your notebook end-to-end

---

## Next step

→ [Module 7: Deep Learning](./07-deep-learning.md)
