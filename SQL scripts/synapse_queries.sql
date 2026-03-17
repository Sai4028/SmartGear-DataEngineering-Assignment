-- Query Gold layer dataset using Synapse Serverless SQL
-- Reads Parquet files from ADLS without loading data into a database

SELECT *
FROM OPENROWSET(
    BULK 'https://smartgearstorage428.dfs.core.windows.net/gold/region_kpi/',
    FORMAT = 'PARQUET'
) AS region_kpi;

SELECT *
FROM OPENROWSET(
    BULK 'https://smartgearstorage428.dfs.core.windows.net/gold/top_products/',
    FORMAT = 'PARQUET'
) AS top_products;

SELECT *
FROM OPENROWSET(
    BULK 'https://smartgearstorage428.dfs.core.windows.net/gold/store_performance/',
    FORMAT = 'PARQUET'
) AS store_performance;