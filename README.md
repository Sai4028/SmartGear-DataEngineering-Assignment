# SmartGear Retail — Advanced Data Engineering Assignment

## 📌 Objective
Design and implement an end-to-end Azure-based data platform for SmartGear Retail to support analytics and reporting.

---

## 🏗️ Architecture

ADLS Gen2 → Databricks → Silver/Gold → Synapse → ADF

---

## 📂 Dataset
- File: smartgear_sales.csv
- Records: 1000
- Columns: OrderID, OrderDate, Region, StoreID, Product, Quantity, UnitPrice

---

## ⚙️ Implementation

### Part A — Storage
- Created ADLS Gen2 with hierarchical namespace
- Defined containers: raw, bronze, silver, gold
- Uploaded dataset to raw layer

---

### Part B — Bronze & Silver
- Ingested CSV using explicit schema
- Performed data validation (nulls, invalid values)
- Added metadata (year, month)
- Created Revenue column
- Standardized Region values
- Partitioned data by year/month

---

### Part C — Gold Layer
- Region KPI dataset
- Top 5 products by revenue
- Store-level performance dataset

---

### Part D — Synapse
- Queried Gold datasets using Serverless SQL
- Used OPENROWSET on Parquet files
- Validated revenue trends

---

### Part E — Data Factory
- Created pipeline for raw → bronze ingestion
- Configured Copy Data activity
- Implemented daily trigger
- Verified successful execution

---

### Part F — Data Quality
- Identified invalid and inconsistent data
- Applied cleaning logic in Silver layer
- Documented assumptions and validation

---

## 🚀 Key Highlights
- Explicit schema (no inferSchema)
- Partitioned data architecture
- End-to-end pipeline design
- Separation of storage, processing, and orchestration

---

## 🔮 Future Improvements
- Integrate ADF with Databricks for full automation
- Implement Delta Lake
- Add monitoring & alerting
