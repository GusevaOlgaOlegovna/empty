--2. Показать список продуктов (поле Name) в котором указано, есть ли у продукта название модели 
--или нет, из таблиц Production.ProductModel, Production.Product, используя LEFT OUTER JOIN.
SELECT M.[Name]
     , P.ProductModelID
FROM Production.ProductModel AS M
LEFT OUTER JOIN Production.Product AS P
ON M.ProductModelID = P.ProductModelID;