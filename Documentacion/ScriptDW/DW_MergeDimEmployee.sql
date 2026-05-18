
CREATE   PROCEDURE [dbo].[DW_MergeDimEmployee]
AS
BEGIN
    UPDATE dc
    SET 
        dc.[FullName] = sc.[FullName],
        dc.[Title] = sc.[Title],
        dc.[City] = sc.[City],
        dc.[Region] = sc.[Region],
        dc.[Country] = sc.[Country],
        dc.[HireDate] = sc.[HireDate]
    FROM [dbo].[DimEmployee] dc
    INNER JOIN [staging].[employee] sc ON (dc.[EmployeeSK] = sc.[EmployeeSK])
END
