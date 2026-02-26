SELECT 
    employee_id,
    first_name,
    department,
    salary,
    NTH_VALUE(first_name, 2) OVER (ORDER BY salary DESC) AS second_highest_paid
FROM employees;

SELECT 
    employee_id,
    first_name,
    department,
    salary,
    NTH_VALUE(salary, 3) OVER (
        PARTITION BY department 
        ORDER BY salary DESC 
        ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
    ) AS third_highest_dept_salary
FROM employees;
