/* =========================
   DIMENSION: DATE
========================= */
CREATE TABLE DimDate (
    DateID INT PRIMARY KEY,           -- YYYYMMDD
    FullDate DATE,
    Day INT,
    Month INT,
    Year INT,
    Quarter INT,
    DayOfWeek INT
);