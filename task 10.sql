-- "Show pruducts per categories {Cheap / Normal / Expensive} where Cheap < 30 and Expensive > 80 *** provide 2 way to get the result"
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
		WHEN ListPrice > 80 then 'Expensive' 
		ELSE 'Normal'
	END ;

SELECT 
sum(CASE WHEN ListPrice<30 THEN 1 ELSE 0 END) as Cheap,
sum(CASE WHEN ListPrice>=30 and ListPrice<8=0 then 1 ELSE 0 END) as Normal,
sum(CASE WHEN ListPrice>80 THEN 1 ELSE 0 END) as Expensive
FROM Product
GROUP BY 
CASE 
WHEN ListPrice< 30 THEN 'Cheap'
WHEN ListPrice>=30 and ListPrice<=80 THEN 'Normal'
ELSE 'Expensive'
END;
