-- Aggregation Queries Practice
-- Demonstrates SQL aggregate functions and grouping operations


-- Count total number of customers
SELECT COUNT(*) AS total_customers
FROM customers;


-- Calculate total sales amount
SELECT SUM(amount) AS total_sales
FROM orders;


-- Find the average order amount
SELECT AVG(amount) AS average_order_value
FROM orders;


-- Find the highest order amount
SELECT MAX(amount) AS highest_order
FROM orders;


-- Find the lowest order amount
SELECT MIN(amount) AS lowest_order
FROM orders;


-- Total sales per customer
SELECT customer_id, SUM(amount) AS total_spent
FROM orders
GROUP BY customer_id;


-- Average order value per customer
SELECT customer_id, AVG(amount) AS average_order_value
FROM orders
GROUP BY customer_id;


-- Number of orders per customer
SELECT customer_id, COUNT(order_id) AS total_orders
FROM orders
GROUP BY customer_id;


-- Show customers who spent more than 1000
SELECT customer_id, SUM(amount) AS total_spent
FROM orders
GROUP BY customer_id
HAVING SUM(amount) > 1000;


-- Count orders by order status
SELECT status, COUNT(*) AS total_orders
FROM orders
GROUP BY status;
