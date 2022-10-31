--4. Вывести пол, где среднее количество часов выходных больше 50 из HumanResources.Employee.
SELECT Gender
     , AVG(VacationHours) AS AvgVacantionHours
FROM HumanResources.Employee
GROUP BY Gender
HAVING AVG(VacationHours)>50;
