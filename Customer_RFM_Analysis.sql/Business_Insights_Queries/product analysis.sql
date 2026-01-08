-- Top 10 Countries by Total Revenue --
SELECT
    o.Country,
    SUM(o.Quantity * o.UnitPrice) AS revenue
FROM online_retail o
GROUP BY o.Country
ORDER BY revenue DESC
LIMIT 10;


-- Most Purchased Products by Champion Customers --
SELECT
    o.Description,
    SUM(o.Quantity) AS total_quantity
FROM online_retail o
JOIN rfm_base r
    ON o.CustomerID = r.CustomerID
WHERE r.segment = 'Champions'
GROUP BY o.Description
ORDER BY total_quantity DESC
LIMIT 10;