

drop table if exists retail;
Create table retail(
transactions_id int primary key,
sale_date date,
sale_time time,
customer_id int,
gender varchar(120),
age int,
category varchar(120),
quantiy int,
price_per_unit int,
cogs float ,
total_sale float
)
--                           DATA CLEANING           
Select * from retail;
select count(*) from retail

Delete from  retail
where transactions_id is null
or
sale_date is null 
or
sale_time is null 
or
customer_id is null 
or
gender is null 
or
age is null 
or
category is null 
or
quantiy is null 
or
price_per_unit is null 
or
cogs is null 
or
total_sale is null 


--                        DATA EXPLORATION
--total sales
Select count(total_sale) from retail;

-- male vs female
Select gender, count(gender) as "CONUT"
from retail
group by gender

-- which category is the most ?
Select category, count(category) as CONUT_category 
from retail
group by category 
order by CONUT_category desc ;

-- total coustomers 
Select count (Distinct customer_id) from retail;


--                   DATA ANALYSIS & INSIGHTS


-- Q1. Write a SQL query to retrieve all columns for sales made on 2022-11-05.

Select *from retail 
Where sale_date ='2022-11-05';

-- Q2. Write a SQL query to retrieve all transactions where the category is 'Clothing' and the quantity sold is more than 4 in the month of Nov-2022.

Select * from retail 
where category='Clothing' 
and
quantiy >=4
and
sale_date >= '2022-11-01' and sale_date < '2022-12-01' ;

-- Q3. Write a SQL query to calculate the total sales (total_sale) for each category.

Select 
category,
SUM(total_sale) AS total_sale
from retail
group BY category;


-- Q4. Write a SQL query to find the average age of customers who purchased items from the 'Beauty' category.

Select category,
ROUND(avg(age),2) from retail
Where category='Beauty'
group BY category;

-- Q5. Write a SQL query to find all transactions where the total_sale is greater than 1000.

Select count(*) from retail 
Where total_sale > 1000

-- Q6. Write a SQL query to find the total number of transactions (transaction_id) made by each gender in each category.

Select  category,gender, count(transactions_id) from retail
group by gender,category
order by 1

-- Q7. Write a SQL query to calculate the average sale for each month.



-- 7.1 Find out the best selling month in each year.



-- Q8. Write a SQL query to find the top 5 customers based on the highest total sales.



-- Q9. Write a SQL query to find the number of unique customers who purchased items from each category.

-- Q10. Write a SQL query to create each shift and number of orders




