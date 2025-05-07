-- Show how many products have no image available
SELECT count(Product.ThumbnailPhotoFileName) as no_foto
FROM Product
WHERE ThumbnailPhotoFileName like '%no_image_available_small.gif%'
