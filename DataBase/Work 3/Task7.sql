--7. Показать комбинированный список таблиц Person.AddressType, Person.ContactType 
--по полям ID, Name, ModifiedDate, используя UNION.
SELECT AddressTypeID
    , [Name]
	, ModifiedDate
FROM Person.AddressType
UNION
SELECT ContactTypeID
    , [Name]
	, ModifiedDate
FROM Person.ContactType