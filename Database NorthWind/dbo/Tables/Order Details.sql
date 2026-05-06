CREATE TABLE [dbo].[Order Details] (
    [OrderID]    INT        NOT NULL,
    [ProductID]  INT        NOT NULL,
    [UnitPrice]  MONEY      CONSTRAINT [DF_OrderDetails_UnitPrice] DEFAULT ((0)) NOT NULL,
    [Quantity]   SMALLINT   CONSTRAINT [DF_OrderDetails_Quantity] DEFAULT ((1)) NOT NULL,
    [Discount]   REAL       CONSTRAINT [DF_OrderDetails_Discount] DEFAULT ((0)) NOT NULL,
    [rowversion] ROWVERSION NULL,
    CONSTRAINT [PK_Order_Details] PRIMARY KEY CLUSTERED ([OrderID] ASC, [ProductID] ASC),
    CONSTRAINT [CK_OrderDetails_Discount] CHECK ([Discount]>=(0) AND [Discount]<=(1)),
    CONSTRAINT [CK_OrderDetails_Quantity] CHECK ([Quantity]>(0)),
    CONSTRAINT [CK_OrderDetails_UnitPrice] CHECK ([UnitPrice]>=(0)),
    CONSTRAINT [FK_OrderDetails_Orders] FOREIGN KEY ([OrderID]) REFERENCES [dbo].[Orders] ([OrderID]),
    CONSTRAINT [FK_OrderDetails_Products] FOREIGN KEY ([ProductID]) REFERENCES [dbo].[Products] ([ProductID])
);


GO
CREATE NONCLUSTERED INDEX [IX_OrderDetails_OrderID]
    ON [dbo].[Order Details]([OrderID] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_OrderDetails_ProductID]
    ON [dbo].[Order Details]([ProductID] ASC);

