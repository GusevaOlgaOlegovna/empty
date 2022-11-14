--1.Показать Фамилию, Имя и Отчество самого пожилого сотрудника(Таблицы HumanResources.Employee
--и Person.Person). Показать поля FirstName, MiddleName, LastName.
SELECT P.FirstName
     , P.MiddleName
	 , P.LastName
	 , H.BirthDate
FROM Person.Person AS P
INNER JOIN HumanResources.Employee AS H
ON P.BusinessEntityID = H.BusinessEntityID
WHERE H.BirthDate =
	(
		SELECT MIN(BirthDate)
		FROM HumanResources.Employee
	);