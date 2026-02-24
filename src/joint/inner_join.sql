SELECT employees.emp_id, employees.emp_name, departments.department_name
FROM employees
INNER JOIN departments ON employees.department_id = departments.department_id;

SELECT e.emp_name, d.department_name, l.city
FROM employees e
INNER JOIN departments d ON e.department_id = d.department_id
INNER JOIN locations l ON d.location_id = l.location_id;

SELECT o.order_id, c.customer_name, p.product_name, oi.quantity
FROM orders o
INNER JOIN customers c ON o.customer_id = c.customer_id
INNER JOIN order_items oi ON o.order_id = oi.order_id
INNER JOIN products p ON oi.product_id = p.product_id;
