SELECT 
    employee_id,
    first_name,
    department,
    salary,
    LAG(salary) OVER (ORDER BY employee_id) AS prev_salary
FROM employees;

SELECT 
    employee_id,
    first_name,
    department,
    salary,
    LAG(salary, 1, 0) OVER (ORDER BY employee_id) AS prev_salary
FROM employees;

SELECT 
    employee_id,
    first_name,
    department,
    salary,
    LAG(salary) OVER (PARTITION BY department ORDER BY employee_id) AS prev_dept_salary
FROM employees;
