
-- SP 5: Sales by Year - Ventas por año
CREATE PROCEDURE [dbo].[Sales by Year] 
    @Beginning_Date DateTime, 
    @Ending_Date DateTime
AS
BEGIN
    SELECT O.ShippedDate, O.OrderID, OS.Subtotal, DATENAME(yy, O.ShippedDate) AS Year
    FROM Orders O
    INNER JOIN [Order Subtotals] OS ON O.OrderID = OS.OrderID
    WHERE O.ShippedDate BETWEEN @Beginning_Date AND @Ending_Date
END
