
CREATE   PROCEDURE [dbo].[DW_MergeDimShipper]
AS
BEGIN
    UPDATE dc
    SET 
        dc.[CompanyName] = sc.[CompanyName],
        dc.[Phone] = sc.[Phone]
    FROM [dbo].[DimShipper] dc
    INNER JOIN [staging].[shipper] sc ON (dc.[ShipperSK] = sc.[ShipperSK])
END
