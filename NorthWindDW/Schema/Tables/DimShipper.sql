/* =========================
   DIMENSION: SHIPPER
========================= */
CREATE TABLE DimShipper (
    ShipperKey INT IDENTITY(1,1) PRIMARY KEY,
    ShipperID INT,
    CompanyName NVARCHAR(40),
    Phone NVARCHAR(24)
);
