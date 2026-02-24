SELECT COUNT(*) AS total_employees FROM employees;

SELECT COUNT(department_id) AS employees_with_dept FROM employees;

SELECT COUNT(DISTINCT department_id) AS unique_departments FROM employees;

SELECT SUM(salary) AS total_salary FROM employees;

SELECT SUM(quantity * price) AS total_revenue FROM order_items;

SELECT AVG(salary) AS average_salary FROM employees;

SELECT AVG(price) AS average_price FROM products;

SELECT MIN(salary) AS lowest_salary FROM employees;

SELECT MIN(hire_date) AS earliest_hire FROM employees;

SELECT MAX(salary) AS highest_salary FROM employees;

SELECT MAX(order_date) AS latest_order FROM orders;

SELECT department_id, COUNT(*) AS employee_count
FROM employees
GROUP BY department_id;

SELECT department_id, AVG(salary) AS avg_salary, SUM(salary) AS total_salary
FROM employees
GROUP BY department_id;

SELECT category_id, product_name, MAX(price) AS max_price
FROM products
GROUP BY category_id, product_name;

SELECT YEAR(order_date) AS order_year, MONTH(order_date) AS order_month, COUNT(*) AS order_count
FROM orders
GROUP BY YEAR(order_date), MONTH(order_date);

SELECT department_id, COUNT(*) AS employee_count
FROM employees
GROUP BY department_id
HAVING COUNT(*) > 5;

SELECT department_id, AVG(salary) AS avg_salary
FROM employees
GROUP BY department_id
HAVING AVG(salary) > 50000;

SELECT customer_id, SUM(total_amount) AS total_spent
FROM orders
GROUP BY customer_id
HAVING SUM(total_amount) > 1000;

SELECT department_id, COUNT(*) AS employee_count, AVG(salary) AS avg_salary
FROM employees
WHERE status = 'active'
GROUP BY department_id
HAVING COUNT(*) >= 3
ORDER BY avg_salary DESC;
