# Retail-Sales_Analysis_Sql_Projects

Project Overview

Project Title: **Retail Sales Analysis**

BeginnerDatabase: **Retail**

This project showcases SQL skills and techniques commonly used by data analysts to explore, clean, and analyze retail sales data. It involves setting up a retail sales database, performing exploratory data analysis (EDA), and answering key business questions using SQL queries. This project is ideal for those starting their journey in data analysis and looking to strengthen their SQL proficiency.

## **Objectives**

* Set up a Retail Sales Database: Create and populate a retail sales database with the provided sales data.
* Data Cleaning: Identify and handle missing or null values in the dataset.
* Exploratory Data Analysis (EDA): Perform basic EDA to gain insights into the dataset.
* Business Analysis: Use SQL to answer specific business questions and derive meaningful insights from the sales data.

## Project Structure

### 1. **Database Setup**

Database Creation: The project begins by creating a database named Retail.

Table Creation: A table named retail_sales is created to store the sales data. The table includes columns for:

* Transaction ID
* Sale Date
* Sale Time
* Customer ID
* Gender
* Age
* Product Category
* Quantity Sold
* Price per Unit
* Cost of Goods Sold (COGS)
* Total Sale Amount

### 2. **Data Cleaning**

* Remove any records containing missing or null values.
* Standardize data formats (e.g., date and time formats).
* Ensure consistency in categorical variables (e.g., product categories and customer demographics).

### 3. **Exploratory Data Analysis (EDA)**

Perform descriptive statistics to understand key metrics such as average sales, total revenue, and customer distribution.
Identify trends in sales over time.
Analyze customer demographics and purchasing patterns.

### 4. **Business Key Problems and Answers**

-- **My Analysis & Findings**
* Q.1 Write a SQL query to retrieve all columns for sales made on '2022-11-05
* Q.2 Write a SQL query to retrieve all transactions where the category is 'Clothing' and the quantity sold is more than 10 in the month of Nov-2022
* Q.3 Write a SQL query to calculate the total sales (total_sale) for each category.
* Q.4 Write a SQL query to find the average age of customers who purchased items from the 'Beauty' category.
* Q.5 Write a SQL query to find all transactions where the total_sale is greater than 1000.
* Q.6 Write a SQL query to find the total number of transactions (transaction_id) made by each gender in each category.
* Q.7 Write a SQL query to calculate the average sale for each month. Find out best selling month in each year
* Q.8 Write a SQL query to find the top 5 customers based on the highest total sales 
* Q.9 Write a SQL query to find the number of unique customers who purchased items from each category.
* Q.10 Write a SQL query to create each shift and number of orders (Example Morning <=12, Afternoon Between 12 & 17, Evening >17)
