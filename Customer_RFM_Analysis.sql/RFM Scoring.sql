ALTER TABLE rfm_base
ADD recency_days INT;
UPDATE rfm_base
SET recency_days= DATEDIFF('2011-12-10', last_purchase_date);
ALTER TABLE rfm_base
ADD r_score INT,
ADD f_score INT,
ADD m_score INT;
UPDATE rfm_base
SET r_score =
CASE
    WHEN recency_days <= 30 THEN 5
    WHEN recency_days <= 60 THEN 4
    WHEN recency_days <= 90 THEN 3
    WHEN recency_days <= 180 THEN 2
    ELSE 1
END;
UPDATE rfm_base
SET f_score =
CASE
    WHEN frequency >= 50 THEN 5
    WHEN frequency >= 20 THEN 4
    WHEN frequency >= 10 THEN 3
    WHEN frequency >= 5 THEN 2
    ELSE 1
END;
UPDATE rfm_base
SET m_score =
CASE
    WHEN monetary_value >= 10000 THEN 5
    WHEN monetary_value >= 5000 THEN 4
    WHEN monetary_value >= 2000 THEN 3
    WHEN monetary_value >= 500 THEN 2
    ELSE 1
END;