CREATE VIEW [dbo].[Order Subtotals] AS
SELECT 
    OD.OrderID,

    SUM(
        CONVERT(MONEY, (OD.UnitPrice * OD.Quantity * (1 - OD.Discount)))
    ) AS Subtotal

FROM [dbo].[OrderDetails] OD

GROUP BY OD.OrderID;