SELECT * FROM employees 
WHERE salary > (SELECT AVG(salary) FROM employees);

SELECT * FROM employees 
WHERE department_id IN (SELECT department_id FROM departments WHERE location = 'New York');

SELECT * FROM employees 
WHERE salary > (SELECT MIN(salary) FROM employees WHERE department = 'IT');

SELECT employee_name, salary,
    (SELECT AVG(salary) FROM employees) AS avg_salary
FROM employees;

SELECT e.employee_name, e.salary, d.department_name
FROM employees e
JOIN (SELECT department_id, department_name FROM departments WHERE is_active = 1) d
ON e.department_id = d.department_id;

SELECT * FROM employees e
WHERE EXISTS (SELECT 1 FROM orders o WHERE o.employee_id = e.employee_id);

SELECT * FROM employees
WHERE salary > ALL (SELECT salary FROM employees WHERE department = 'HR');

SELECT * FROM employees
WHERE salary > ANY (SELECT salary FROM employees WHERE department = 'Sales');

SELECT department, avg_salary
FROM (
    SELECT department, AVG(salary) AS avg_salary
    FROM employees
    GROUP BY department
) AS dept_averages
WHERE avg_salary > 50000;

SELECT * FROM products p
WHERE NOT EXISTS (
    SELECT 1 FROM order_items oi WHERE oi.product_id = p.product_id
);

SELECT employee_name, department, salary,
    (SELECT COUNT(*) FROM employees e2 WHERE e2.department = e1.department) AS dept_count
FROM employees e1;
