USE ecommerce_analysis;

-- Total Sales
SELECT SUM(Sales) AS Total_Sales
FROM orders;

-- Total Profit
SELECT SUM(Profit) AS Total_Profit
FROM orders;

-- Top Selling Products
SELECT Product,
       SUM(Sales) AS Total_Sales
FROM orders
GROUP BY Product
ORDER BY Total_Sales DESC
LIMIT 5;

-- Top Profitable Products
SELECT Product,
       SUM(Profit) AS Total_Profit
FROM orders
GROUP BY Product
ORDER BY Total_Profit DESC
LIMIT 5;

-- Sales by Category
SELECT Category,
       SUM(Sales) AS Total_Sales
FROM orders
GROUP BY Category;

-- Sales by Region
SELECT Region,
       SUM(Sales) AS Total_Sales
FROM orders
GROUP BY Region;

-- Customer Order Analysis
SELECT Customer_ID,
       COUNT(Order_ID) AS Total_Orders
FROM orders
GROUP BY Customer_ID;

-- JOIN Query
SELECT c.Customer_Name,
       o.Product,
       o.Sales
FROM customers c
JOIN orders o
ON c.Customer_ID = o.Customer_ID
LIMIT 10;
