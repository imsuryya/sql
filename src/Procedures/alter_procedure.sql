ALTER PROCEDURE GetAllEmployees
AS
BEGIN
    SELECT employee_id, first_name, last_name, email, salary, department 
    FROM employees
    ORDER BY last_name;
END;

ALTER PROCEDURE GetEmployeeById
    @EmployeeId INT,
    @IncludeInactive BIT = 0
AS
BEGIN
    SELECT * FROM employees 
    WHERE employee_id = @EmployeeId 
    AND (is_active = 1 OR @IncludeInactive = 1);
END;

ALTER PROCEDURE InsertEmployee
    @FirstName VARCHAR(50),
    @LastName VARCHAR(50),
    @Email VARCHAR(100),
    @Salary DECIMAL(10,2),
    @Department VARCHAR(50) = 'General'
AS
BEGIN
    INSERT INTO employees (first_name, last_name, email, salary, department, created_date)
    VALUES (@FirstName, @LastName, @Email, @Salary, @Department, GETDATE());
END;

ALTER PROCEDURE GetEmployeesByDepartment
    @DepartmentName VARCHAR(50),
    @MinSalary DECIMAL(10,2) = 0,
    @MaxSalary DECIMAL(10,2) = 999999
AS
BEGIN
    SELECT * FROM employees 
    WHERE department = @DepartmentName 
    AND salary BETWEEN @MinSalary AND @MaxSalary
    ORDER BY salary DESC;
END;
