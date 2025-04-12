# SSIS Package Project
SSIS Package to load data from a Excel file to SQL Server

This project has two packages to load data from an Excel file to SQL Server. 

The data flows co

1. The data is obtained from the Excel file.
   Variables are created to store the file paths. These variables contain expressions to create the path dynamically. The purpose of this is to ensure that when the package is run daily or monthly, the file corresponding to that day or month is selected.
   ![image](https://github.com/user-attachments/assets/ecacc420-c044-4a06-bfb9-a938fa227fac)

3. The data is converted to match the data types of the database tables.
4. New date columns are created using derived columns, and any NULLs in the columns are processed.
5. Finally, the data is loaded into the corresponding table.

![Monthly_load_ssis_package](https://github.com/user-attachments/assets/0a71dc02-7d05-42cb-b4f7-a5fc85a15f15)
