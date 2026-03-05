-- WINDOW FUNCTION EXAMPLES


-- ROW_NUMBER() example
SELECT order_id,
       customer_id,
       amount,
       ROW_NUMBER() OVER (ORDER BY amount DESC) AS row_number
FROM orders;


-- RANK() example
SELECT order_id,
       customer_id,
       amount,
       RANK() OVER (ORDER BY amount DESC) AS order_rank
FROM orders;


-- DENSE_RANK() example
SELECT order_id,
       customer_id,
       amount,
       DENSE_RANK() OVER (ORDER BY amount DESC) AS dense_rank
FROM orders;


-- PARTITION BY example
SELECT order_id,
       customer_id,
       amount,
       ROW_NUMBER() OVER (
           PARTITION BY customer_id
           ORDER BY amount DESC
       ) AS order_number
FROM orders;


-- Running total example
SELECT order_id,
       amount,
       SUM(amount) OVER (ORDER BY order_id) AS running_total
FROM orders;
