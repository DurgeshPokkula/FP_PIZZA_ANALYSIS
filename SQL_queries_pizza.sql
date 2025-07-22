
-- 1. Total Revenue by Pizza Size
SELECT pizza_size, SUM(total_price) AS total_revenue
FROM pizza_sales
GROUP BY pizza_size;

-- 2. Average Order Price
SELECT ROUND(AVG(total_price), 2) AS avg_order_value
FROM pizza_sales;

-- 3. Daily Order Count
SELECT order_date, COUNT(order_id) AS total_orders
FROM pizza_sales
GROUP BY order_date
ORDER BY order_date;

-- 4. Top 5 Best-Selling Pizzas
SELECT pizza_name, COUNT(*) AS total_orders
FROM pizza_sales
GROUP BY pizza_name
ORDER BY total_orders DESC
LIMIT 5;

-- 5. Monthly Sales Trend
SELECT MONTH(order_date) AS month, SUM(total_price) AS monthly_revenue
FROM pizza_sales
GROUP BY MONTH(order_date)
ORDER BY month;

-- 6. Revenue by Pizza Category (Veg/Non-Veg)
SELECT pizza_category, SUM(total_price) AS revenue
FROM pizza_sales
GROUP BY pizza_category;

-- 7. Revenue by Pizza Name (Full List)
SELECT pizza_name, SUM(total_price) AS total_revenue
FROM pizza_sales
GROUP BY pizza_name
ORDER BY total_revenue DESC;
