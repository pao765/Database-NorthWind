
-- ============================================
-- CREACIÓN DE VISTAS
-- ============================================

-- Vista 1: Customer and Suppliers by City
CREATE VIEW [dbo].[Customer and Suppliers by City] AS
SELECT City, CompanyName, ContactName, 'Customers' AS Relationship 
FROM Customers
UNION 
SELECT City, CompanyName, ContactName, 'Suppliers'
FROM Suppliers
