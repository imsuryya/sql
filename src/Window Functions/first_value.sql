SELECT 
    employee_id,
    first_name,
    department,
    salary,
    FIRST_VALUE(first_name) OVER (ORDER BY salary DESC) AS highest_paid_employee
FROM employees;

SELECT 
    employee_id,
    first_name,
    department,
    salary,
    FIRST_VALUE(salary) OVER (PARTITION BY department ORDER BY salary DESC) AS highest_dept_salary
FROM employees;
