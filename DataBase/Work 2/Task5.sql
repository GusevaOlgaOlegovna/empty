--5. Вывести BusinessEntityID, LastReceiptDate и сумму по StandardPrice для BusinessEntityID с разными LastReceiptDate, 
--предусмотреть вывод общей суммы для всех StandardPrice у различных BusinessEntityID из таблицы Purchasing.ProductVendor. (Использовать ROOLUP)
SELECT BusinessEntityID
     , LastReceiptDate
     , SUM(StandardPrice) AS SumStandartPrice
FROM Purchasing.ProductVendor
GROUP BY
ROLLUP (BusinessEntityID, LastReceiptDate);
