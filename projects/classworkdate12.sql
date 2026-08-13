create database windowsdb;
use windows10db;

select * from orders;
select customer_id ,customer_name, order_id , order_date ,
row_number() over(partition by customer_id order by order_date ) from orders;

select customer_name, order_id , amount,
row_number() over(order by amount desc) from orders;

select category, order_id , amount,
rank() over(partition by category order by amount desc) from orders;

-- difference from category avarage 

select order_id , amount , avg(amount) over(partition by category), 
round(amount- avg(amount) over(partition by category)) from orders; 

--  highest order per customer

select * from 
(select customer_id ,customer_name , order_id ,amount, max(amount)
over (partition by customer_id ) as customer_max from orders) as t 
where amount = customer_max; 

-- 2nd way 

select * from 
(select customer_id ,customer_name , order_id ,amount, rank()
over (partition by customer_id order by amount desc ) as customer_rank from orders) as t 
where customer_rank = 1; 

-- top 2 highest orders

select * from 
(select customer_id ,customer_name , order_id ,amount, rank()
over (partition by customer_id order by amount desc ) as customer_rank from orders) as t 
where customer_rank = 1 or customer_rank = 2 ;

-- second highest order per customer 

select * from 
(select customer_id ,customer_name , order_id ,amount, rank()
over (partition by customer_id order by amount desc ) as customer_rank from orders) as t 
where customer_rank = 2 ;


-- % of customer total spending 

select customer_name, order_id , amount , sum(amount) 
over ( partition by customer_id) , 
round(amount/sum(amount) over (partition by customer_id)*100,2)
from orders;


-- lag, lead,ntile, row number { important running sum/running avarage, last 3 orders}










































