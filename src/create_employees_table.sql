-- Create Employees Table
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    department VARCHAR(50),
    salary DECIMAL(10, 2),
    hire_date DATE
);

-- Insert sample data
INSERT INTO employees (employee_id, first_name, last_name, email, department, salary, hire_date)
VALUES 
    (1, 'John', 'Doe', 'john.doe@company.com', 'IT', 75000.00, '2022-01-15'),
    (2, 'Jane', 'Smith', 'jane.smith@company.com', 'HR', 65000.00, '2021-06-20'),
    (3, 'Michael', 'Johnson', 'michael.j@company.com', 'Finance', 80000.00, '2020-03-10');
