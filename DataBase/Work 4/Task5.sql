--5.Показать товары, цена которых больше средней цены в любой модели продуктов
--(Таблица Production.Product). Показать поля [Name], ListPrice и ProductModelID.
SELECT [Name]
     , ListPrice
	 , ProductModelID
FROM Production.Product
WHERE ListPrice >ANY
                (
				 SELECT AVG(ListPrice) AS AvgListPrice 
				 FROM Production.Product
                 WHERE ProductModelID IS NOT NULL
                 GROUP BY ProductModelID
				)