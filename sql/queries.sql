-- 1. Total Revenue
SELECT SUM(price * quantity) AS total_revenue FROM orders;

-- 2. Revenue by Category
SELECT category, SUM(price * quantity) AS revenue
FROM orders
GROUP BY category
ORDER BY revenue DESC;

-- 3. Top Customers
SELECT c.name, SUM(o.price * o.quantity) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.name
ORDER BY total_spent DESC;
