use newdb;
select current_role();
-- hireing_date in  recent in there department
 select * from employee as u  where hire_date
=(select max(hire_date) from employee where dep=u.dept);
