# Sales Data Cleaning and Validation

## Project Overview

This project focuses on cleaning and validating a sales dataset using **MySQL Workbench**.

The goal was to identify missing values, clean the data, validate the dataset, and create a clean dataset that is ready for analysis.

## Tools Used

- MySQL Workbench
- Microsoft Excel

## Dataset Information

The dataset contains sales-related information, including:

- Order details
- Customer information
- Product details
- Quantity
- Unit price
- Total sales

## Data Cleaning Process

1. Imported the raw sales dataset into MySQL Workbench.
2. Created a database named `apex_sales`.
3. Stored the raw dataset in the `apex_sales_info` table.
4. Checked the dataset for missing values.
5. Identified 7 missing values in the `City` column.
6. Created a separate cleaned table named `sales_cleaned`.
7. Replaced missing City values with `Unknown`.
8. Kept the original raw dataset unchanged.
9. Validated the cleaned dataset.
10. Exported the cleaned dataset as a CSV file.

## Data Quality Results

| Data Quality Check | Result |
|---|---:|
| Total Records | 1,000 |
| Missing City Values Before Cleaning | 7 |
| Missing City Values After Cleaning | 0 |
| Invalid Numeric Values | 0 |
| Original Data Preserved | Yes |

## SQL Cleaning Query

```sql
UPDATE sales_cleaned
SET City = 'Unknown'
WHERE City IS NULL
   OR TRIM(City) = '';
```

## Final Validation Query

```sql
SELECT COUNT(*) AS Missing_City
FROM sales_cleaned
WHERE City IS NULL
   OR TRIM(City) = '';
```

**Final result:** `Missing_City = 0`

## Project Structure

```text
ApexPlanet_Sales_Project/
├── Raw_Data/
├── Cleaned_Data/
├── SQL/
├── Documentation/
├── Screenshots/
└── README.md
```

## Key Learnings

- Importing datasets into MySQL
- Checking missing values
- Creating a cleaned table
- Using `UPDATE` statements
- Handling missing values
- Validating cleaned data
- Exporting data from MySQL Workbench

## Conclusion

The sales dataset was successfully cleaned and validated using MySQL Workbench.

The missing City values were replaced with `Unknown`, and the final cleaned dataset contains no missing City values. The cleaned dataset is ready for further data analysis and reporting.

## Author

**Chippa Laxman**

Data Analytics Intern | ApexPlanet Software Solutions
