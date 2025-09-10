SELECT 
  ROW_NUMBER() OVER (ORDER BY SUM(od.quantity) DESC) AS ranking,
  p.product_name,
  SUM(od.quantity) AS totalquantity
FROM 
  order_details od
JOIN 
  products p ON od.product_id = p.product_id
GROUP BY 
  p.product_name
ORDER BY 
  totalquantity DESC;
