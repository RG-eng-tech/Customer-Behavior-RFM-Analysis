set global local_infile=1;
USE rfm_project;

LOAD DATA LOCAL INFILE 'C:/Users/rohit/OneDrive/Desktop/P1/online_retail_II.csv'
INTO TABLE online_retail
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
SELECT
    COUNT(*) AS total_rows,
    COUNT(UnitPrice) AS non_null_unitprice
FROM online_retail;
SELECT
    MIN(UnitPrice),
    MAX(UnitPrice)
FROM online_retail;
ALTER TABLE online_retail
MODIFY UnitPrice DECIMAL(10,2);