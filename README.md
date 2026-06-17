# Data Warehouse and Analytics Project

A complete end-to-end data warehousing solution built on SQL Server, covering everything from raw data ingestion to business-ready analytics. This project was built as a portfolio piece to demonstrate practical skills in data engineering and analytics.

---

## Architecture Overview

This project follows the Medallion Architecture pattern with three distinct layers:

1. **Bronze Layer** — Raw data landed directly from source CSV files into SQL Server, with no transformations applied.
2. **Silver Layer** — Cleaned, standardized, and normalized data, ready for downstream use.
3. **Gold Layer** — Business-ready tables structured as a star schema, optimized for reporting and analytical queries.

---

## What This Project Covers

- **Data Warehouse Design** — Implementing Medallion Architecture (Bronze → Silver → Gold)
- **ETL Pipelines** — Moving and transforming data from source systems into the warehouse
- **Data Modeling** — Building fact and dimension tables suited for analytical workloads
- **SQL Analytics** — Writing queries and reports that surface actionable business insights

This is a great reference for anyone building skills in SQL development, data architecture, data engineering, ETL pipeline design, and data modeling.

---

## Tools Used

All tools below are free:

- **[Datasets](datasets/)** — Source CSV files (ERP and CRM data)
- **[SQL Server Express](https://www.microsoft.com/en-us/sql-server/sql-server-downloads)** — Local SQL Server instance
- **[SSMS](https://learn.microsoft.com/en-us/sql/ssms/download-sql-server-management-studio-ssms?view=sql-server-ver16)** — GUI for database management
- **[GitHub](https://github.com/)** — Version control and collaboration
- **[DrawIO](https://www.drawio.com/)** — Diagrams and architecture visuals
- **[Notion](https://www.notion.com/)** — Project planning and task tracking

---

## Project Scope

### Data Engineering

**Goal:** Build a consolidated data warehouse from two source systems (ERP and CRM) that supports analytical reporting.

Key decisions and constraints:
- Source data arrives as CSV files
- Data quality issues are resolved during the Silver layer transformation
- Both source systems are unified into a single star schema model
- Only the current snapshot of data is loaded — no historical tracking
- The final data model is documented for both technical and business audiences

---

### Analytics & Reporting

**Goal:** Deliver SQL-based insights across three key areas:

- **Customer Behavior** — Who is buying, how often, and what patterns emerge
- **Product Performance** — Which products drive revenue and which underperform
- **Sales Trends** — How performance changes over time

See [`docs/requirements.md`](docs/requirements.md) for the full analytics brief.

---

## Repository Structure

```
data-warehouse-project/
│
├── datasets/              # Source CSV files (ERP and CRM)
├── docs/                  # Architecture diagrams, data catalog, naming conventions
│   ├── data_architecture.drawio
│   ├── data_flow.drawio
│   ├── data_models.drawio
│   ├── etl.drawio
│   ├── data_catalog.md
│   └── naming-conventions.md
│
├── scripts/
│   ├── bronze/            # Raw data load scripts
│   ├── silver/            # Cleaning and transformation scripts
│   └── gold/              # Analytical model scripts
│
├── tests/                 # Data quality checks
├── README.md
├── LICENSE
├── .gitignore
└── requirements.txt
```

---

## License

Licensed under the [MIT License](LICENSE).
