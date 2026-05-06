
-- ============================================
-- CREACIÓN DE STORED PROCEDURES
-- ============================================

-- SP 1: CustOrderHist - Historial de órdenes por cliente
CREATE PROCEDURE [dbo].[CustOrderHist] 
    @CustomerID nchar(5)
AS
BEGIN
    SELECT P.ProductName, SUM(OD.Quantity) AS Total
    FROM Products P
    INNER JOIN [Order Details] OD ON P.ProductID = OD.ProductID
    INNER JOIN Orders O ON OD.OrderID = O.OrderID
    WHERE O.CustomerID = @CustomerID
    GROUP BY P.ProductName
    ORDER BY P.ProductName
END
