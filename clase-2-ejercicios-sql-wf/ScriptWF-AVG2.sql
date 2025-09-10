WITH order_totals AS (
  SELECT 
    order_id,
    SUM(unit_price * quantity) AS order_amount
  FROM 
    order_details
  GROUP BY 
    order_id
)

SELECT 
  AVG(ot.order_amount) OVER(PARTITION BY o.customer_id) AS avgorderamount,
  o.order_id,
  o.customer_id,
  o.employee_id,
  o.order_date,
  o.required_date,
  o.shipped_date
FROM 
  orders o
JOIN 
  order_totals ot ON o.order_id = ot.order_id
ORDER BY 
  o.customer_id;
