create database jitu;
use jitu;
create table student(
student_id int primary key ,
student_name varchar(10),
age int );
insert into student values(1,'kumkum',22);
insert into student values(2,'yusuf',21);

select * from student;

-- create user 
create user kumkum identified by 'kumkum123';

-- insert and select permission 
grant select , insert 
on jitu.student
to 'kumkum';

-- update permission on specific column 

grant update(student_name)
on jitu.student
to 'kumkum';

-- delete permission 
grant delete
on jitu.student
to 'kumkum';

-- bck delete permission 

revoke delete 
on jitu.student
from 'kumkum';

-- revoke all permission 

revoke all privileges, grant option
 from 'kumkum';
-- role
create role if not exists 'hr_role';
-- no user in the role
select to_user as 'user' , to_host as 'host'
from mysql.role_edges
where from_user ='hr_role';
-- create user
create user aman99 identified by 'aman123';
-- assigen permission to role
grant select on newdb.* to hr_role;
-- role assigen to user
grant hr_role to aman99;
show grants  for  aman99;
select to_user as 'user' , to_host as 'host'
from mysql.role_edges
where from_user ='hr_role';
set default role hr_role to aman99; -- assingen a default  role to the user 



























