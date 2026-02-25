CREATE PROCEDURE GetAllEmployees
AS
BEGIN
    SELECT * FROM employees;
END;

CREATE PROCEDURE GetEmployeeById
    @EmployeeId INT
AS
BEGIN
    SELECT * FROM employees WHERE employee_id = @EmployeeId;
END;

CREATE PROCEDURE InsertEmployee
    @FirstName VARCHAR(50),
    @LastName VARCHAR(50),
    @Email VARCHAR(100),
    @Salary DECIMAL(10,2)
AS
BEGIN
    INSERT INTO employees (first_name, last_name, email, salary)
    VALUES (@FirstName, @LastName, @Email, @Salary);
END;

CREATE PROCEDURE GetEmployeesByDepartment
    @DepartmentName VARCHAR(50),
    @MinSalary DECIMAL(10,2) = 0
AS
BEGIN
    SELECT * FROM employees 
    WHERE department = @DepartmentName AND salary >= @MinSalary;
END;

CREATE PROCEDURE UpdateEmployeeSalary
    @EmployeeId INT,
    @NewSalary DECIMAL(10,2),
    @RowsAffected INT OUTPUT
AS
BEGIN
    UPDATE employees SET salary = @NewSalary WHERE employee_id = @EmployeeId;
    SET @RowsAffected = @@ROWCOUNT;
END;
