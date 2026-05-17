
CREATE   PROCEDURE [dbo].[DW_MergeDimCustomer]
AS
BEGIN
    UPDATE dc
    SET 
        dc.[CompanyName] = sc.[CompanyName],
        dc.[ContactName] = sc.[ContactName],
        dc.[ContactTitle] = sc.[ContactTitle],
        dc.[City] = sc.[City],
        dc.[Region] = sc.[Region],
        dc.[Country] = sc.[Country]
    FROM [dbo].[DimCustomer] dc
    INNER JOIN [staging].[customer] sc ON (dc.[CustomerSK] = sc.[CustomerSK])
END
