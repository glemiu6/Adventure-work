SELECT count(LastName)as shared,
LastName 
FROM Customer
GROUP by LastName
HAVING LastName >1