-- Query 2: Time-based KPIs
-- Purpose: Analyze financial performance over time.

SET search_path TO snapshot;

-- Daily KPIs
SELECT
    order_date,
    ROUND(SUM(revenue), 2) AS daily_revenue,
    ROUND(SUM(cost), 2) AS daily_cost,
    COUNT(*) AS transactions,
    ROUND(SUM(revenue - cost), 2) AS daily_profit,
    ROUND(SUM(revenue - cost) / SUM(revenue) * 100, 2) AS daily_margin_pct
FROM financial_transactions
GROUP BY order_date
ORDER BY order_date;

-- Monthly KPIs
SELECT
    DATE_TRUNC('month', order_date)::DATE AS order_month,
    ROUND(SUM(revenue), 2) AS monthly_revenue,
    ROUND(SUM(cost), 2) AS monthly_cost,
    COUNT(*) AS transactions,
    ROUND(SUM(revenue - cost), 2) AS monthly_profit,
    ROUND(SUM(revenue - cost) / SUM(revenue) * 100, 2) AS monthly_margin_pct
FROM financial_transactions
GROUP BY 1
ORDER BY order_month;
