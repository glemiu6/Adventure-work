SELECT
coalesce(Size,'No size') as size_group,
count(*) as product_count
FROM Product
GROUP BY coalesce(Size,'No size')