--No.1
CREATE TABLE ProductDetail (
    OrderID INT,
    CustomerName VARCHAR(100),
    Products VARCHAR(255)
);
SELECT 
    OrderID,
    CustomerName,
    LTRIM(RTRIM(value)) AS Product
FROM ProductDetail
CROSS APPLY STRING_SPLIT(Products, ',');
--No.2
-- Orders table with unique OrderID and CustomerName
SELECT DISTINCT 
    OrderID, 
    CustomerName
INTO Orders
FROM OrderDetails;
-- OrderProducts table with OrderID, Product, and Quantity
SELECT 
    OrderID,
    Product,
    Quantity
INTO OrderProducts
FROM OrderDetails;
