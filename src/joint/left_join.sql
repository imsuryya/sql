SELECT employees.emp_id, employees.emp_name, departments.department_name
FROM employees
LEFT JOIN departments ON employees.department_id = departments.department_id;

SELECT c.customer_name, o.order_id, o.order_date
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id;

SELECT p.product_name, oi.quantity, o.order_date
FROM products p
LEFT JOIN order_items oi ON p.product_id = oi.product_id
LEFT JOIN orders o ON oi.order_id = o.order_id;

SELECT e.emp_name, m.emp_name AS manager_name
FROM employees e
LEFT JOIN employees m ON e.manager_id = m.emp_id;
