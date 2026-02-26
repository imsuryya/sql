CREATE VIEW employee_view AS
SELECT employee_id, first_name, last_name, email
FROM employees
WHERE department = 'Sales';

CREATE VIEW product_summary AS
SELECT 
    category,
    COUNT(*) AS total_products,
    AVG(price) AS average_price,
    MIN(price) AS min_price,
    MAX(price) AS max_price
FROM products
GROUP BY category;

CREATE VIEW order_details_view AS
SELECT 
    o.order_id,
    c.customer_name,
    p.product_name,
    o.quantity,
    o.order_date
FROM orders o
INNER JOIN customers c ON o.customer_id = c.customer_id
INNER JOIN products p ON o.product_id = p.product_id;

CREATE OR REPLACE VIEW employee_view AS
SELECT employee_id, first_name, last_name, email, hire_date
FROM employees
WHERE department = 'Sales' AND status = 'Active';
