--Show how many products of each Size exists (if no size specified - provide "No size")
SELECT
coalesce(Size,'No size') as size_group,
count(*) as product_count
FROM Product
GROUP BY coalesce(Size,'No size')
