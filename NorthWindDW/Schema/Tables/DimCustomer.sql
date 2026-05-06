CREATE TABLE DimCustomer (
    CustomerKey INT IDENTITY(1,1) PRIMARY KEY,
    CustomerID NCHAR(5),
    CompanyName NVARCHAR(40),
    ContactName NVARCHAR(30),
    City NVARCHAR(15),
    Region NVARCHAR(15),
    Country NVARCHAR(15)
);