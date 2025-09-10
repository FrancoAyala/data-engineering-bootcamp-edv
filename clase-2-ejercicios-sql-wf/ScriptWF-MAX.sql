SELECT 
    product_id,
    product_name,
    unit_price,
    category_id,
    MAX(unit_price) OVER (PARTITION BY category_id) AS maxunitprice
FROM 
    products;
