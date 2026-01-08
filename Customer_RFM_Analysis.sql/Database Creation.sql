CREATE DATABASE rfm_project;
USE rfm_project;
SELECT DATABASE();
CREATE TABLE online_retail (
    InvoiceNo     VARCHAR(20),
    StockCode     VARCHAR(20),
    Description   TEXT,
    Quantity      INT,
    InvoiceDate   VARCHAR(30),
    UnitPrice     DECIMAL(10,2),
    CustomerID    VARCHAR(20),
    Country       VARCHAR(50)
);
DESC online_retail;