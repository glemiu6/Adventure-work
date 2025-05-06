SELECT ProductCategory.Name,
count(Product.ProductCategoryID) as product_category
FROM ProductCategory
JOIN Product on ProductCategory.ProductCategoryID =Product.ProductCategoryID
GROUP by Product.ProductCategoryID
ORDER by product_category DESC