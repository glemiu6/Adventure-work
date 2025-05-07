-- Show shared LastName's which have more than one customer with the same LastName
SELECT count(LastName)as shared,
LastName 
FROM Customer
GROUP by LastName
HAVING LastName >1
