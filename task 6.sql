SELECT name,
ProductCategoryID,
count(ProductCategoryID) as product_count FROM Product
GROUP by ProductCategoryID
ORDER by product_count DESC