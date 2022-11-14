--3. Показать список ID людей (поле BusinessEntityId), в котором указано, работает ли человек в магазине
--или нет, из таблиц Sales.Store, Person.BusinessEntity, используя RIGHT OUTER JOIN.
SELECT B.BusinessEntityID
     , S.SalesPersonID
FROM Sales.Store AS S
RIGHT OUTER JOIN Person.BusinessEntity AS B
ON S.BusinessEntityID = B.BusinessEntityID;