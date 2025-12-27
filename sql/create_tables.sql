CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    city VARCHAR(50),
    signup_date DATE
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    product VARCHAR(50),
    category VARCHAR(50),
    price DECIMAL(10,2),
    quantity INT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
