DELETE FROM online_retail
WHERE InvoiceNo LIKE 'C%';
DELETE FROM online_retail
WHERE CustomerID IS NULL
   OR CustomerID = '';
   DELETE FROM online_retail
WHERE Quantity <= 0
   OR UnitPrice <= 0;
   SET SQL_SAFE_UPDATES=1;
   SELECT COUNT(*)FROM online_retail
   