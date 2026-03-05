-- SQL Subqueries Practice
-- Demonstrates different types of subqueries


-- Find customers who placed at least one order
SELECT customer_name
FROM customers
WHERE customer_id IN (
    SELECT customer_id
    FROM orders
);


-- Find orders with amount greater than the average order value
SELECT order_id, amount
FROM orders
WHERE amount > (
    SELECT AVG(amount)
    FROM orders
);


-- Find the customer who made the most expensive order
SELECT customer_name
FROM customers
WHERE customer_id = (
    SELECT customer_id
    FROM orders
    ORDER BY amount DESC
    LIMIT 1
);


-- Find customers who have not placed any orders
SELECT customer_name
FROM customers
WHERE customer_id NOT IN (
    SELECT customer_id
    FROM orders
);


-- Find orders that belong to customers from a specific city
SELECT order_id, amount
FROM orders
WHERE customer_id IN (
    SELECT customer_id
    FROM customers
    WHERE city = 'Chicago'
);


-- Find customers whose total orders exceed 1000
SELECT customer_name
FROM customers
WHERE customer_id IN (
    SELECT customer_id
    FROM orders
    GROUP BY customer_id
    HAVING SUM(amount) > 1000
);
