
-- Drop table if exists
DROP TABLE IF EXISTS Sales;

-- Create Sales table
CREATE TABLE Sales (
    sale_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    product VARCHAR(100),
    quantity INT,
    price DECIMAL(10,2),
    sale_date DATE
);

-- Insert rows
INSERT INTO Sales (sale_id, customer_name, product, quantity, price, sale_date)
VALUES (1, 'Alice', 'Laptop', 1, 80000.00, DATE '2025-06-01');

INSERT INTO Sales (sale_id, customer_name, product, quantity, price, sale_date)
VALUES (2, 'Bob', 'Smartphone', 2, 30000.00, DATE '2025-06-02');

INSERT INTO Sales (sale_id, customer_name, product, quantity, price, sale_date)
VALUES (3, 'Alice', 'Tablet', 1, 20000.00, DATE '2025-06-03');

INSERT INTO Sales (sale_id, customer_name, product, quantity, price, sale_date)
VALUES (4, 'Charlie', 'Laptop', 1, 75000.00, DATE '2025-06-04');

INSERT INTO Sales (sale_id, customer_name, product, quantity, price, sale_date)
VALUES (5, 'Bob', 'Smartwatch', 1, 10000.00, DATE '2025-06-05');

-- Aggregates
SELECT COUNT(product) FROM Sales WHERE customer_name = 'Alice';
SELECT COUNT(product) FROM Sales WHERE product = 'Laptop';
SELECT SUM(price) FROM Sales WHERE product = 'Smartwatch';
SELECT SUM(price) FROM Sales;
SELECT AVG(price) FROM Sales;
SELECT AVG(price) FROM Sales WHERE customer_name = 'Bob';
SELECT MAX(price) FROM Sales;
SELECT MIN(price) FROM Sales;
SELECT LENGTH(product) FROM Sales;
SELECT COUNT(DISTINCT product) FROM Sales;

-- GROUP BY examples
SELECT customer_name, SUM(price) FROM Sales GROUP BY customer_name;
SELECT product, COUNT(*) FROM Sales GROUP BY product;
SELECT product, SUM(quantity) FROM Sales GROUP BY product;

-- GROUP BY with HAVING
SELECT customer_name, SUM(price) AS total_spent
FROM Sales
GROUP BY customer_name
HAVING SUM(price) > 50000;
