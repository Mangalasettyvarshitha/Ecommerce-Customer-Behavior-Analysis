CREATE DATABASE ecommerce_sales;
use ecommerce_sales;


CREATE TABLE ecommerce (
    order_id INT,
    customer_id INT,
    customer_name VARCHAR(100),
    age INT,
    gender VARCHAR(10),
    city VARCHAR(50),
    product_category VARCHAR(50),
    product_name VARCHAR(100),
    order_date DATE,
    quantity INT,
    unit_price DECIMAL(10,2),
    payment_method VARCHAR(30),
    order_status VARCHAR(30),
    rating DECIMAL(3,1)
);


INSERT INTO ecommerce VALUES
(1001, 501, 'Ravi', 25, 'Male', 'Hyderabad', 'Electronics', 'Wireless Mouse', '2026-01-05', 2, 750.00, 'UPI', 'Completed', 4.5),
(1002, 502, 'Priya', 28, 'Female', 'Chennai', 'Clothing', 'Kurti', '2026-01-07', 1, 1200.00, 'Credit Card', 'Completed', 4.0),
(1003, 503, 'Amit', 32, 'Male', 'Bangalore', 'Electronics', 'Headphones', '2026-01-10', 1, 2500.00, 'UPI', 'Completed', 4.5),
(1004, 504, 'Neha', 24, 'Female', 'Hyderabad', 'Beauty', 'Face Cream', '2026-01-12', 3, 450.00, 'Cash', 'Completed', 4.0),
(1005, 505, 'Kiran', 30, 'Male', 'Mumbai', 'Home', 'Bedsheet', '2026-01-15', 2, 900.00, 'Debit Card', 'Cancelled', NULL),

(1006, 501, 'Ravi', 25, 'Male', 'Hyderabad', 'Electronics', 'Keyboard', '2026-02-02', 1, 1500.00, 'UPI', 'Completed', 4.2),
(1007, 506, 'Sneha', 27, 'Female', 'Delhi', 'Clothing', 'Jeans', '2026-02-05', 2, 1800.00, 'UPI', 'Completed', 4.3),
(1008, 507, 'Rahul', 35, 'Male', 'Chennai', 'Home', 'Table Lamp', '2026-02-10', 1, 1100.00, 'Credit Card', 'Completed', 4.1),
(1009, 502, 'Priya', 28, 'Female', 'Chennai', 'Beauty', 'Shampoo', '2026-02-15', 2, 600.00, 'UPI', 'Completed', 4.4),
(1010, 508, 'Anjali', 29, 'Female', 'Bangalore', 'Electronics', 'Smart Watch', '2026-02-20', 1, 3500.00, 'Debit Card', 'Completed', 4.6),

(1011, 509, 'Suresh', 40, 'Male', 'Mumbai', 'Home', 'Office Chair', '2026-03-03', 1, 5500.00, 'Credit Card', 'Completed', 4.7),
(1012, 510, 'Lakshmi', 31, 'Female', 'Hyderabad', 'Clothing', 'Saree', '2026-03-06', 2, 2200.00, 'UPI', 'Completed', 4.5),
(1013, 503, 'Amit', 32, 'Male', 'Bangalore', 'Electronics', 'Power Bank', '2026-03-10', 2, 1000.00, 'UPI', 'Completed', 4.2),
(1014, 511, 'Pooja', 26, 'Female', 'Delhi', 'Beauty', 'Lipstick', '2026-03-14', 3, 500.00, 'Cash', 'Completed', 4.1),
(1015, 512, 'Arjun', 34, 'Male', 'Chennai', 'Electronics', 'Bluetooth Speaker', '2026-03-18', 1, 2800.00, 'Debit Card', 'Cancelled', NULL),

(1016, 506, 'Sneha', 27, 'Female', 'Delhi', 'Clothing', 'T-Shirt', '2026-04-02', 3, 700.00, 'UPI', 'Completed', 4.0),
(1017, 507, 'Rahul', 35, 'Male', 'Chennai', 'Home', 'Wall Clock', '2026-04-07', 2, 850.00, 'Credit Card', 'Completed', 4.3),
(1018, 508, 'Anjali', 29, 'Female', 'Bangalore', 'Beauty', 'Perfume', '2026-04-11', 1, 1800.00, 'UPI', 'Completed', 4.6),
(1019, 509, 'Suresh', 40, 'Male', 'Mumbai', 'Electronics', 'Laptop Bag', '2026-04-15', 2, 1200.00, 'Debit Card', 'Completed', 4.4),
(1020, 513, 'Meena', 23, 'Female', 'Hyderabad', 'Clothing', 'Top', '2026-04-20', 2, 900.00, 'Cash', 'Completed', 4.0),

