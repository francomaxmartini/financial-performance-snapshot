# Financial Performance Snapshot

## Overview
This project presents an **end-to-end financial performance analysis** built on transactional data.  
The objective is to create a **reliable financial snapshot** by validating data quality, defining core financial KPIs, and analyzing performance trends over time.

The project demonstrates how financial analytics can be structured from **raw data ingestion** through **cleaning, KPI computation, SQL validation, and executive-ready reporting**.

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

The dataset is intentionally imperfect at the raw stage to reflect real-world data challenges.

---

## Project Structure
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

## Key Insights
- The business operates with **healthy profitability** and a controlled cost structure.
- Daily performance shows natural volatility, while monthly aggregation smooths fluctuations.
- Margins remain relatively stable, with a mild decline observed in the final month under analysis.
- No critical data quality issues were identified that would invalidate KPI interpretation.

Detailed conclusions are documented in `reports/executive_summary.md`.

---

## Tools & Technologies
- **Python** (pandas, numpy, matplotlib)
- **Jupyter Notebooks**
- **PostgreSQL**
- **SQL**
- **Git / GitHub**

---

## Why This Project Matters
This project demonstrates the ability to:
- Structure financial analytics from raw data to executive insights
- Apply rigorous data validation before KPI computation
- Translate Python-based analysis into SQL for production environments
- Communicate results clearly to non-technical stakeholders

It reflects real-world analytics and finance consulting workflows.

---

## Next Steps
Potential extensions of this project include:
- Product or customer-level profitability analysis
- Forecasting and budget variance analysis
- Dashboard development (Power BI / Tableau)
- Automation of the data pipeline

---

## Author

Franco Martini
