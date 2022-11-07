--5. Показать список складов (LocationID), на которых содержатся несколько продуктов 
--(ProductID), из таблицы Production.ProductInventory, используя SELF JOIN.
SELECT DISTINCT I1.LocationID
              , I1.ProductID
FROM Production.ProductInventory AS I1
INNER JOIN Production.ProductInventory AS I2
ON I1.LocationID = I2.LocationID 
WHERE I1.ProductID <> I2.ProductID
ORDER BY LocationID;