/* PureMarket is a company in the food sector, 
   which we are going to analyse its main sales,
   clients and products*/

SELECT *FROM Sales

--Remove unnecessary columns

ALTER TABLE Sales DROP COLUMN F10;

--1. What is the performance of each department in terms of sales?

CREATE VIEW Performance_of_Department
AS
SELECT Department_name, SUM(Total_Price) AS Performance_of_Department
FROM Sales 
GROUP BY Department_name;

--2. What is the average sales per department?

CREATE VIEW Average_sales_per_department
AS
SELECT Department_name, AVG(Total_Price) AS Average_sales_per_department
FROM Sales
GROUP BY Department_name;

--3. What are the 20 best selling products?

CREATE VIEW Top_20_products
AS
SELECT TOP 20 Product_name, SUM(Quantity) AS Top_20_products
FROM Sales
GROUP BY Product_name 
ORDER BY Top_20_products DESC; 

--4. What are the 5 most expensives products?

CREATE VIEW Top_5_price
AS
SELECT DISTINCT TOP 10  Product_name, Price FROM Sales
ORDER BY Price DESC; 

--5. Which are the 20 customers who buy the most?

CREATE VIEW Top_20_customers
AS
SELECT TOP 20 Customer_id, SUM(Total_Price) AS Top_20_Customers
FROM Sales 
GROUP BY Customer_id 
ORDER BY Top_20_Customers DESC;

--6.What is the average purchase per customer?

CREATE VIEW Average_purchase_per_customer
AS
SELECT Customer_id, AVG(Total_Price) AS Average_purchase_per_customer
FROM Sales
GROUP BY Customer_id;



