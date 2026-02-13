-- =========================================
-- SALES DATA ANALYSIS
-- =========================================


-- 1. Total Revenue
SELECT 
    SUM(price * quantity) AS total_revenue
FROM sales;


-- 2. Revenue by Region
SELECT 
    region,
    SUM(price * quantity) AS revenue
FROM sales
GROUP BY region
ORDER BY revenue DESC;


-- 3. Top 5 Best-Selling Products
SELECT 
    product_name,
    SUM(quantity) AS total_units_sold
FROM sales
GROUP BY product_name
ORDER BY total_units_sold DESC
LIMIT 5;


-- 4. Revenue by Product Category
SELECT 
    category,
    SUM(price * quantity) AS revenue
FROM sales
GROUP BY category
ORDER BY revenue DESC;


-- 5. Monthly Revenue Trend
SELECT 
    DATE_FORMAT(order_date, '%Y-%m') AS month,
    SUM(price * quantity) AS revenue
FROM sales
GROUP BY month
ORDER BY month;


-- 6. Revenue by Customer Segment
SELECT 
    customer_segment,
    SUM(price * quantity) AS revenue
FROM sales
GROUP BY customer_segment
ORDER BY revenue DESC;


-- 7. Payment Method Usage
SELECT 
    payment_method,
    COUNT(*) AS transaction_count
FROM sales
GROUP BY payment_method
ORDER BY transaction_count DESC;
