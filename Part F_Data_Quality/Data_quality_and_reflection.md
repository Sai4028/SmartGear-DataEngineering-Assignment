# Part F — Data Quality & Engineering Reflection

## Data Quality Issues Identified
Data profiling on the Bronze dataset revealed several issues including null values across multiple columns, invalid records where Quantity ≤ 0 and UnitPrice ≤ 0, and inconsistent Region values such as different casing (north, NORTH, North). These inconsistencies can impact aggregation accuracy and reporting reliability.

## Data Cleaning Approach
Data cleaning was performed in the Silver layer by filtering out invalid records (Quantity ≤ 0 and UnitPrice ≤ 0), standardizing Region values using proper casing, and deriving a new column Revenue (Quantity * UnitPrice). Explicit schema enforcement ensured consistent data types during ingestion.

## Data Quality Validation
Validation was carried out using aggregation-based checks to identify null values and invalid records. Post-cleaning, the dataset was verified to ensure only valid records remained and transformations were applied correctly.

## Data Quality Summary Output
A summary table was generated in Databricks showing null counts and invalid record counts across all columns. This provided a clear view of data quality issues before transformation.

## Reflection (Tooling & Cost Awareness)
Azure Data Lake was used for scalable storage, while Databricks enabled efficient data transformation and processing. Synapse Serverless allowed querying of data directly from storage without data duplication, reducing cost. Azure Data Factory provided orchestration for automating ingestion workflows. The architecture separates storage, processing, and orchestration, which aligns with production best practices. Cost efficiency is achieved by using serverless query models and avoiding unnecessary data movement. Future improvements include integrating Databricks execution within ADF for full pipeline automation and using Delta Lake for better reliability and performance.
