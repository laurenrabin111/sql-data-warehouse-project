# Naming Conventions

## General Principles

- snake_case throughout — lowercase with underscores
- English only
- Avoid SQL reserved words

---

## Tables

**Bronze and Silver:** `<sourcesystem>_<entity>`
Example: `crm_customer_info`

**Gold:** `<category>_<entity>`
Examples: `dim_customers`, `fact_sales`

| Prefix | Description | Example |
|--------|-------------|---------|
| `dim_` | Dimension table | `dim_customer` |
| `fact_` | Fact table | `fact_sales` |
| `report_` | Reporting table | `report_sales_monthly` |

---

## Columns

**Surrogate keys:** `<table_name>_key`
Example: `customer_key`

**System columns:** `dwh_<column_name>`
Example: `dwh_load_date`

---

## Stored Procedures

Pattern: `load_<layer>`
Examples: `load_bronze`, `load_silver`, `load_gold`
