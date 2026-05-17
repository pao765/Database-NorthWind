
CREATE   PROCEDURE [dbo].[DW_MergeDimProduct]
AS
BEGIN
    UPDATE dc
    SET 
        dc.[ProductName] = sc.[ProductName],
        dc.[CategoryName] = sc.[CategoryName],
        dc.[SupplierName] = sc.[SupplierName],
        dc.[QuantityPerUnit] = sc.[QuantityPerUnit],
        dc.[UnitPrice] = sc.[UnitPrice],
        dc.[Discontinued] = sc.[Discontinued]
    FROM [dbo].[DimProduct] dc
    INNER JOIN [staging].[product] sc ON (dc.[ProductSK] = sc.[ProductSK])
END
