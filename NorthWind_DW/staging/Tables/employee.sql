CREATE TABLE [staging].[employee] (
    [EmployeeSK] INT           IDENTITY (1, 1) NOT NULL,
    [EmployeeID] INT           NULL,
    [FullName]   NVARCHAR (31) NULL,
    [Title]      NVARCHAR (30) NULL,
    [City]       NVARCHAR (15) NULL,
    [Region]     NVARCHAR (15) NULL,
    [Country]    NVARCHAR (15) NULL,
    [HireDate]   DATE          NULL,
    PRIMARY KEY CLUSTERED ([EmployeeSK] ASC)
);

