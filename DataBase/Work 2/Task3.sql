--3. Для каждого пола найти суммарное количество часов отпуска из таблицы (поставить фильтр: работник был принят до 2008 года) 
--HumanResources.Employee, не учитывать пустые значения.
SELECT SUM(VacationHours) AS SumVacationHours,
       Gender
FROM HumanResources.Employee
WHERE HireDate <'2008' AND
VacationHours IS NOT NULL
GROUP BY Gender
