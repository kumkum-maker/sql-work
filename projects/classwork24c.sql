create database viewsdb2;
use viewsdb2;
create table employees(id int, name varchar(20),salary int);
insert into employees values(1,"aman",10000),(2,"shivak", 20000);
-- create is used to create views object
-- object data structure
-- non materialise views/ simple views
create view emp_view as select id,name  from employees;
select * from emp_view;
select salary from emp_view;-- will give error
-- new row insert
insert into employees values(3,'abhishake',30000);
select * from emp_view; -- base table change view also got new data
insert into emp_view values(4,'raj');
select * from emp_view;
select * from employees;
-- materialise views, non materialise views
create view emp_view as select sum(salary) from employees;
select * from emp_view;
-- a views is a non updateable if there any aggregate function  or window function but we can make change
-- in original table

