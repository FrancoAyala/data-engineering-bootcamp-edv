SELECT 
  ROW_NUMBER() OVER (ORDER BY customer_id) AS rownumber,
  customer_id,
  company_name,
  contact_name,
  contact_title,
  address
FROM 
  customers;
