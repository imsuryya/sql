SELECT employees.emp_name, departments.department_name
FROM employees
CROSS JOIN departments;

SELECT p.product_name, c.color_name
FROM products p
CROSS JOIN colors c;

SELECT s.size_name, c.color_name, p.product_name
FROM sizes s
CROSS JOIN colors c
CROSS JOIN products p;
