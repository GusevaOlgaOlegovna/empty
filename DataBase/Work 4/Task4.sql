--4.Показать товары, цена которых равна максимальной цене товара из той же подкатегории
--(Таблица Production.Product). Показать поля [Name], ListPrice и ProductSubcategoryID.
SELECT P.[Name]
     , P.ListPrice
	 , P.ProductSubcategoryID
FROM Production.Product as P
JOIN 
    (
       SELECT ProductSubcategoryID
	        , MAX(ListPrice) as MaxListPrice 
	   FROM Production.Product
       GROUP BY ProductSubcategoryID
    )
AS A 
ON P.ProductSubcategoryID = A.ProductSubcategoryID AND P.ListPrice = A.MaxListPrice