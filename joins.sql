-- SQL JOIN Practice
-- Demonstrates different types of JOIN operations


-- INNER JOIN example
SELECT orders.order_id, customers.customer_name
FROM orders
INNER JOIN customers
ON orders.customer_id = customers.customer_id;


-- LEFT JOIN example
SELECT customers.customer_name, orders.order_id
FROM customers
LEFT JOIN orders
ON customers.customer_id = orders.customer_id;


-- RIGHT JOIN example
SELECT orders.order_id, customers.customer_name
FROM orders
RIGHT JOIN customers
ON orders.customer_id = customers.customer_id;


-- FULL OUTER JOIN example
SELECT customers.customer_name, orders.order_id
FROM customers
FULL OUTER JOIN orders
ON customers.customer_id = orders.customer_id;


-- Total orders per customer
SELECT customers.customer_name, COUNT(orders.order_id) AS total_orders
FROM customers
LEFT JOIN orders
ON customers.customer_id = orders.customer_id
GROUP BY customers.customer_name;


-- Orders greater than 500 with customer name
SELECT customers.customer_name, orders.order_id, orders.amount
FROM orders
INNER JOIN customers
ON orders.customer_id = customers.customer_id
WHERE orders.amount > 500;


-- Self join example (employees and managers)
SELECT e.employee_name AS employee,
       m.employee_name AS manager
FROM employees e
LEFT JOIN employees m
ON e.manager_id = m.employee_id;
