-- ================================
-- DATABASE SCHEMA: ecommerce_db
-- ================================

-- Drop existing tables if they exist (safe reset)
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS orders;

-- Create customers table
CREATE TABLE customers (
    customer_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    age INTEGER,
    city TEXT,
    signup_date TEXT
);

-- Create orders table
CREATE TABLE orders (
    order_id INTEGER PRIMARY KEY,
    customer_id INTEGER,
    order_date TEXT,
    product TEXT,
    category TEXT,
    price REAL,
    quantity INTEGER,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- END SCHEMA
