SELECT 
    employee_id,
    first_name,
    department,
    salary,
    NTILE(4) OVER (ORDER BY salary DESC) AS quartile
FROM employees;

SELECT 
    employee_id,
    first_name,
    department,
    salary,
    NTILE(3) OVER (PARTITION BY department ORDER BY salary DESC) AS salary_tier
FROM employees;
