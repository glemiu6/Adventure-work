-- "Show how many products per each ProductCategory.Name2
--  tables {Product & ProductCategory} are connected via ProductCategoryID"
SELECT ProductCategory.Name,
count(Product.ProductCategoryID) as product_category
FROM ProductCategory
JOIN Product on ProductCategory.ProductCategoryID =Product.ProductCategoryID
GROUP by Product.ProductCategoryID
ORDER by product_category DESC
