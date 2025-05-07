-- Show how many products of each color exists in the table 
-- (if no color specified - provide "#")
SELECT
coalesce(Color,'#') as color_group,
count(*) as  product_count
FROM Product
GROUP By color_group
