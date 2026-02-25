EXEC GetAllEmployees;

EXECUTE GetAllEmployees;

EXEC GetEmployeeById @EmployeeId = 101;

EXEC GetEmployeeById 101;

EXEC InsertEmployee 
    @FirstName = 'John', 
    @LastName = 'Doe', 
    @Email = 'john.doe@email.com', 
    @Salary = 55000.00;

EXEC GetEmployeesByDepartment 
    @DepartmentName = 'Sales', 
    @MinSalary = 40000;

DECLARE @AffectedRows INT;
EXEC UpdateEmployeeSalary 
    @EmployeeId = 101, 
    @NewSalary = 60000.00, 
    @RowsAffected = @AffectedRows OUTPUT;
SELECT @AffectedRows AS RowsUpdated;

EXEC dbo.GetAllEmployees;

DECLARE @ProcName NVARCHAR(100) = 'GetAllEmployees';
EXEC sp_executesql @ProcName;
