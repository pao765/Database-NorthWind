
-- SP 3: CustOrdersOrders - Órdenes por cliente
CREATE PROCEDURE [dbo].[CustOrdersOrders] 
    @CustomerID nchar(5)
AS
BEGIN
    SELECT OrderID, OrderDate, RequiredDate, ShippedDate
    FROM Orders
    WHERE CustomerID = @CustomerID
    ORDER BY OrderID
END
