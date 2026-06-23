# Sales Data Warehouse & Analytics

An end-to-end data warehousing project built on SQL Server, integrating data from multiple source systems into a structured analytical model. The pipeline handles everything from raw ingestion through to business-ready reporting layers.

---

## Architecture

The warehouse is designed around the Medallion Architecture, organized into three layers:

1. **Bronze** — Raw data ingested from CSV source files and loaded into SQL Server without modification.
2. **Silver** — Cleansed, standardized, and normalized data prepared for analytical use.
3. **Gold** — A star schema model containing fact and dimension tables optimized for reporting queries.

---

## Project Highlights

- Designed and implemented a multi-layer data warehouse from scratch
- Built ETL pipelines to extract, transform, and load data from ERP and CRM source systems
- Modeled fact and dimension tables to support efficient analytical queries
- Wrote SQL-based reports surfacing insights across customer behavior, product performance, and sales trends

---

## Tech Stack

- **SQL Server Express** — Database engine
- **SSMS** — Query development and database management
- **DrawIO** — Architecture and data flow diagrams
- **Git / GitHub** — Version control

---

## Data Sources

Two source systems are integrated into the warehouse:

- **ERP system** — Operational sales and product data
- **CRM system** — Customer records and interaction data

Both sources are unified into a single model designed for analytical queries against the current dataset.

---

## Analytics

The Gold layer supports reporting across three areas:

- **Customer Behavior** — Purchase patterns, frequency, and segmentation
- **Product Performance** — Revenue contribution and trend analysis by product
- **Sales Trends** — Period-over-period performance and growth metrics

See [`docs/requirements.md`](docs/requirements.md) for the full scope.

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
│   ├── bronze/            # Raw ingestion scripts
│   ├── silver/            # Transformation and cleansing scripts
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

---

## About Me

Hi, I'm Lauren Rabin. I graduated from UC Santa Barbara in 2024 with a degree in Statistics and Data Science. Since then I've been working in healthcare where data is a big part of my day to day, and honestly it's the part I enjoy most. This project is my way of continuing to build on that and grow into a more technical data role.

Connect with me on [LinkedIn](https://www.linkedin.com/in/laurenrabin).
