SELECT 
    employee_id,
    first_name,
    department,
    salary,
    LAST_VALUE(first_name) OVER (
        ORDER BY salary DESC 
        ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
    ) AS lowest_paid_employee
FROM employees;

SELECT 
    employee_id,
    first_name,
    department,
    salary,
    LAST_VALUE(salary) OVER (
        PARTITION BY department 
        ORDER BY salary DESC 
        ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
    ) AS lowest_dept_salary
FROM employees;
