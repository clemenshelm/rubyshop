SELECT
  products.id,
  products.name,
  products.price,
  products.created_at,
  COALESCE(AVG(ratings.stars), 0) AS average_rating,
  COUNT(ratings.id) AS ratings_count
FROM products
LEFT JOIN ratings ON ratings.product_id = products.id
GROUP BY products.id
