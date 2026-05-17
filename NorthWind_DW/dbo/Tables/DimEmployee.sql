CREATE TABLE [dbo].[DimEmployee] (
    [EmployeeSK] INT           IDENTITY (1, 1) NOT NULL,
    [EmployeeID] INT           NOT NULL,
    [FullName]   NVARCHAR (50) NOT NULL,
    [Title]      NVARCHAR (30) NULL,
    [City]       NVARCHAR (15) NULL,
    [Region]     NVARCHAR (15) NULL,
    [Country]    NVARCHAR (15) NULL,
    [HireDate]   DATE          NULL,
    CONSTRAINT [PK_DimEmployee] PRIMARY KEY CLUSTERED ([EmployeeSK] ASC)
);

