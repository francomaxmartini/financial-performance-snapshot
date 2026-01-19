-- Query 0: Validation Checks
-- Purpose: Validate data integrity before computing KPIs.

SET search_path TO snapshot;

-- Row count and date coverage
SELECT
    COUNT(*) AS row_count,
    MIN(order_date) AS min_date,
    MAX(order_date) AS max_date
FROM financial_transactions;

-- Check for missing or invalid revenue
SELECT 
	COUNT(*) AS missing_or_invalid_revenue
FROM financial_transactions
WHERE revenue IS NULL OR revenue <= 0;

-- Check for missing or invalid cost
SELECT
	COUNT(*) AS missing_or_invalid_cost
FROM financial_transactions
WHERE cost IS NULL OR cost <= 0;


-- Basic range check for extreme values
SELECT
    MIN(revenue) AS min_revenue,
    MAX(revenue) AS max_revenue,
    MIN(cost)    AS min_cost,
    MAX(cost)    AS max_cost
FROM financial_transactions;