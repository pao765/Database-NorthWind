CREATE TABLE [staging].[product] (
    [ProductSK]       INT           IDENTITY (1, 1) NOT NULL,
    [ProductID]       INT           NULL,
    [ProductName]     NVARCHAR (40) NULL,
    [CategoryName]    NVARCHAR (15) NULL,
    [SupplierName]    NVARCHAR (40) NULL,
    [QuantityPerUnit] NVARCHAR (20) NULL,
    [UnitPrice]       MONEY         NULL,
    [Discontinued]    BIT           NULL,
    PRIMARY KEY CLUSTERED ([ProductSK] ASC)
);

