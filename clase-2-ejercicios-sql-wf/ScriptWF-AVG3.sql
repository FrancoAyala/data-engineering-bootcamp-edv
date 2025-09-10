SELECT 
    p.product_name,
    c.category_name,
    p.quantity_per_unit,
    od.unit_price,
    od.quantity,
    AVG(od.quantity) OVER (PARTITION BY c.category_name) AS avgquantity
FROM 
    order_details od
JOIN 
    products p ON od.product_id = p.product_id
JOIN 
    categories c ON p.category_id = c.category_id
ORDER BY 
    c.category_name,
    p.product_name;
