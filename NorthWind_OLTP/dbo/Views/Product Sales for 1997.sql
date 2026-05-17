CREATE VIEW [dbo].[Product Sales for 1997] AS
SELECT 
    C.CategoryName,
    P.ProductName,

    SUM(
        CONVERT(MONEY, (OD.UnitPrice * OD.Quantity * (1 - OD.Discount)))
    ) AS ProductSales

FROM [dbo].[Categories] C

INNER JOIN [dbo].[Products] P
    ON C.CategoryID = P.CategoryID

INNER JOIN [dbo].[OrderDetails] OD
    ON P.ProductID = OD.ProductID

INNER JOIN [dbo].[Orders] O
    ON O.OrderID = OD.OrderID

WHERE O.ShippedDate BETWEEN '19970101' AND '19971231'

GROUP BY
    C.CategoryName,
    P.ProductName;