-- "Show how many cheap and expensive products are 
-- (Cheap means ListPrice < $40)*** provide 2 way to get the result"
SELECT  
sum(CASE 
WHEN ListPrice < 40.0 THEN 1 ELSE 0 END) as Cheap_products,
sum(CASE 
WHEN ListPrice >40.0 THEN 1 ELSE 0 END) as Expensive_products
FROM Product;

SELECT
CASE WHEN ListPrice<40 THEN 'Cheap' ELSE 'Expensive' END as Category,
count(*) as Product_count
FROM Product
GROUP BY 
 CASE WHEN ListPrice < 40 THEN 'Cheap' ELSE 'Expensive' END ;
