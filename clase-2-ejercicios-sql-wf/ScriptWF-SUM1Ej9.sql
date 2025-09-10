select
  SUM(od.unit_price * od.quantity * (1 - od.discount)) 
      OVER (PARTITION BY o.customer_id) AS sumorderamount,
  o.customer_id,
  o.order_id,
  o.employee_id,
  o.order_date,
  o.required_date
FROM
  orders o
JOIN
  order_details od ON o.order_id = od.order_id;

