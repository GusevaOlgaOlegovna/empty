--1. Показать номера телефонов (PhoneNumber) и поля PersonType, FirstName, 
--LastName из таблиц Person.Person, Person.PersonPhone.
SELECT  Phone.PhoneNumber
     ,  Person.PersonType
	 ,  Person.FirstName
	 ,  Person.LastName
FROM Person.PersonPhone AS Phone
INNER JOIN Person.Person Person
ON Person.BusinessEntityID = Phone.BusinessEntityID;