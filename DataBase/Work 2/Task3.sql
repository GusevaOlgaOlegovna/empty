--3. ��� ������� ���� ����� ��������� ���������� ����� ������� �� ������� (��������� ������: �������� ��� ������ �� 2008 ����) 
--HumanResources.Employee, �� ��������� ������ ��������.
SELECT SUM(VacationHours) AS SumVacationHours,
       Gender
FROM HumanResources.Employee
WHERE HireDate <'2008' AND
VacationHours IS NOT NULL
GROUP BY Gender
