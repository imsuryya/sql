SELECT 
    employee_id,
    first_name,
    department,
    salary,
    LEAD(salary) OVER (ORDER BY employee_id) AS next_salary
FROM employees;

SELECT 
    employee_id,
    first_name,
    department,
    salary,
    LEAD(salary, 1, 0) OVER (ORDER BY employee_id) AS next_salary
FROM employees;

SELECT 
    employee_id,
    first_name,
    department,
    salary,
    LEAD(salary) OVER (PARTITION BY department ORDER BY employee_id) AS next_dept_salary
FROM employees;
