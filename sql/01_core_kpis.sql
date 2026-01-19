-- Query 1: Core KPIs
-- Purpose: Compute overall financial KPIs for executive-level reporting.

SET search_path TO snapshot;

SELECT
    ROUND(SUM(revenue), 2) AS total_revenue,
    ROUND(SUM(cost), 2) AS total_cost,
    ROUND(SUM(revenue - cost), 2) AS gross_profit,
    ROUND(SUM(revenue - cost) / SUM(revenue) * 100, 2) AS gross_margin_pct,
    ROUND(AVG(revenue), 2) AS average_order_value,
    ROUND(SUM(cost) / SUM(revenue), 2) AS cost_to_revenue_ratio
FROM financial_transactions;