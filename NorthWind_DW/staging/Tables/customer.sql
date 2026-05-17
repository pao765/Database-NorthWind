CREATE TABLE [staging].[customer] (
    [CustomerSK]   INT           IDENTITY (1, 1) NOT NULL,
    [CustomerID]   NCHAR (5)     NULL,
    [CompanyName]  NVARCHAR (40) NULL,
    [ContactName]  NVARCHAR (30) NULL,
    [ContactTitle] NVARCHAR (30) NULL,
    [City]         NVARCHAR (15) NULL,
    [Region]       NVARCHAR (15) NULL,
    [Country]      NVARCHAR (15) NULL,
    PRIMARY KEY CLUSTERED ([CustomerSK] ASC)
);

