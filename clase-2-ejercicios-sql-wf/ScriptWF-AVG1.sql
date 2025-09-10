SELECT 
  c.category_name,
  p.product_name,
  p.unit_price,
  AVG(p.unit_price) OVER (PARTITION BY c.category_name) AS avgpricebycategory
FROM 
  products p
JOIN 
  categories c ON p.category_id = c.category_id;
