SELECT 
    employee_id,
    first_name,
    department,
    salary,
    PERCENT_RANK() OVER (ORDER BY salary) AS percent_rank_val
FROM employees;

SELECT 
    employee_id,
    first_name,
    department,
    salary,
    CUME_DIST() OVER (ORDER BY salary) AS cumulative_dist
FROM employees;

SELECT 
    employee_id,
    first_name,
    department,
    salary,
    PERCENT_RANK() OVER (PARTITION BY department ORDER BY salary) AS dept_percent_rank,
    CUME_DIST() OVER (PARTITION BY department ORDER BY salary) AS dept_cume_dist
FROM employees;
