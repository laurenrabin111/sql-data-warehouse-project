/*
==============================================================================
Quality Check of Silver Tables
==============================================================================
Script Purpose:
    Performs various quality checks across the 'silver' layer. Including:
    - Null or duplicate primary keys.
    - Unwanted spaces in string fields.
    - Data standardization and consistency.
    - Invalid date ranges and orders.
    - Data consistency between related fields.

Usage: Run after executing silver.load_silver. Investigate any results returned.
===============================================================================
*/


/*
===========================================
silver.crm_prd_info
===========================================
*/
-- Check for duplicates and null values 
SELECT
*
FROM(
SELECT 
prd_id,
	COUNT(*) AS idcount
FROM silver.crm_prd_info
GROUP BY prd_id
)t
WHERE idcount > 1 or prd_id IS NULL

-- Check for unwanted spaces
-- Expectation no results
SELECT 
	prd_nm
FROM silver.crm_prd_info
WHERE prd_nm != TRIM(prd_nm)

-- Check for NULLS or Negative Numbers
-- Expectation no results

SELECT prd_cost
FROM silver.crm_prd_info
WHERE prd_cost < 0 OR prd_cost IS NULL

-- Data standardization & consistency 
SELECT DISTINCT prd_line
FROM silver.crm_prd_info

-- Check for Invalid Date Orders
SELECT *
FROM silver.crm_prd_info
WHERE prd_end_dt < prd_start_dt 

SELECT *
FROM silver.crm_prd_info

/*
===========================================
silver.crm_sales_details
===========================================
*/


-- Check for invalid dates
SELECT 
	sls_order_dt
FROM silver.crm_sales_details
WHERE sls_order_dt <= 0
OR LEN(sls_order_dt) != 8
OR sls_order_dt > 20500101
OR sls_order_dt < 19000101

SELECT 
	sls_ship_dt
FROM silver.crm_sales_details
WHERE sls_ship_dt <= 0
OR LEN(sls_ship_dt) != 8
OR sls_ship_dt > 20500101
OR sls_ship_dt < 19000101

-- Order date before ship/due date
SELECT 
	*
FROM silver.crm_sales_details
WHERE sls_order_dt > sls_ship_dt 
OR sls_order_dt > sls_due_dt

-- Check business rules
	-- Sales = quantity * price
	-- Not allowed: negative, zeros, nulls
SELECT DISTINCT
	sls_sales,
	sls_quantity,
	sls_price
FROM silver.crm_sales_details
WHERE sls_sales != sls_quantity * sls_price
OR sls_sales <= 0 OR sls_quantity <= 0 OR sls_price <= 0
OR sls_sales IS NULL OR sls_quantity IS NULL OR sls_price IS NULL
ORDER BY sls_sales, sls_quantity

SELECT * FROM silver.crm_sales_details

/*
==========================================
erp_cust_az12
========================================= 
*/

-- identify out of range dates
SELECT DISTINCT
bdate
FROM silver.erp_cust_az12
WHERE bdate < '1924-01-01' OR bdate > GETDATE()

-- data standardization & consistnecy
SELECT DISTINCT gen
	CASE
		WHEN gen = 'M' THEN 'Male'
		WHEN gen = 'F' THEN 'Female'
		WHEN gen = ' ' THEN NULL
		ELSE gen
		END AS gen
FROM silver.erp_cust_az12


/*
==========================================
erp_loc_a101
========================================= 
*/

-- Data standardization & consistnecy 
SELECT DISTINCT cntry
FROM silver.erp_loc_a101

SELECT *
FROM silver.erp_loc_a101

/*
==========================================
erp_px_cat_g1v2
========================================= 
*/

SELECT * FROM silver.erp_px_cat_g1v2