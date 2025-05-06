SELECT
	CASE 
		WHEN ListPrice < 30 THEN 'Cheap'
		WHEN ListPrice >80 THEN 'Expensive'
		ELSE 'Normal'
	END as Categories,
	count(*) as product_count
FROM Product

GROUP BY 	
	CASE
		WHEN ListPrice < 30 THEN 'Cheap' 
		WHEN ListPrice> 80 then 'Expensive' 
		ELSE 'Normal'
		END ;
	