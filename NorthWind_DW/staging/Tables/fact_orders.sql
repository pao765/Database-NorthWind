CREATE TABLE [staging].[fact_orders] (
    [OrderID]    INT      NOT NULL,
    [DateSK]     INT      NOT NULL,
    [CustomerSK] INT      NULL,
    [ProductSK]  INT      NULL,
    [EmployeeSK] INT      NULL,
    [ShipperSK]  INT      NULL,
    [Quantity]   SMALLINT NOT NULL,
    [UnitPrice]  MONEY    NOT NULL,
    [Discount]   REAL     NOT NULL,
    [Freight]    MONEY    NOT NULL
);

