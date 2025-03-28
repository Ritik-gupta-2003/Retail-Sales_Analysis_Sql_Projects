 -- SQL retail sales analysis project
 
 use retail;
 Create Database Retail;
 
 -- create table 
 create table retail_sales ( 
 transactions_id int primary key,
 sale_date	date,
 sale_time	time,
 customer_id int,
 gender	varchar(15),
 age	int,
 category varchar(25),	
 quantiy float,
 price_per_unit	float,
 cogs float,
 total_sale float);
 
 select * from retail_sales;
 select count(*) from retail_sales;
 
 -- eliminate null values 
 
select * from retail_sales
where category is null;

select * from retail_sales
where sale_date is null;

select * from retail_sales
where 
transactions_id is null 
or 
sale_date is null
or 
sale_time is null
or 
category is null
or
customer_id is null
or 
gender is null
or 
quantiy is null
or 
price_per_unit is null
or 
cogs is null
or 
total_sale is null;

-- how to delete the rows

delete from retail_sales
where 
transactions_id is null 
or 
sale_date is null
or 
sale_time is null
or 
category is null
or
customer_id is null
or 
gender is null
or 
quantiy is null
or 
price_per_unit is null
or 
cogs is null
or 
total_sale is null;

SET SQL_SAFE_UPDATES = 0;

select count(*) from retail_sales;

 -- Data exploration
 
 -- How many sales we have?

select count(*) as total_sale from retail_sales;

-- how many unique customers we have
select count(*) as customer_id from retail_sales;

-- how many unique product cateogry we have 
 select count(distinct(category))  category from retail_sales ;
 
 ## Some Data analyst and busines problems
-- Q.1 Write a SQL query to retrieve all columns for sales made on '2022-11-05?

select * from retail_sales
where sale_date = "2022-11-05";

-- Q.2 Write a SQL query to retrieve all transactions where the category is 'Clothing' 
-- and the quantity sold is more than 10 in the month of Nov-2022?

select category ,sum(quantiy), sale_date from retail_sales
where category = "clothing"
AND quantiy >= 4 
AND DATE_FORMAT(sale_date, '%Y-%m') = '2022-11'
group by sale_Date;

-- Q.3 Write a SQL query to calculate the total sales (total_sale) for each category?

select sum(total_sale), category from retail_sales
group by category;

-- Q.4 Write a SQL query to find the average age of customers who purchased items from the 'Beauty' category.
select * from retail_sales;
select distinct(avg(age)),category from retail_sales
where category = "beauty"
group by category;

-- Q.5 Write a SQL query to find all transactions where the total_sale is greater than 1000.
select total_sale from retail_sales
where total_sale > 1000;
-- Q.6 Write a SQL query to find the total number of transactions (transaction_id) made by each gender in each category.

select count(transactions_id), gender, category from retail_sales
group by gender, category;
-- Q.7 Write a SQL query to calculate the average sale for each month. Find out best selling month in each year
select * from (
select 
extract(year from sale_date) as yr,
extract(month from sale_date) as months ,
rank() over(partition by extract(year from sale_date) order by avg(total_sale) desc) as ranks,
avg(total_sale)
 from retail_sales
group by 1,2) as t1
where ranks = 1;


-- Q.8 Write a SQL query to find the top 5 customers based on the highest total sales 
select customer_id, sum(total_sale) from retail_sales
group by customer_id
order by sum(total_sale) desc
limit 5;
-- Q.9 Write a SQL query to find the number of unique customers who purchased items from each category.
select count(distinct(customer_id)) as unique_customers,
 category from retail_sales
group by category;
-- Q.10 Write a SQL query to create each shift and number of orders (Example Morning <=12, Afternoon Between 12 & 17, Evening >17)
select * from retail_sales;

WITH hourly_sale
AS
(
SELECT *,
    CASE
        WHEN EXTRACT(HOUR FROM sale_time) < 12 THEN 'Morning'
        WHEN EXTRACT(HOUR FROM sale_time) BETWEEN 12 AND 17 THEN 'Afternoon'
        ELSE 'Evening'
    END as shift
FROM retail_sales
)
SELECT 
    shift,
    COUNT(*) as total_orders    
FROM hourly_sale
GROUP BY shift
 
 -- end of project 