-- multirow subquery
use corr_db;
-- in multirwo subquery we use in opretors in subquery
-- select * from employee_c where salary >100. or salary>300

select * from employees_c where salary in(select salary from employees_c where name ='a');
select * from employees_c where salary =any(select salary from employees_c where name ='a');
select * from employees_c where salary <any (select salary from employees_c where name ='a');
-- =all are not run 
select * from employees_c where salary =all (select salary from employees_c where name ='a');
select * from employees_c where salary >all (select salary from employees_c where name ='a');
-- 
































