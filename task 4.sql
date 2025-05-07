SELECT
coalesce(Color,'#') as color_group,
count(*) as  product_count
FROM Product
GROUP By color_group