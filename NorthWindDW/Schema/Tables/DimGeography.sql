/* =========================
   DIMENSION: GEOGRAPHY (OPCIONAL)
========================= */
CREATE TABLE DimGeography (
    GeographyKey INT IDENTITY(1,1) PRIMARY KEY,
    TerritoryID NVARCHAR(20),
    TerritoryDescription NCHAR(50),
    RegionDescription NCHAR(50)
);
