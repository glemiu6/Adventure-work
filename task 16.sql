-- Show shared FirstName's which have more than one customer with the same FirstName
SELECT count(FirstName)as shared,
FirstName 
FROM Customer
GROUP by FirstName
HAVING FirstName >1
ORDER by shared DESC
