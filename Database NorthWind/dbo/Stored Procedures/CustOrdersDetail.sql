
-- SP 2: CustOrdersDetail - Detalle de órdenes por cliente
CREATE PROCEDURE [dbo].[CustOrdersDetail] 
    @OrderID int
AS
BEGIN
    SELECT P.ProductName,
           ROUND(OD.UnitPrice, 2) AS UnitPrice,
           OD.Quantity,
           CONVERT(int, OD.Discount * 100) AS Discount,
           ROUND(CONVERT(money, OD.Quantity * (1 - OD.Discount) * OD.UnitPrice), 2) AS ExtendedPrice
    FROM Products P
    INNER JOIN [Order Details] OD ON P.ProductID = OD.ProductID
    WHERE OD.OrderID = @OrderID
END
