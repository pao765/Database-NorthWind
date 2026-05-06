
-- Vista 2: Alphabetical list of products
CREATE VIEW [dbo].[Alphabetical list of products] AS
SELECT Products.*, Categories.CategoryName
FROM Categories 
INNER JOIN Products ON Categories.CategoryID = Products.CategoryID
WHERE Products.Discontinued = 0
