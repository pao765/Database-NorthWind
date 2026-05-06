
-- Vista 3: Current Product List
CREATE VIEW [dbo].[Current Product List] AS
SELECT ProductID, ProductName
FROM Products
WHERE Discontinued = 0
