--6. Показать список продуктов из таблицы Production.Product с таким же цветом 
--как у продукта ML Road Frame-W - Yellow, 38, используя SELF JOIN.
SELECT DISTINCT P1.[Name]
              , P1.Color
FROM Production.Product AS P1
INNER JOIN Production.Product AS P2
ON (P1.Color = P2.Color)
AND P1.[Name] = 'ML Road Frame-W - Yellow, 38'