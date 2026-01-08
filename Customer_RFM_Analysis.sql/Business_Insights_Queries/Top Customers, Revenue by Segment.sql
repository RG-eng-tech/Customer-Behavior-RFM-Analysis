-- TOP 10 revenue customers --
SELECT
    CustomerID,
    monetary_value
FROM rfm_base
ORDER BY monetary_value DESC
LIMIT 10;


-- Revenue Contribution by Customer Segment --
SELECT
    segment,
    SUM(monetary_value) AS total_revenue
FROM rfm_base
GROUP BY segment
ORDER BY total_revenue DESC;


-- High-Value Customers adt Risk of Churn--
SELECT
    CustomerID,
    recency_days,
    frequency,
    monetary_value
FROM rfm_base
WHERE segment = 'At Risk'
ORDER BY monetary_value DESC
LIMIT 10;



-- Average Order Value (AOV) by Customer Segment--
SELECT
    segment,
    SUM(monetary_value) / SUM(frequency) AS avg_order_value
FROM rfm_base
GROUP BY segment;