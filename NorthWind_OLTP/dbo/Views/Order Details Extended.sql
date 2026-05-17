
CREATE VIEW [dbo].[Order Details Extended] AS
SELECT 
    OD.OrderID,
    OD.ProductID,
    P.ProductName,
    OD.UnitPrice,
    OD.Quantity,
    OD.Discount,
    CONVERT(MONEY, (OD.UnitPrice * OD.Quantity * (1 - OD.Discount))) AS ExtendedPrice
FROM [dbo].[OrderDetails] OD
INNER JOIN [dbo].[Products] P
    ON P.ProductID = OD.ProductID;