(1021, 501, 'Ravi', 25, 'Male', 'Hyderabad', 'Electronics', 'USB Cable', '2026-05-03', 4, 300.00, 'UPI', 'Completed', 4.1),
(1022, 502, 'Priya', 28, 'Female', 'Chennai', 'Home', 'Cushion Set', '2026-05-08', 2, 750.00, 'Credit Card', 'Completed', 4.2),
(1023, 510, 'Lakshmi', 31, 'Female', 'Hyderabad', 'Beauty', 'Face Wash', '2026-05-12', 3, 400.00, 'UPI', 'Completed', 4.5),
(1024, 514, 'Vikram', 38, 'Male', 'Bangalore', 'Electronics', 'Monitor', '2026-05-17', 1, 12500.00, 'Credit Card', 'Completed', 4.8),
(1025, 515, 'Divya', 22, 'Female', 'Mumbai', 'Clothing', 'Dress', '2026-05-22', 1, 2500.00, 'UPI', 'Cancelled', NULL),

(1026, 503, 'Amit', 32, 'Male', 'Bangalore', 'Electronics', 'Wireless Mouse', '2026-06-02', 2, 750.00, 'UPI', 'Completed', 4.3),
(1027, 506, 'Sneha', 27, 'Female', 'Delhi', 'Beauty', 'Moisturizer', '2026-06-06', 2, 650.00, 'Debit Card', 'Completed', 4.4),
(1028, 511, 'Pooja', 26, 'Female', 'Delhi', 'Clothing', 'Handbag', '2026-06-10', 1, 1800.00, 'Credit Card', 'Completed', 4.5),
(1029, 512, 'Arjun', 34, 'Male', 'Chennai', 'Home', 'Bedsheet', '2026-06-15', 2, 900.00, 'UPI', 'Completed', 4.2),
(1030, 508, 'Anjali', 29, 'Female', 'Bangalore', 'Electronics', 'Smart Watch', '2026-06-20', 1, 3500.00, 'UPI', 'Completed', 4.7);


SELECT * FROM ecommerce;

SELECT COUNT(order_id) AS total_orders
FROM ecommerce;

SELECT SUM(quantity * unit_price) AS total_revenue
FROM ecommerce
WHERE order_status = 'Completed';

SELECT AVG(quantity * unit_price) AS average_order_value
FROM ecommerce
WHERE order_status = 'Completed';

SELECT AVG(quantity * unit_price) AS average_order_value
FROM ecommerce
WHERE order_status = 'Completed';

SELECT product_name,
       SUM(quantity) AS total_quantity
FROM ecommerce
WHERE order_status = 'Completed'
GROUP BY product_name
ORDER BY total_quantity DESC;

SELECT product_category,
       SUM(quantity * unit_price) AS revenue
FROM ecommerce
WHERE order_status = 'Completed'
GROUP BY product_category
ORDER BY revenue DESC;

SELECT customer_id,
       customer_name,
       SUM(quantity * unit_price) AS total_spending
FROM ecommerce
WHERE order_status = 'Completed'
GROUP BY customer_id, customer_name
ORDER BY total_spending DESC;

SELECT YEAR(order_date) AS year,
       MONTH(order_date) AS month,
       SUM(quantity * unit_price) AS monthly_sales
FROM ecommerce
WHERE order_status = 'Completed'
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY year, month;

SELECT gender,
       SUM(quantity * unit_price) AS total_sales
FROM ecommerce
WHERE order_status = 'Completed'
GROUP BY gender
ORDER BY total_sales DESC;

SELECT customer_id,
       customer_name,
       COUNT(order_id) AS number_of_orders
FROM ecommerce
GROUP BY customer_id, customer_name
HAVING COUNT(order_id) > 1
ORDER BY number_of_orders DESC;

SELECT COUNT(order_id) AS cancelled_orders
FROM ecommerce
WHERE order_status = 'Cancelled';

SELECT payment_method,
       COUNT(order_id) AS number_of_orders
FROM ecommerce
GROUP BY payment_method
ORDER BY number_of_orders DESC;

SELECT AVG(rating) AS average_rating
FROM ecommerce
WHERE rating IS NOT NULL;

SELECT product_name,
       AVG(rating) AS average_rating
FROM ecommerce
WHERE rating IS NOT NULL
GROUP BY product_name
ORDER BY average_rating DESC;

SELECT city,
       SUM(quantity * unit_price) AS total_revenue
FROM ecommerce
WHERE order_status = 'Completed'
GROUP BY city
ORDER BY total_revenue DESC;
