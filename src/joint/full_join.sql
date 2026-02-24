SELECT employees.emp_id, employees.emp_name, departments.department_name
FROM employees
FULL JOIN departments ON employees.department_id = departments.department_id;

SELECT c.customer_name, o.order_id, o.order_date
FROM customers c
FULL OUTER JOIN orders o ON c.customer_id = o.customer_id;

SELECT p.product_name, s.supplier_name
FROM products p
FULL JOIN suppliers s ON p.supplier_id = s.supplier_id;
