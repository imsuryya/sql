CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100),
    age INT CHECK (age >= 18),
    salary DECIMAL(10,2)
);

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    price DECIMAL(10,2),
    quantity INT,
    CHECK (price > 0),
    CHECK (quantity >= 0)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    order_date DATE,
    ship_date DATE,
    status VARCHAR(20),
    CONSTRAINT chk_dates CHECK (ship_date >= order_date),
    CONSTRAINT chk_status CHECK (status IN ('pending', 'shipped', 'delivered', 'cancelled'))
);
