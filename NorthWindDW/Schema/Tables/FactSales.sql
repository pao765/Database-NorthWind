CREATE TABLE [dbo].[FactSales] (
    [FactID] INT IDENTITY(1,1) NOT NULL PRIMARY KEY,

    [DateID] INT NOT NULL,
    [CustomerKey] INT NOT NULL,
    [ProductKey] INT NOT NULL,
    [EmployeeKey] INT NOT NULL,
    [ShipperKey] INT NOT NULL,

    [OrderID] INT, -- dimensión degenerada

    [Quantity] SMALLINT,
    [UnitPrice] MONEY,
    [Discount] REAL,
    [Freight] MONEY,
    [TotalAmount] MONEY,

    /* FOREIGN KEYS */
    CONSTRAINT [FK_FactSales_Date] 
        FOREIGN KEY ([DateID]) 
        REFERENCES [dbo].[DimDate]([DateID]),

    CONSTRAINT [FK_FactSales_Customer] 
        FOREIGN KEY ([CustomerKey]) 
        REFERENCES [dbo].[DimCustomer]([CustomerKey]),

    CONSTRAINT [FK_FactSales_Product] 
        FOREIGN KEY ([ProductKey]) 
        REFERENCES [dbo].[DimProduct]([ProductKey]),

    CONSTRAINT [FK_FactSales_Employee] 
        FOREIGN KEY ([EmployeeKey]) 
        REFERENCES [dbo].[DimEmployee]([EmployeeKey]),

    CONSTRAINT [FK_FactSales_Shipper] 
        FOREIGN KEY ([ShipperKey]) 
        REFERENCES [dbo].[DimShipper]([ShipperKey])
);