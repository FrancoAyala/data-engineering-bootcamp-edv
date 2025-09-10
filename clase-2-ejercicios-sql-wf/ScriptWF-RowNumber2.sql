SELECT 
  ROW_NUMBER() OVER (ORDER BY birth_date DESC) AS ranking,
  CONCAT(first_name, ' ', last_name) AS employeename,
  birth_date
FROM 
  employees;
