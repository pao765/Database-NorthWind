CREATE VIEW [dbo].[Invoices] AS
SELECT 
    O.ShipName,
    O.ShipAddress,
    O.ShipCity,
    O.ShipRegion,
    O.ShipPostalCode,
    O.ShipCountry,
    O.CustomerID,

    C.CompanyName AS CustomerName,
    C.Address,
    C.City,
    C.Region,
    C.PostalCode,
    C.Country,

    (E.FirstName + ' ' + E.LastName) AS Salesperson,

    O.OrderID,
    O.OrderDate,
    O.RequiredDate,
    O.ShippedDate,

    S.CompanyName AS ShipperName,

    OD.ProductID,
    P.ProductName,
    OD.UnitPrice,
    OD.Quantity,
    OD.Discount,

    CONVERT(MONEY, (OD.UnitPrice * OD.Quantity * (1 - OD.Discount))) AS ExtendedPrice,

    O.Freight

FROM [dbo].[Orders] O

INNER JOIN [dbo].[Customers] C
    ON C.CustomerID = O.CustomerID

INNER JOIN [dbo].[Employees] E
    ON E.EmployeeID = O.EmployeeID

INNER JOIN [dbo].[Shippers] S
    ON S.ShipperID = O.ShipVia

INNER JOIN [dbo].[OrderDetails] OD
    ON O.OrderID = OD.OrderID

INNER JOIN [dbo].[Products] P
    ON P.ProductID = OD.ProductID;