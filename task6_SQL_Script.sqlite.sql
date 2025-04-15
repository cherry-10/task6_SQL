-- TABLE
CREATE TABLE regions (
    region TEXT PRIMARY KEY,
    regional_manager TEXT
);
CREATE TABLE 'Sales' ('Order_ID' TEXT,'Customer_Name' TEXT,'Category' TEXT,'Sub_Category' TEXT,'City' TEXT,'Order_Date' TEXT,'Region' TEXT,'Sales' INTEGER,'Discount' REAL,'Profit' REAL,'State' TEXT);
 
-- INDEX
 
-- TRIGGER
 
-- VIEW
CREATE VIEW category_summary AS
SELECT
    category,
    sub_category,
    COUNT(order_id) AS total_orders,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit
FROM sales
GROUP BY category, sub_category;
CREATE VIEW region_sales_summary AS
SELECT
    region,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    AVG(discount) AS average_discount
FROM sales
GROUP BY region;
CREATE VIEW top_profitable_customers AS
SELECT
    customer_name,
    SUM(profit) AS total_profit,
    SUM(sales) AS total_sales
FROM sales
GROUP BY customer_name
ORDER BY total_profit DESC
LIMIT 5;
 
