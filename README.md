# Sales-Performance

### Project overview
---
This data analysis project aims to provide insights into the sales performance of a food company. By analyzing various aspects of the sales data, we seek identify trends, and gain a better understanding of sales, products and clients.

![Dashboard](https://github.com/user-attachments/assets/f74744eb-8766-455b-9c2f-38ca122e82f0)


### Data sources

The dataset used for this analysis is the “Sales.xsl” file, containing detailed information about each sale, product and client of the company.

### Tools

Excel – Data organization and cleaning
SQL – Data analysis
Power BI – Create reports

### Data preparation

Data loading and inspection
Data organization and formatting

### Exploratory Data Analysis

EDA involved exploring the sales data to answer key question, such as:

1. What is the performance of each department in terms of sales?
2. What are the 20 best-selling products?
3. What are the 5 most expensive products?
4. Sales comparison between 2023 and 2024
5. Which are the 20 customers who buy the most in terms of sales?
6. What is the average purchase per customer?

### Data Analysis

```sql
SELECT * FROM Sales

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
```

### Results/Findings

- The most expensive products are not as popular despite their quality.
- The fruits department is the best seller.
- The last quarter of 2024 shows an increase in sales compared to 2023.
- The best customers are those who spent more than thousand dollars on purchases.



