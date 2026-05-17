
CREATE   PROCEDURE [dbo].[DW_MergeFactOrders]
AS
BEGIN
    UPDATE dc
    SET 
        dc.[DateSK] = sc.[DateSK],
        dc.[CustomerSK] = sc.[CustomerSK],
        dc.[ProductSK] = sc.[ProductSK],
        dc.[EmployeeSK] = sc.[EmployeeSK],
        dc.[ShipperSK] = sc.[ShipperSK],
        dc.[Quantity] = sc.[Quantity],
        dc.[UnitPrice] = sc.[UnitPrice],
        dc.[Discount] = sc.[Discount],
        dc.[Freight] = sc.[Freight],
        dc.[LineTotal] = sc.[Quantity] * sc.[UnitPrice] * (1 - sc.[Discount])
    FROM [dbo].[FactSales] dc
    INNER JOIN [staging].[fact_orders] sc ON (dc.[OrderID] = sc.[OrderID])
END
