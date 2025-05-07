-- "Show the [%] difference between StandardCost and ListPrice 
--calculate the percentage up to 2 digits in decimals xx.xx%"
SELECT 
ProductID,
ListPrice,
StandardCost,
printf('%.2f%%', ListPrice/StandardCost) AS difference_in_percent

FROM Product;


SELECT
round(CAST(ListPrice/StandardCost  as REAL) ,2)|| '%' as difference 
FROM Product;
