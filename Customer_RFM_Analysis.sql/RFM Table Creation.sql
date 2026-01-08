CREATE TABLE rfm_base AS
SELECT 
CustomerID,
MAX(InvoiceDate_dt) AS last_purchase_date,
COUNT(DISTINCT InvoiceNO) AS frequency,
SUM(Quantity*UnitPrice) AS monetary_value
FROM online_retail
GROUP BY CustomerID
Alter Table online_retail
ADD Invoicedate_dt Datetime;
UPDATE online_retail
SET InvoiceDate_dt =
STR_TO_DATE(InvoiceDate, '%d-%m-%Y %H:%i');
SELECT InvoiceDate, InvoiceDate_dt
FROM online_retail
LIMIT 5;
   DROP TABLE IF EXISTS rfm_base;
   CREATE TABLE rfm_base AS
SELECT
    CustomerID,
    MAX(InvoiceDate_dt) AS last_purchase_date,
    COUNT(DISTINCT InvoiceNo) AS frequency,
    SUM(Quantity * UnitPrice) AS monetary_value
FROM online_retail
GROUP BY CustomerID;
SELECT COUNT(*) FROM rfm_base;