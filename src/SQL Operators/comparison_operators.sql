SELECT * FROM employees WHERE department = 'Sales';

SELECT * FROM employees WHERE department <> 'HR';
SELECT * FROM employees WHERE department != 'HR';

SELECT * FROM employees WHERE salary > 50000;

SELECT * FROM employees WHERE age < 30;

SELECT * FROM employees WHERE experience >= 5;

SELECT * FROM employees WHERE salary <= 100000;

SELECT * FROM employees WHERE salary BETWEEN 40000 AND 60000;

SELECT * FROM employees WHERE department IN ('Sales', 'Marketing', 'IT');

SELECT * FROM employees WHERE name LIKE 'J%';
SELECT * FROM employees WHERE name LIKE '%son';
SELECT * FROM employees WHERE name LIKE '%an%';

SELECT * FROM employees WHERE manager_id IS NULL;

SELECT * FROM employees WHERE email IS NOT NULL;
