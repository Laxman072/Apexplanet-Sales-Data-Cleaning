select count(*) as total_rows
from apex_sales_info_csv



SELECT
sum(Age is null) as missing_age, 
sum(City is null or TRIM(City) = '') as Missing_City
from apex_sales_info_csv;

  
  
SELECT
COUNT(*) AS Invalid_Age
FROM apex_sales_info_csv
WHERE Age < 0
OR Age > 100;



SELECT
COUNT(*) AS Invalid_Quantity
FROM apex_sales_info_csv
WHERE Quantity <= 0;



CREATE TABLE sales_cleaned AS
SELECT
    Order_ID,
    Order_Date,
    Customer_ID,
    TRIM(Customer_Name) AS Customer_Name,
    COALESCE(Age, 27) AS Age,
    Gender,
    COALESCE(
        NULLIF(TRIM(City), ''),
        'Unknown'
    ) AS City,
    TRIM(Product) AS Product,
    TRIM(Category) AS Category,
    Quantity,
    Unit_Price,
    Total_Sales
FROM apex_sales_info_csv;



SELECT *
FROM sales_cleaned
LIMIT 10;



select 
sum(Age is null) as missing_age, 
sum(City is null or TRIM(City) = '') as Missing_City
from sales_cleaned;






