CREATE TABLE [dbo].[FactSales] (
    [SalesSK]    INT      IDENTITY (1, 1) NOT NULL,
    [DateSK]     INT      NOT NULL,
    [CustomerSK] INT      NOT NULL,
    [ProductSK]  INT      NOT NULL,
    [EmployeeSK] INT      NOT NULL,
    [ShipperSK]  INT      NOT NULL,
    [OrderID]    INT      NULL,
    [Quantity]   SMALLINT NULL,
    [UnitPrice]  MONEY    NULL,
    [Discount]   REAL     NULL,
    [Freight]    MONEY    NULL,
    [LineTotal]  MONEY    NULL,
    PRIMARY KEY CLUSTERED ([SalesSK] ASC),
    CONSTRAINT [FK_FactSales_Customer] FOREIGN KEY ([CustomerSK]) REFERENCES [dbo].[DimCustomer] ([CustomerSK]),
    CONSTRAINT [FK_FactSales_Date] FOREIGN KEY ([DateSK]) REFERENCES [dbo].[DimDate] ([DateSK]),
    CONSTRAINT [FK_FactSales_Employee] FOREIGN KEY ([EmployeeSK]) REFERENCES [dbo].[DimEmployee] ([EmployeeSK]),
    CONSTRAINT [FK_FactSales_Product] FOREIGN KEY ([ProductSK]) REFERENCES [dbo].[DimProduct] ([ProductSK]),
    CONSTRAINT [FK_FactSales_Shipper] FOREIGN KEY ([ShipperSK]) REFERENCES [dbo].[DimShipper] ([ShipperSK])
);

