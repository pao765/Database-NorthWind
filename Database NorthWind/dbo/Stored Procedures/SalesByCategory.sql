
-- SP 6: SalesByCategory - Ventas por categoría
CREATE PROCEDURE [dbo].[SalesByCategory]
    @CategoryName nvarchar(15), 
    @OrdYear nvarchar(4) = '1998'
AS
BEGIN
    IF @OrdYear NOT IN ('1996', '1997', '1998') 
        SELECT @OrdYear = '1998'
    
    SELECT P.ProductName,
           ROUND(SUM(CONVERT(decimal(14,2), OD.Quantity * (1-OD.Discount) * OD.UnitPrice)), 0) AS TotalPurchase
    FROM [Order Details] OD
    INNER JOIN Orders O ON OD.OrderID = O.OrderID
    INNER JOIN Products P ON OD.ProductID = P.ProductID
    INNER JOIN Categories C ON P.CategoryID = C.CategoryID
    WHERE C.CategoryName = @CategoryName
      AND SUBSTRING(CONVERT(nvarchar(22), O.OrderDate, 111), 1, 4) = @OrdYear
    GROUP BY P.ProductName
    ORDER BY P.ProductName
END
