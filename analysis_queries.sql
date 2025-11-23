-- Total Sales & Profit
SELECT SUM(sales) AS total_sales, SUM(profit) AS total_profit FROM orders;

-- Sales by Region
SELECT c.region, SUM(o.sales) AS total_sales
FROM orders o JOIN customers c ON o.customer_id = c.customer_id
GROUP BY c.region ORDER BY total_sales DESC;

-- Sales by Category
SELECT product_category, SUM(sales) AS total_sales, SUM(profit) AS total_profit
FROM orders GROUP BY product_category ORDER BY total_sales DESC;

-- Top 5 Customers
SELECT c.customer_name, SUM(o.sales) AS total_spent
FROM orders o JOIN customers c ON o.customer_id = c.customer_id
GROUP BY c.customer_name ORDER BY total_spent DESC LIMIT 5;

-- Monthly Sales Trend
SELECT DATE_FORMAT(order_date, '%Y-%m') AS month, SUM(sales) AS total_sales
FROM orders GROUP BY month ORDER BY month;

-- Segment-wise Sales
SELECT c.segment, SUM(o.sales) AS total_sales
FROM orders o JOIN customers c ON o.customer_id = c.customer_id
GROUP BY c.segment ORDER BY total_sales DESC;

-- Window Function Ranking
SELECT c.customer_name, SUM(o.sales) AS total_sales,
RANK() OVER (ORDER BY SUM(o.sales) DESC) AS sales_rank
FROM orders o JOIN customers c ON o.customer_id = c.customer_id
GROUP BY c.customer_name ORDER BY sales_rank;