-- Aggregation Queries Example

-- Create Sales Table
CREATE TABLE Sales (
    sale_id INT,
    product_name VARCHAR(50),
    category VARCHAR(50),
    amount INT
);

-- Insert Sample Data
INSERT INTO Sales VALUES (1, 'Laptop', 'Electronics', 50000);
INSERT INTO Sales VALUES (2, 'Phone', 'Electronics', 30000);
INSERT INTO Sales VALUES (3, 'Table', 'Furniture', 15000);
INSERT INTO Sales VALUES (4, 'Chair', 'Furniture', 8000);
INSERT INTO Sales VALUES (5, 'Headphones', 'Electronics', 5000);

-- Count number of products in each category
SELECT category, COUNT(*) AS total_products
FROM Sales
GROUP BY category;

-- Total sales per category
SELECT category, SUM(amount) AS total_sales
FROM Sales
GROUP BY category;

-- Categories with total sales greater than 20000
SELECT category, SUM(amount) AS total_sales
FROM Sales
GROUP BY category
HAVING SUM(amount) > 20000;
