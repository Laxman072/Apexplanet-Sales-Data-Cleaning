
create database apex_sales

use apex_sales

show tables;

select * 
from apex_sales_info
limit 10

describe apex_sales_info

select count(*) as Total_Rows
from apex_sales_info


SELECT count(Age) as Ages
FROM apex_sales_info
WHERE Age < 0 OR Age > 100;

SELECT Order_ID, COUNT(*) AS Count
FROM apex_sales_info
GROUP BY Order_ID
HAVING COUNT(*) > 1;

SELECT *
FROM apex_sales_info
WHERE Total_Sales <> Quantity * Unit_Price; 

CREATE TABLE sales_cleaned AS
SELECT
    Order_ID,
    Order_Date,
    Customer_ID,
    TRIM(Customer_Name) AS Customer_Name,
    COALESCE(Age, 27) AS Age,
    Gender,
    COALESCE(City, 'Unknown') AS City,
    TRIM(Product) AS Product,
    TRIM(Category) AS Category,
    Quantity,
    Unit_Price,
    Total_Sales
FROM apex_sales_info;

SELECT count(Order_ID) as total_rows
FROM sales_cleaned

SELECT COUNT(*) AS Missing_City
FROM sales_cleaned
WHERE City IS NULL
   OR TRIM(City) = '';
   
SET SQL_SAFE_UPDATES = 0;

UPDATE sales_cleaned
SET City = 'Unknown'
WHERE City IS NULL
   OR TRIM(City) = '';
   
   

   
   