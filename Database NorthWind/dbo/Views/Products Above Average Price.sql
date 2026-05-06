
-- Vista 5: Products Above Average Price
CREATE VIEW [dbo].[Products Above Average Price] AS
SELECT ProductName, UnitPrice
FROM Products
WHERE UnitPrice > (SELECT AVG(UnitPrice) FROM Products)
