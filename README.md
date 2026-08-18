# Financial Performance Snapshot
*End-to-End Financial Data Quality, KPI & Profitability Analysis*

## Overview
This project analyzes transaction-level financial data to assess revenue, cost, profitability, and margin performance over time. The analysis follows an end-to-end workflow from raw-data validation and cleaning to KPI calculation, SQL reconciliation, trend analysis, and executive-level interpretation.

---

## Business Objective
Answer the following key questions:

- How is the business performing in terms of revenue, cost, and profitability?
- Are margins stable and sustainable over time?
- How do daily and monthly trends compare?
- Is the data reliable enough to support executive decision-making?

---

## Dataset
- Transaction-level financial data
- One row per transaction
- Key fields: transaction date, revenue, cost
- Three-month time horizon
- Synthetic dataset designed to simulate real operational behavior

**Limitations**: The dataset is synthetic and covers a three-month period. Results should therefore be interpreted as an analytical demonstration rather than a representation of actual business performance.

---

## Project Structure
```
financial-performance-snapshot/
├── data/
│   ├── raw/
│   └── clean/
│
├── notebooks/
│   ├── 01_data_exploration.ipynb
│   ├── 02_data_cleaning.ipynb
│   └── 03_kpi_analysis.ipynb
│
├── sql/
│   ├── 00_validation_checks.sql
│   ├── 01_core_kpis.sql
│   ├── 02_time_based_kpis.sql
│
├── reports/
│   └── executive_summary.md
│
└── README.md
```
---

## Analytical Workflow

### 1️⃣ Data Exploration
- Load and inspect raw transactional data
- Validate schema and data types
- Analyze time coverage and granularity
- Identify missing, inconsistent, or suspicious records
- Document data quality risks and assumptions

Notebook: `01_data_exploration.ipynb`

---

### 2️⃣ Data Cleaning
- Enforce correct data types
- Remove invalid or incomplete transactions
- Apply explicit business rules
- Produce a clean, analysis-ready dataset

Notebook: `02_data_cleaning.ipynb`

Output:
- `data/clean/financial_transactions_clean.csv`

---

### 3️⃣ KPI Definition & Analysis
- Define core financial KPIs:
  - Total Revenue
  - Total Cost
  - Gross Profit
  - Gross Margin
  - Average Order Value
  - Cost-to-Revenue Ratio
- Compute daily and monthly KPIs
- Analyze volatility and trends
- Create visualizations to support insights

Notebook: `03_kpi_analysis.ipynb`

---

### 4️⃣ SQL KPI Replication (PostgreSQL)
- Load the cleaned dataset into PostgreSQL
- Recompute all KPIs using SQL
- Validate consistency between Python and SQL results
- Structure queries using production-style separation:
  - Validation
  - Core KPIs
  - Time-based KPIs

SQL files located in the `sql/` directory.

---

## Tools & Technologies
- **Python** (pandas, numpy, matplotlib)
- **Jupyter Notebooks**
- **PostgreSQL**
- **SQL**
- **Git / GitHub**

---

## Author

Franco Martini

