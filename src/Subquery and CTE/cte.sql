WITH EmployeeCTE AS (
    SELECT employee_id, first_name, last_name, salary, department
    FROM employees
    WHERE is_active = 1
)
SELECT * FROM EmployeeCTE WHERE salary > 50000;

WITH DepartmentStats AS (
    SELECT department, 
           COUNT(*) AS employee_count, 
           AVG(salary) AS avg_salary,
           MAX(salary) AS max_salary
    FROM employees
    GROUP BY department
)
SELECT * FROM DepartmentStats WHERE employee_count > 5;

WITH SalesCTE AS (
    SELECT * FROM employees WHERE department = 'Sales'
),
MarketingCTE AS (
    SELECT * FROM employees WHERE department = 'Marketing'
)
SELECT * FROM SalesCTE
UNION ALL
SELECT * FROM MarketingCTE;

WITH RECURSIVE EmployeeHierarchy AS (
    SELECT employee_id, first_name, manager_id, 1 AS level
    FROM employees
    WHERE manager_id IS NULL
    
    UNION ALL
    
    SELECT e.employee_id, e.first_name, e.manager_id, eh.level + 1
    FROM employees e
    INNER JOIN EmployeeHierarchy eh ON e.manager_id = eh.employee_id
)
SELECT * FROM EmployeeHierarchy;

WITH SalaryRanks AS (
    SELECT employee_id, first_name, salary, department,
           RANK() OVER (PARTITION BY department ORDER BY salary DESC) AS salary_rank
    FROM employees
)
SELECT * FROM SalaryRanks WHERE salary_rank <= 3;

WITH MonthlySales AS (
    SELECT 
        MONTH(order_date) AS month,
        SUM(total_amount) AS total_sales
    FROM orders
    WHERE YEAR(order_date) = 2025
    GROUP BY MONTH(order_date)
),
AverageSales AS (
    SELECT AVG(total_sales) AS avg_monthly_sales FROM MonthlySales
)
SELECT m.month, m.total_sales, a.avg_monthly_sales
FROM MonthlySales m, AverageSales a
WHERE m.total_sales > a.avg_monthly_sales;

WITH Numbers AS (
    SELECT 1 AS n
    UNION ALL
    SELECT n + 1 FROM Numbers WHERE n < 10
)
SELECT n FROM Numbers;
