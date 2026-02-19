# SQL Learning Guide

## Prerequisites for Learning SQL

### 1. Relational Database Basics
- 1.1 Understanding the concept of relational databases
- 1.2 Knowledge of tables, rows, and columns

### 2. Database Management System (DBMS)
- 2.1 Familiarity with a database management system (e.g., MySQL, PostgreSQL, SQL Server)

### 3. Basic SQL Syntax
- 3.1 Knowledge of basic SQL syntax for writing queries

## SQL Topics

### 4. DDL (Data Definition Language)

#### 4.1 CREATE
Creating database objects (tables, indexes, etc.)
- 4.1.1 Creating tables with specified columns and data types
- 4.1.2 Adding constraints like PRIMARY KEY, FOREIGN KEY, and CHECK
- 4.1.3 Creating indexes for optimizing queries

#### 4.2 ALTER
Modifying the structure of existing database objects
- 4.2.1 Adding, modifying, or dropping columns
- 4.2.2 Renaming tables
- 4.2.3 Modifying constraints

#### 4.3 DROP
Deleting database objects
- 4.3.1 Dropping tables, indexes, or other database entities
- 4.3.2 Caution and considerations for data preservation

#### 4.4 TRUNCATE
Removing all records from a table
- 4.4.1 Deleting all rows from a table while keeping the structure intact

### 5. DML (Data Manipulation Language)

#### 5.1 INSERT
Adding new records to a table
- 5.1.1 Inserting single or multiple rows
- 5.1.2 Using the VALUES clause or SELECT statement

#### 5.2 UPDATE
Modifying existing records in a table
- 5.2.1 Updating data based on specified conditions
- 5.2.2 Using JOINs in UPDATE statements

#### 5.3 DELETE
Removing records from a table
- 5.3.1 Deleting rows based on specified conditions
- 5.3.2 Using DELETE JOIN for more complex scenarios

#### 5.4 SELECT
Retrieving data from one or more tables
- 5.4.1 Basic SELECT queries
- 5.4.2 Filtering with WHERE clause
- 5.4.3 Sorting with ORDER BY
- 5.4.4 Limiting results with LIMIT and OFFSET

### 6. DCL (Data Control Language)

#### 6.1 GRANT
Assigning privileges to database users
- 6.1.1 Granting SELECT, INSERT, UPDATE, DELETE, and other privileges
- 6.1.2 Granting privileges at different levels (database, table, column)

#### 6.2 REVOKE
Revoking privileges from database users
- 6.2.1 Removing previously granted privileges
- 6.2.2 Ensuring proper security and access control

### 7. DQL (Data Query Language)

#### 7.1 SELECT
Retrieving data from one or more tables
- 7.1.1 Aggregating data using functions like COUNT, SUM, AVG, MIN, MAX
- 7.1.2 Grouping data with GROUP BY
- 7.1.3 Filtering aggregated data with HAVING
- 7.1.4 Sorting results with ORDER BY

### 8. TCL (Transaction Control Language)

- 8.1 **COMMIT**: Saving changes made during the current transaction
- 8.2 **ROLLBACK**: Undoing changes made during the current transaction
- 8.3 **SAVEPOINT**: Setting a point within a transaction to which you can later roll back

### 9. Constraints

- 9.1 **PRIMARY KEY**: Ensuring unique and not null values in a column
- 9.2 **FOREIGN KEY**: Establishing a link between data in two tables
- 9.3 **UNIQUE**: Ensuring unique values in a column or set of columns
- 9.4 **CHECK**: Defining a condition that each row must satisfy
- 9.5 **NOT NULL**: Ensuring a column cannot have a NULL value

### 10. Joins

- 10.1 **INNER JOIN**: Combining rows from two or more tables based on a related column
- 10.2 **LEFT JOIN**: Retrieving all records from the left table and matching records from the right table
- 10.3 **RIGHT JOIN**: Retrieving all records from the right table and matching records from the left table
- 10.4 **FULL JOIN**: Retrieving all records when there is a match in either the left or right table
- 10.5 **CROSS JOIN**: Producing the Cartesian product of two tables

### 11. SQL Aggregation Function, SQL Clause

#### 11.1 Aggregation Functions
SUM, AVG, COUNT, MIN, MAX

#### 11.2 Clauses
WHERE, GROUP BY, HAVING, ORDER BY

### 12. SQL Operator

- 12.1 **Arithmetic Operators**: +, -, *, /
- 12.2 **Comparison Operators**: =, !=, <, >, <=, >=
- 12.3 **Logical Operators**: AND, OR, NOT
- 12.4 **String Concatenation Operator**: ||

### 13. Procedures

- 13.1 **CREATE PROCEDURE**: Creating stored procedures
- 13.2 **ALTER PROCEDURE**: Modifying existing stored procedures
- 13.3 **DROP PROCEDURE**: Deleting stored procedures
- 13.4 **EXECUTE**: Running a stored procedure

### 14. Subquery, CTE (Common Table Expression)

- 14.1 **Subquery**: Writing subqueries within SQL statements
- 14.2 **CTE**: Creating common table expressions for more readable queries

### 15. Views

- 15.1 **CREATE VIEW**: Creating views for simplified querying
- 15.2 **DROP VIEW**: Removing views

### 16. Window Functions

- 16.1 Explore all types of Windows Functions (e.g., RANK, DENSE_RANK, ROW_NUMBER, LEAD, LAG, etc.)
