SELECT employees.emp_id, employees.emp_name, departments.department_name
FROM employees
RIGHT JOIN departments ON employees.department_id = departments.department_id;

SELECT o.order_id, o.order_date, c.customer_name
FROM orders o
RIGHT JOIN customers c ON o.customer_id = c.customer_id;

SELECT oi.quantity, p.product_name, p.price
FROM order_items oi
RIGHT JOIN products p ON oi.product_id = p.product_id;
