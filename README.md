# Sales Data Cleaning and Validation

## Project Overview

This project focuses on cleaning and validating a sales dataset using **MySQL Workbench**. The objective was to identify data-quality issues, handle missing values, remove unnecessary spaces, validate important numeric fields, and create a clean dataset for further analysis and reporting.

The original dataset was preserved, and a separate cleaned table named `sales_cleaned` was created.

---

## Internship

**ApexPlanet Software Solutions – Data Immersion Internship**

---

## Tools Used

* MySQL Workbench
* SQL
* Microsoft Excel
* GitHub

---

## Dataset Information

The dataset contains **1,000 sales transaction records** with the following fields:

| Column          | Description                         |
| --------------- | ----------------------------------- |
| `Order_ID`      | Unique identifier for each order    |
| `Order_Date`    | Date of the order                   |
| `Customer_ID`   | Unique identifier for each customer |
| `Customer_Name` | Name of the customer                |
| `Age`           | Age of the customer                 |
| `Gender`        | Gender of the customer              |
| `City`          | Customer's city                     |
| `Product`       | Product purchased                   |
| `Category`      | Product category                    |
| `Quantity`      | Number of units purchased           |
| `Unit_Price`    | Price per unit                      |
| `Total_Sales`   | Total sales value                   |

---

## Data Quality Issues Identified

The following issues were identified in the original dataset:

| Data Quality Check          | Result |
| --------------------------- | -----: |
| Total Records               |  1,000 |
| Missing Age Values          |     20 |
| Missing City Values         |     13 |
| Invalid Age Values          |      0 |
| Invalid Quantity Values     |      0 |
| Invalid Unit Price Values   |      0 |
| Negative Total Sales Values |      0 |

---

## Data Cleaning Process

The following steps were performed using SQL:

1. Checked the total number of records.
2. Identified missing values in the `Age` and `City` columns.
3. Calculated the average Age of the available records.
4. Replaced the 20 missing Age values with **41**, the rounded average Age.
5. Replaced the 13 missing or blank City values with **`Unknown`**.
6. Removed unnecessary spaces from text columns using `TRIM()`.
7. Validated Age, Quantity, Unit Price, and Total Sales values.
8. Created a separate cleaned table named `sales_cleaned`.
9. Preserved the original dataset without making changes to it.
10. Validated the cleaned dataset to confirm that no missing Age or City values remained.

---

## SQL Cleaning Logic

```sql
CREATE TABLE sales_cleaned AS
SELECT
    Order_ID,
    Order_Date,
    Customer_ID,
    TRIM(Customer_Name) AS Customer_Name,
    COALESCE(Age, 41) AS Age,
    Gender,
    COALESCE(NULLIF(TRIM(City), ''), 'Unknown') AS City,
    TRIM(Product) AS Product,
    TRIM(Category) AS Category,
    Quantity,
    Unit_Price,
    Total_Sales
FROM apex_sales_info_csv;
```

---

## Final Validation Results

After cleaning, the dataset was validated successfully.

| Validation Check            | Result |
| --------------------------- | -----: |
| Total Records               |  1,000 |
| Missing Age Values          |      0 |
| Missing City Values         |      0 |
| Invalid Age Values          |      0 |
| Invalid Quantity Values     |      0 |
| Invalid Unit Price Values   |      0 |
| Negative Total Sales Values |      0 |

---

## Project Structure

```text
ApexPlanet_Data_Immersion/
│
├── Raw_Data/
│   └── apex_sales_info.csv
│
├── Cleaned_Data/
│   └── sales_cleaned.csv
│
├── SQL/
│   └── ApexPlanet_Data_Cleaning.sql
│
├── Documentation/
│   └── Data_Quality_Report.docx
│
├── Screenshots/
│   ├── 01_Raw_Table_Preview.png
│   ├── 02_Missing_Values_Before_Cleaning.png
│   ├── 03_Data_Cleaning_Query.png
│   ├── 04_Missing_Values_After_Cleaning.png
│   ├── 05_Final_Cleaned_Table_Preview.png
│   └── 06_Final_Validation_Result.png
│
└── README.md
```

---

## Key Learnings

Through this project, I practiced:

* Data cleaning using SQL
* Identifying and handling missing values
* Using `COALESCE()` to replace missing values
* Using `TRIM()` to remove unnecessary spaces
* Validating numeric data
* Creating a separate cleaned table
* Preserving raw data
* Organizing project files for GitHub

---

## Conclusion

The sales dataset was successfully cleaned and validated using MySQL Workbench. The 20 missing Age values were replaced with **41**, based on the rounded average Age of the available records. The 13 missing or blank City values were replaced with **`Unknown`**.

The original dataset was preserved, and a separate cleaned table was created. The final dataset contains **1,000 validated records** and is ready for further data analysis and reporting.

---

## Author

**Chippa Laxman**

Aspiring Data Analyst | SQL | Power BI | Excel | Data Visualization
