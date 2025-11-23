 E-Commerce SQL Analysis Project Using MySQL Workbench 8.0 CE

This project analyzes a fictional e-commerce dataset using SQL to uncover insights about sales trends, customer behavior, and product performance.  
It demonstrates practical SQL skills used daily in Data Analyst roles.

 Project Structure

 Database Schema

customers
| Column        | Type          |
|---------------|---------------|
| customer_id   | INT (PK)      |
| customer_name | VARCHAR(100)  |
| region        | VARCHAR(50)   |
| segment       | VARCHAR(50)   |

orders
| Column           | Type          |
|------------------|---------------|
| order_id         | INT (PK)      |
| customer_id      | INT (FK)      |
| order_date       | DATE          |
| product_category | VARCHAR(50)   |
| sales            | DECIMAL(10,2) |
| profit           | DECIMAL(10,2) |
| quantity         | INT           |


 SQL Analysis Queries & Insights

Total Sales & Profit

```sql
SELECT SUM(sales) AS total_sales,
       SUM(profit) AS total_profit
FROM orders;

Insight:
Total Sales = 12,000
Total Profit = 1,169

Sales by Region

SELECT c.region,
       SUM(o.sales) AS total_sales
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
GROUP BY c.region
ORDER BY total_sales DESC;

Insight:
Central and East are the highest performing regions.

Sales & Profit by category

SELECT product_category,
       SUM(sales) AS total_sales,
       SUM(profit) AS total_profit
FROM orders
GROUP BY product_category
ORDER BY total_sales DESC;

Insight:
Technology is the top revenue & Profit category.

Top 5 Customer by Revenue

SELECT c.customer_name,
       SUM(o.sales) AS total_spent
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
GROUP BY c.customer_name
ORDER BY total_spent DESC
LIMIT 5;

Insight:
Ravi Patel and Maria Silva are top-value customers.

Monthly Sales Trend

SELECT DATE_FORMAT(order_date, '%Y-%m') AS month,
       SUM(sales) AS total_sales
FROM orders
GROUP BY month
ORDER BY month;

Insight:
Sales peak in September 2024

Segment wise Sales

SELECT c.segment,
       SUM(o.sales) AS total_sales
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
GROUP BY c.segment
ORDER BY total_sales DESC;

Insight:
The consumer segment generates the highest revenue.

Customer Ranking

SELECT c.customer_name,
       SUM(o.sales) AS total_sales,
       RANK() OVER (ORDER BY SUM(o.sales) DESC) AS sales_rank
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
GROUP BY c.customer_name
ORDER BY sales_rank;

Insight:
Window Function allow ranking without filtering or grouping limit

Summary of Insights
1. Technology generates the highest sales & profit.
2. Central and East regions drive most revenue.
3. Consumer segment is the strongest customer type.
4. Revenue steadily increases throughout 2024 with a peak in September.
5. Several high-value customers contribute heavily to total revenue.


Tools Used
1. MySQL Workbench 8.0 CE
2. SQL (joins, aggregations, window functions, date formatting)
3. Data modeling & relational database design


Author

Omar Abdul
Aspiring Data Analyst | SQL | Excel | Power BI