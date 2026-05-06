
-- Vista 9: Order Subtotals
CREATE VIEW [dbo].[Order Subtotals] AS
SELECT OrderID, SUM(CONVERT(money, (UnitPrice * Quantity * (1 - Discount) / 100) * 100)) AS Subtotal
FROM "Order Details"
GROUP BY OrderID
