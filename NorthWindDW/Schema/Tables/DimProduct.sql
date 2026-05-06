/* =========================
   DIMENSION: PRODUCT
========================= */
CREATE TABLE DimProduct (
    ProductKey INT IDENTITY(1,1) PRIMARY KEY,
    ProductID INT,
    ProductName NVARCHAR(40),
    CategoryName NVARCHAR(15),
    SupplierName NVARCHAR(40),
    QuantityPerUnit NVARCHAR(20),
    UnitPrice MONEY,
    UnitsInStock SMALLINT,
    Discontinued BIT
);