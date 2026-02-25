SELECT CONCAT(first_name, ' ', last_name) AS full_name FROM employees;

SELECT CONCAT('Hello', ' ', 'World') AS greeting;

SELECT first_name || ' ' || last_name AS full_name FROM employees;

SELECT 'Hello' || ' ' || 'World' AS greeting;

SELECT first_name + ' ' + last_name AS full_name FROM employees;

SELECT 'Hello' + ' ' + 'World' AS greeting;

SELECT CONCAT_WS(', ', city, state, country) AS address FROM customers;

SELECT 'Employee ID: ' + CAST(employee_id AS VARCHAR) FROM employees;

SELECT CONCAT('Employee ID: ', employee_id) FROM employees;

SELECT 'Employee ID: ' || employee_id::TEXT FROM employees;

SELECT CONCAT(first_name, ' ', last_name, ' - ', department) AS employee_info 
FROM employees;

SELECT 'Order #' || order_id || ' placed on ' || order_date AS order_summary 
FROM orders;
