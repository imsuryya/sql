SELECT * FROM employees 
WHERE department = 'Sales' AND salary > 50000;

SELECT * FROM employees 
WHERE age >= 25 AND age <= 35 AND experience > 3;

SELECT * FROM employees 
WHERE department = 'Sales' OR department = 'Marketing';

SELECT * FROM employees 
WHERE salary > 80000 OR position = 'Manager';

SELECT * FROM employees 
WHERE NOT department = 'HR';

SELECT * FROM employees 
WHERE NOT (salary < 30000);

SELECT * FROM employees 
WHERE (department = 'Sales' OR department = 'Marketing') 
AND salary > 50000;

SELECT * FROM employees 
WHERE department = 'IT' 
AND (experience > 5 OR position = 'Senior Developer');

SELECT * FROM products 
WHERE price > ALL (SELECT price FROM products WHERE category = 'Electronics');

SELECT * FROM products 
WHERE price > ANY (SELECT price FROM products WHERE category = 'Books');

SELECT * FROM customers c
WHERE EXISTS (SELECT 1 FROM orders o WHERE o.customer_id = c.customer_id);
