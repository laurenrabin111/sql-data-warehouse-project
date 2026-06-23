# Data Catalog: Gold Layer

## Overview
The Gold Layer represents business-ready data structured for reporting and analytical use cases. It contains dimension tables and fact tables organized around key business metrics.

---

### 1. gold.dim_customers
Purpose: Stores customer records enriched with demographic and geographic attributes.

| Column Name | Data Type | Description |
|---|---|---|
| customer_key | INT | Surrogate key that uniquely identifies each customer in the dimension table. |
| customer_id | INT | Unique umerical identifier assigned to each customer. |
| customer_number | NVARCHAR(50) | Alphanumeric code used to track and reference a customer across systems. |
| first_name | NVARCHAR(50) | Customer's first name as stored in the source system. |
| last_name | NVARCHAR(50) | Customer's last name or family name. |
| country | NVARCHAR(50) | Country where the customer resides (e.g., 'United States'). |
| marital_status | NVARCHAR(50) | Customer's marital status (e.g., 'Married', 'Single'). |
| gender | NVARCHAR(50) | Customer's gender (e.g., 'Male', 'Female', 'N/A'). |
| birthdate | DATE | Customer's date of birth, formatted as YYYY-MM-DD (e.g., 1971-10-06). |
| create_date | DATE | Date the customer record was first created in the system. |

---

### 2. gold.dim_products
Purpose: Stores product details and their associated attributes.

| Column Name | Data Type | Description |
|---|---|---|
| product_key | INT | Surrogate key that uniquely identifies each product in the dimension table. |
| product_id | INT | Internal identifier used to track and reference a product. |
| product_number | NVARCHAR(50) | Alphanumeric code representing the product, typically used for inventory and categorization. |
| product_name | NVARCHAR(50) | Full descriptive name of the product, including details such as type, color, and size. |
| category_id | NVARCHAR(50) | Identifier linking the product to its high-level category. |
| category | NVARCHAR(50) | High-level classification grouping related products together (e.g., Bikes, Components). |
| subcategory | NVARCHAR(50) | More granular classification of the product within its category. |
| maintenance_required | NVARCHAR(50) | Indicates whether the product requires maintenance (e.g., 'Yes', 'No'). |
| cost | INT | Base price of the product in whole monetary units. |
| product_line | NVARCHAR(50) | The product line or series the product belongs to (e.g., Road, Mountain). |
| start_date | DATE | Date the product was made available for sale or use. |

---

### 3. gold.fact_sales
Purpose: Stores transactional sales data used for reporting and analysis.

| Column Name | Data Type | Description |
|---|---|---|
| order_number | NVARCHAR(50) | Unique alphanumeric identifier for each sales order (e.g., 'SO54496'). |
| product_key | INT | Surrogate key linking the sales record to the product dimension. |
| customer_key | INT | Surrogate key linking the sales record to the customer dimension. |
| order_date | DATE | Date the order was placed by the customer. |
| shipping_date | DATE | Date the order was shipped to the customer. |
| due_date | DATE | Date the order payment was due. |
| sales_amount | INT | Total value of the sale for the line item in whole currency units (e.g., 25). |
| quantity | INT | Number of product units included in the line item (e.g., 1). |
| price | INT | Per unit price of the product for the line item in whole currency units (e.g., 25). |
