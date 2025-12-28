# 📊 E-commerce Sales Analysis (SQL + Excel Dashboard)

![SQL](https://img.shields.io/badge/SQL-Analysis-blue)
![Excel](https://img.shields.io/badge/Excel-Dashboard-green)
![Data_Analytics](https://img.shields.io/badge/Data-Analytics-orange)
![Portfolio_Project](https://img.shields.io/badge/Portfolio-Project-yellow)
![Status](https://img.shields.io/badge/Status-Completed-success)

---

## 📌 Project Overview

This project analyzes e-commerce sales data using **SQL (SQLite + DBeaver)** to extract insights about revenue, customer behavior and product performance.  
It demonstrates data querying, insight generation, dashboard creation and reporting — developed for my **Data Analytics portfolio and MS application preparation**.

---

## 🔍 Project Goals

- Build & query a relational database using SQL  
- Analyze customer spending behavior  
- Identify revenue-driving product categories  
- Rank top customers by total spending  
- Develop Excel dashboard for visual insights  
- Create a professional PDF analysis report  

---

## 🧠 Key Insights

| Metric | Result |
|---|---|
| **Total Revenue** | **$4,534** |
| **Top Spender** | **Emily Johnson ($1,050)** |
| **Most Active Customer** | **Michael Brown (3 orders)** |
| **Highest Revenue Category** | **Electronics** |
| **Analysis Period** | June 2023 |

> **Electronics leads revenue due to high-ticket items (Laptop, Tablet, Phone).**  
> Customer engagement is strong with repeat buyers — promising for retention strategy.

---

## 🗂 Dataset Overview

**Customers Table**

| Column | Description |
|---|---|
| customer_id | Unique ID |
| name | Customer Name |
| age | Age of Customer |
| city | Location |
| signup_date | Registration Date |

**Orders Table**

| Column | Description |
|---|---|
| order_id | Order ID |
| customer_id | Linked to customer |
| order_date | Purchase Date |
| product | Product Name |
| category | Product Category |
| price | Product Price |
| quantity | Units Purchased |

---

## 📊 Dashboard Preview

Excel dashboard created based on analysis results:

<img src="images/dashboard_converted.png" width="650"/>

---

## 📄 Full Report (Download PDF)

🔗 **[Click here to open report](reports/Nomoz_Ecommerce_Analytics_Report.pdf)**  

Includes:
- SQL methodology
- Revenue analysis
- Visualization dashboard
- Findings & business recommendations

---

## 📌 SQL Queries Used

```sql
-- 1. Total Revenue
SELECT SUM(price * quantity) AS total_revenue
FROM orders;

-- 2. Revenue by Category
SELECT category, SUM(price * quantity) AS revenue
FROM orders
GROUP BY category
ORDER BY revenue DESC;

-- 3. Top Customers by Spending
SELECT c.name, SUM(o.price * o.quantity) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.name
ORDER BY total_spent DESC;

-- 4. Most Active Customers
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
