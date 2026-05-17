CREATE TABLE [dbo].[DimProduct] (
    [ProductSK]       INT           IDENTITY (1, 1) NOT NULL,
    [ProductID]       INT           NOT NULL,
    [ProductName]     NVARCHAR (40) NOT NULL,
    [CategoryName]    NVARCHAR (15) NULL,
    [SupplierName]    NVARCHAR (40) NULL,
    [QuantityPerUnit] NVARCHAR (20) NULL,
    [UnitPrice]       MONEY         NULL,
    [Discontinued]    BIT           NOT NULL,
    CONSTRAINT [PK_DimProduct] PRIMARY KEY CLUSTERED ([ProductSK] ASC)
);

