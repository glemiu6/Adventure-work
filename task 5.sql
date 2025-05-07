--Show how many products do not have a size
SELECT count(*) as count_size FROM Product
WHERE  Size is NULL 

