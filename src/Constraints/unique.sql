CREATE TABLE users (
    user_id INT PRIMARY KEY,
    username VARCHAR(50) UNIQUE,
    email VARCHAR(100)
);

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_code VARCHAR(20),
    email VARCHAR(100),
    UNIQUE (emp_code)
);

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    sku VARCHAR(50),
    barcode VARCHAR(50),
    product_name VARCHAR(100),
    CONSTRAINT uq_product_codes UNIQUE (sku, barcode)
);
