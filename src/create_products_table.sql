-- Create Products Table
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50),
    price DECIMAL(10, 2) NOT NULL,
    stock_quantity INT DEFAULT 0,
    supplier VARCHAR(100),
    created_date DATE
);

-- Insert sample data
INSERT INTO products (product_id, product_name, category, price, stock_quantity, supplier, created_date)
VALUES 
    (101, 'Laptop Pro 15', 'Electronics', 1299.99, 45, 'TechSupply Inc', '2024-01-10'),
    (102, 'Wireless Mouse', 'Electronics', 29.99, 150, 'TechSupply Inc', '2024-01-15'),
    (103, 'Office Chair', 'Furniture', 249.99, 30, 'FurniWorld', '2024-02-01');
