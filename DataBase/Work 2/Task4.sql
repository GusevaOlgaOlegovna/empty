--4. ������� ���, ��� ������� ���������� ����� �������� ������ 50 �� HumanResources.Employee.
SELECT Gender
     , AVG(VacationHours) AS AvgVacantionHours
FROM HumanResources.Employee
GROUP BY Gender
HAVING AVG(VacationHours)>50;
