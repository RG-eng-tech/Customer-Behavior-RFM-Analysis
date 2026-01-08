ALTER TABLE rfm_base ADD rfm_score VARCHAR(10);
UPDATE rfm_base SET rfm_score= CONCAT(r_score,f_score,m_score);
SELECT CustomerID, rfm_score FROM rfm_base LIMIT 10;
ALTER TABLE rfm_base ADD segment VARCHAR(50);
UPDATE rfm_base
SET segment =
CASE
    WHEN r_score >= 4 AND f_score >= 4 AND m_score >= 4 THEN 'Champions'
    WHEN r_score >= 3 AND f_score >= 3 THEN 'Loyal Customers'
    WHEN r_score >= 4 AND f_score <= 2 THEN 'Potential Loyalist'
    WHEN r_score <= 2 AND f_score >= 4 THEN 'At Risk'
    WHEN r_score = 1 AND f_score = 1 THEN 'Lost'
    ELSE 'Others'
END;
SELECT segment, COUNT(*) AS customers
FROM rfm_base
GROUP BY segment 
ORDER BY customers DESC;