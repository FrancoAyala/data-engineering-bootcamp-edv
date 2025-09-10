SELECT 
    customer_id,
    order_date,
    MIN(order_date) OVER (PARTITION BY customer_id) AS earliestorderdate
FROM 
    orders;
