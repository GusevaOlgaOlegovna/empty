--5. ������� BusinessEntityID, LastReceiptDate � ����� �� StandardPrice ��� BusinessEntityID � ������� LastReceiptDate, 
--������������� ����� ����� ����� ��� ���� StandardPrice � ��������� BusinessEntityID �� ������� Purchasing.ProductVendor. (������������ ROOLUP)
SELECT BusinessEntityID,
       LastReceiptDate,
	   SUM(StandardPrice) AS SumStandartPrice
FROM Purchasing.ProductVendor
GROUP BY
ROLLUP (BusinessEntityID, LastReceiptDate);
