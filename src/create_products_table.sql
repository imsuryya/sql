CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50),
    price DECIMAL(10, 2) NOT NULL,
    stock_quantity INT DEFAULT 0,
    supplier VARCHAR(100),
    created_date DATE
);

INSERT INTO products (product_id, product_name, category, price, stock_quantity, supplier, created_date)
VALUES 
    (101, 'Laptop Pro 15', 'Electronics', 1299.99, 45, 'TechSupply Inc', '2024-01-10'),
    (102, 'Wireless Mouse', 'Electronics', 29.99, 150, 'TechSupply Inc', '2024-01-15'),
    (103, 'Office Chair', 'Furniture', 249.99, 30, 'FurniWorld', '2024-02-01');

SELECT * FROM products;

SELECT product_name, price, stock_quantity FROM products;

SELECT * FROM products WHERE category = 'Electronics';

SELECT * FROM products WHERE price > 100 AND stock_quantity > 0;

SELECT * FROM products ORDER BY price DESC;

SELECT category, COUNT(*) AS product_count, AVG(price) AS avg_price
FROM products
GROUP BY category;

SELECT category, SUM(stock_quantity) AS total_stock
FROM products
GROUP BY category
HAVING SUM(stock_quantity) > 50;

UPDATE products SET price = 1199.99 WHERE product_id = 101;

UPDATE products SET stock_quantity = stock_quantity + 10 WHERE category = 'Electronics';

UPDATE products SET price = price * 0.9, stock_quantity = 100 WHERE product_id = 103;

DELETE FROM products WHERE product_id = 103;

DELETE FROM products WHERE stock_quantity = 0;

INSERT INTO products VALUES (104, 'USB-C Cable', 'Electronics', 15.99, 200, 'CableCo', '2024-03-01');

INSERT INTO products (product_id, product_name, category, price, stock_quantity, supplier, created_date)
VALUES 
    (105, 'Standing Desk', 'Furniture', 599.99, 15, 'FurniWorld', '2024-03-10'),
    (106, 'Monitor 27 inch', 'Electronics', 399.99, 25, 'TechSupply Inc', '2024-03-15');

SELECT product_name, supplier FROM products WHERE supplier = 'TechSupply Inc';

SELECT DISTINCT category FROM products;

SELECT product_name, price FROM products WHERE price BETWEEN 50 AND 500;

SELECT * FROM products WHERE product_name LIKE '%Pro%';

SELECT COUNT(*) AS total_products FROM products;

SELECT MIN(price) AS min_price, MAX(price) AS max_price FROM products;

UPDATE products SET supplier = 'NewSupplier Ltd' WHERE supplier = 'CableCo';

UPDATE products SET stock_quantity = 0 WHERE created_date < '2024-02-01';

DELETE FROM products WHERE category = 'Furniture' AND stock_quantity < 10;

INSERT INTO products (product_id, product_name, category, price, stock_quantity, supplier, created_date)
VALUES (107, 'Keyboard Mechanical', 'Electronics', 89.99, 75, 'TechSupply Inc', '2024-04-01');

SELECT category, MAX(price) AS highest_price FROM products GROUP BY category ORDER BY highest_price DESC;

SELECT * FROM products WHERE stock_quantity > (SELECT AVG(stock_quantity) FROM products);
