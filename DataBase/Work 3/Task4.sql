--4. Показать список продуктов (ProductID), которые содержатся на нескольких складах 
--(LocationID), из таблицы Production.ProductInventory, используя SELF JOIN.
SELECT DISTINCT I1.ProductID
              , I1.LocationID
FROM Production.ProductInventory AS I1
INNER JOIN Production.ProductInventory AS I2
ON I1.ProductID = I2.ProductID 
WHERE I1.LocationID <> I2.LocationID
ORDER BY ProductID;