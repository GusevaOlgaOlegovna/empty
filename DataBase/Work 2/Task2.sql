--2. ����� ������� ��� (Weight) �� ������� Production.Product, �� ��������� ������ ��������.
SELECT AVG([Weight]) AS AvgWeight
FROM Production.Product
WHERE [Weight] IS NOT NULL;