-- ================================
-- ANALYTICAL SQL QUERIES
-- ================================
-- 1. Total Revenue
SELECT SUM(price * quantity) AS total_revenue
FROM orders;

-- 2. Revenue by Category
SELECT category, SUM(price * quantity) AS revenue
FROM orders
GROUP BY category
ORDER BY revenue DESC;

-- 3. Top Customers by Total Spending
SELECT c.name, SUM(o.price * o.quantity) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.name
ORDER BY total_spent DESC;

-- 4. Most Active Customers (Order Count)
SELECT c.name, COUNT(o.order_id) AS total_orders
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.name
ORDER BY total_orders DESC;

-- 5. Monthly Revenue Trend
SELECT strftime('%Y-%m', order_date) AS month, 
       SUM(price * quantity) AS revenue
FROM orders
GROUP BY month
ORDER BY month ASC;

-- END ANALYSIS
