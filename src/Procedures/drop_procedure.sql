DROP PROCEDURE GetAllEmployees;

DROP PROCEDURE GetEmployeeById;

DROP PROCEDURE IF EXISTS InsertEmployee;

DROP PROCEDURE IF EXISTS GetEmployeesByDepartment;

DROP PROCEDURE IF EXISTS UpdateEmployeeSalary;

IF EXISTS (SELECT * FROM sys.procedures WHERE name = 'OldProcedure')
BEGIN
    DROP PROCEDURE OldProcedure;
END;

DROP PROCEDURE schema_name.ProcedureName;
