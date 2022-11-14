--2.Определить количество сотрудников и штат (StateProvinceName), 
--в котором проживает максимальное число сотрудников (Представление Sales.vSalesPerson).
SELECT TOP 1 StateProvinceName 
		   , COUNT(*) AS PersonCount
FROM Sales.vSalesPerson
WHERE StateProvinceName IS NOT NULL
GROUP BY StateProvinceName
ORDER BY COUNT(*) DESC