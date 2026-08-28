# E-Commerce Data Warehouse & Analytics Engineering (dbt + DuckDB)

An enterprise analytics engineering pipeline built with `dbt` and `DuckDB` using a modular STAR Schema design across real e-commerce transactional data.

## 🛠 Features
- **Dimensional Data Modeling:** Transforms raw staging tables into standardized Fact (`fact_orders`) and Dimension tables.
- **In-Memory Data Warehousing:** Utilizes DuckDB for high-throughput local SQL transformations.
- **Automated Data Quality Testing:** Implements dbt assertions for primary key uniqueness, foreign key integrity, and non-null constraints.
- **Lineage Documentation:** Modular SQL scripts maintaining clean data provenance from raw ingestion to analytical marts.
