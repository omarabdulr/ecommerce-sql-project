CREATE DATABASE ecommerce_sql_project;
USE ecommerce_sql_project;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    region VARCHAR(50),
    segment VARCHAR(50)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    product_category VARCHAR(50),
    sales DECIMAL(10,2),
    profit DECIMAL(10,2),
    quantity INT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

INSERT INTO customers (customer_id, customer_name, region, segment) VALUES
(1, 'John Doe', 'West', 'Consumer'),
(2, 'Aisha Khan', 'East', 'Corporate'),
(3, 'Ravi Patel', 'Central', 'Home Office'),
(4, 'Maria Silva', 'South', 'Consumer'),
(5, 'Chen Wu', 'West', 'Corporate'),
(6, 'Emily Clark', 'East', 'Consumer'),
(7, 'Hassan Ali', 'Central', 'Corporate'),
(8, 'Priya Sharma', 'South', 'Home Office'),
(9, 'David Miller', 'West', 'Consumer'),
(10, 'Sofia Lopez', 'East', 'Consumer');

INSERT INTO orders (order_id, customer_id, order_date, product_category, sales, profit, quantity) VALUES
(101, 1, '2024-01-05', 'Technology', 800.00, 120.00, 2),
(102, 1, '2024-02-11', 'Furniture', 250.00, -30.00, 1),
(103, 2, '2024-01-20', 'Office Supplies', 120.00, 10.00, 3),
(104, 3, '2024-03-14', 'Technology', 500.00, 60.00, 1),
(105, 4, '2024-02-22', 'Furniture', 750.00, 80.00, 2),
(106, 5, '2024-03-10', 'Technology', 600.00, 90.00, 1),
(107, 2, '2024-04-02', 'Office Supplies', 200.00, 20.00, 4),
(108, 3, '2024-04-11', 'Technology', 1000.00, 200.00, 3),
(109, 4, '2024-04-18', 'Furniture', 300.00, -10.00, 1),
(110, 5, '2024-05-05', 'Office Supplies', 80.00, 5.00, 2),
(111, 6, '2024-05-12', 'Technology', 950.00, 150.00, 2),
(112, 6, '2024-05-25', 'Office Supplies', 160.00, 12.00, 3),
(113, 7, '2024-06-03', 'Furniture', 420.00, 15.00, 1),
(114, 7, '2024-06-15', 'Technology', 700.00, 110.00, 2),
(115, 8, '2024-06-21', 'Office Supplies', 210.00, 18.00, 4),
(116, 8, '2024-07-02', 'Furniture', 680.00, 50.00, 2),
(117, 9, '2024-07-09', 'Technology', 540.00, 95.00, 1),
(118, 9, '2024-07-19', 'Furniture', 260.00, -25.00, 1),
(119, 10, '2024-08-01', 'Office Supplies', 190.00, 16.00, 3),
(120, 10, '2024-08-11', 'Technology', 880.00, 140.00, 2),
(121, 1, '2024-08-20', 'Office Supplies', 130.00, 9.00, 2),
(122, 2, '2024-09-05', 'Technology', 620.00, 105.00, 1),
(123, 3, '2024-09-14', 'Furniture', 520.00, 40.00, 2),
(124, 4, '2024-09-25', 'Technology', 910.00, 170.00, 2),
(125, 5, '2024-10-03', 'Office Supplies', 230.00, 19.00, 4);