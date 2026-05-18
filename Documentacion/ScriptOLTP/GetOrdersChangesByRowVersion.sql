
CREATE   PROCEDURE [dbo].[GetOrdersChangesByRowVersion]
(
    @startRow BIGINT,
    @endRow BIGINT
)
AS
BEGIN
    SELECT 
        o.[OrderID],
        o.[CustomerID],
        o.[EmployeeID],
        o.[OrderDate],
        o.[RequiredDate],
        o.[ShippedDate],
        o.[ShipVia],
        o.[Freight],
        o.[ShipName],
        o.[ShipAddress],
        o.[ShipCity],
        o.[ShipRegion],
        o.[ShipPostalCode],
        o.[ShipCountry],
        -- Convertir fechas a DateKey (YYYYMMDD)
        CONVERT(INT, CONVERT(VARCHAR(8), o.[OrderDate], 112)) AS OrderDateKey,
        CONVERT(INT, CONVERT(VARCHAR(8), o.[RequiredDate], 112)) AS RequiredDateKey,
        CASE WHEN o.[ShippedDate] IS NULL THEN 0 
             ELSE CONVERT(INT, CONVERT(VARCHAR(8), o.[ShippedDate], 112)) 
        END AS ShippedDateKey,
        od.[ProductID],
        od.[UnitPrice],
        od.[Quantity],
        od.[Discount],
        o.[rowversion]
    FROM [dbo].[Orders] o
    INNER JOIN [dbo].[OrderDetails] od ON o.[OrderID] = od.[OrderID]
    WHERE (o.[rowversion] > CONVERT(ROWVERSION, @startRow) 
           AND o.[rowversion] <= CONVERT(ROWVERSION, @endRow))
       OR (od.[rowversion] > CONVERT(ROWVERSION, @startRow) 
           AND od.[rowversion] <= CONVERT(ROWVERSION, @endRow))
END
