/* =========================
   DIMENSION: EMPLOYEE
========================= */
CREATE TABLE DimEmployee (
    EmployeeKey INT IDENTITY(1,1) PRIMARY KEY,
    EmployeeID INT,
    FullName NVARCHAR(50),
    Title NVARCHAR(30),
    City NVARCHAR(15),
    Region NVARCHAR(15),
    Country NVARCHAR(15),
    HireDate DATETIME
);