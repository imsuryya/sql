CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100),
    location VARCHAR(100)
);

CREATE TABLE employees (
    emp_id INT,
    emp_name VARCHAR(100),
    department_id INT,
    PRIMARY KEY (emp_id)
);

CREATE TABLE orders (
    order_id INT,
    customer_id INT,
    order_date DATE,
    CONSTRAINT pk_orders PRIMARY KEY (order_id, customer_id)
);
