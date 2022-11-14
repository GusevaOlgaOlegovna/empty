--3.Показать товар, для которого существует более 2 цветов в той же подкатегории 
--(Таблица Production.Product). Показать поля [Name], Color и ProductSubcategoryID.
SELECT P1.[Name]
	 , P1.Color
     , P1.ProductSubcategoryID
FROM Production.Product AS P1
WHERE P1.Color IS NOT NULL
AND P1.ProductSubcategoryID IS NOT NULL
AND
	( 
	   SELECT COUNT(DISTINCT P2.Color) AS ColorCount
	   FROM Production.Product AS P2
	   WHERE P1.ProductSubcategoryID = P2.ProductSubcategoryID
	   AND P2.Color IS NOT NULL
	) > 2;