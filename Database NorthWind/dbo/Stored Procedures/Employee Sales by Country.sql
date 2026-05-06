
-- SP 4: Employee Sales by Country - Ventas por empleado y país
CREATE PROCEDURE [dbo].[Employee Sales by Country] 
    @Beginning_Date DateTime, 
    @Ending_Date DateTime
AS
BEGIN
    SELECT E.Country, E.LastName, E.FirstName, O.ShippedDate, O.OrderID, 
           OS.Subtotal AS SaleAmount
    FROM Employees E
    INNER JOIN Orders O ON E.EmployeeID = O.EmployeeID
    INNER JOIN [Order Subtotals] OS ON O.OrderID = OS.OrderID
    WHERE O.ShippedDate BETWEEN @Beginning_Date AND @Ending_Date
END
