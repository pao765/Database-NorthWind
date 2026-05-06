
-- SP 7: Ten Most Expensive Products - 10 productos más caros
CREATE PROCEDURE [dbo].[Ten Most Expensive Products] 
AS
BEGIN
    SET ROWCOUNT 10
    SELECT ProductName AS TenMostExpensiveProducts, UnitPrice
    FROM Products
    ORDER BY UnitPrice DESC
    SET ROWCOUNT 0
END
