# SQL Practice

This repository contains SQL queries written as part of my database learning and practice.

The goal of this project is to practice relational database querying and demonstrate understanding of core SQL concepts.

---

## Topics Covered

- SELECT queries
- Filtering data (WHERE)
- JOIN operations
- Aggregate functions
- GROUP BY and HAVING
- Subqueries
- Window functions

---

## Example Query

```sql
SELECT customer_id, SUM(amount) AS total_spent
FROM orders
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 5;
