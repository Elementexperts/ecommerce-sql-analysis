-- Insert customer data
INSERT INTO customers (customer_id, name, age, city, signup_date) VALUES
(1,'John Smith',32,'New York','2023-01-12'),
(2,'Emily Johnson',28,'Los Angeles','2023-02-05'),
(3,'Michael Brown',41,'Chicago','2023-03-11'),
(4,'Sarah Davis',35,'Houston','2023-03-29'),
(5,'David Wilson',29,'New York','2023-04-14'),
(6,'Linda Taylor',47,'Miami','2023-05-02'),
(7,'Chris Miller',38,'Chicago','2023-05-17'),
(8,'Ana Lopez',26,'Seattle','2023-05-21'),
(9,'Ethan White',30,'Houston','2023-06-09'),
(10,'Maria Garcia',33,'Miami','2023-06-18');

-- Insert order data
INSERT INTO orders (order_id, customer_id, order_date, product, category, price, quantity) VALUES
(101,1,'2023-06-10','Laptop','Electronics',850,1),
(102,2,'2023-06-11','Phone','Electronics',500,2),
(103,3,'2023-06-15','Sneakers','Fashion',120,1),
(104,1,'2023-06-17','Headphones','Electronics',80,2),
(105,4,'2023-06-18','T-shirt','Fashion',25,3),
(106,5,'2023-06-18','Backpack','Accessories',60,1),
(107,3,'2023-06-20','Keyboard','Electronics',45,1),
(108,6,'2023-06-21','Phone Case','Accessories',15,2),
(109,7,'2023-06-23','Sneakers','Fashion',115,1),
(110,8,'2023-06-24','Watch','Accessories',200,1),
(111,9,'2023-06-25','Laptop','Electronics',900,1),
(112,10,'2023-06-26','Tablet','Electronics',400,1),
(113,2,'2023-06-28','Charger','Electronics',25,2),
(114,5,'2023-06-29','Sandals','Fashion',30,1),
(115,3,'2023-06-30','Phone','Electronics',499,1);
