SELECT 
    employee_id,
    first_name,
    department,
    salary,
    SUM(salary) OVER (ORDER BY employee_id) AS running_total
FROM employees;

SELECT 
    employee_id,
    first_name,
    department,
    salary,
    SUM(salary) OVER (PARTITION BY department ORDER BY employee_id) AS dept_running_total
FROM employees;

SELECT 
    employee_id,
    first_name,
    department,
    salary,
    AVG(salary) OVER (PARTITION BY department) AS dept_avg_salary
FROM employees;

SELECT 
    employee_id,
    first_name,
    department,
    salary,
    COUNT(*) OVER (PARTITION BY department) AS dept_employee_count
FROM employees;

SELECT 
    employee_id,
    first_name,
    department,
    salary,
    MIN(salary) OVER (PARTITION BY department) AS dept_min_salary,
    MAX(salary) OVER (PARTITION BY department) AS dept_max_salary
FROM employees;
