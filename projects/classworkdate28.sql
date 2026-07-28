create database corr_db;
use corr_db;
create table employees_c (id int ,name varchar(20),salary int);
insert into employees_c value ('1','a','100'),('2','b','250'),('3','c','300'),('4','d','400');
select database();
show tables ;
select max(salary) from employees_c;
select * from employees_c where salary=400;
-- nested query
-- subquery with maximum salary
select * from employees_c where salary=(select max(salary) from employees_c);
insert into employees_c value('5','aman','250');
select * from employees_c;
select * from employees_c where salary=(select * from employees_c where name ='b');
select avg(salary) as avgsalary from employees_c where avg(salary)>300;
-- get the name of city where the district of the city is same for the city abu dhabi 
-- get all the column from the city table where population is maximum
-- get the district of the city where the countrycode is same for the city hared
-- get the district city and the population for all the country where ambesardam and sort this data by the population
use world;
select * from city;
select name from city where district=(select district from city where name='abu dhabi');
-- 2
select * from city where population=(select max(population) from city);
-- 3
select district from city where countrycode=(select countrycode from city where name='hared');
-- 4
select district ,name, population from city where countrycode=(select countrycode from city where name='Amsterdam')order by population;