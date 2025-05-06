SELECT count(FirstName)as shared,
FirstName 
FROM Customer
GROUP by FirstName
HAVING FirstName >1
ORDER by shared DESC