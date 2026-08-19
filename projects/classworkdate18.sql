-- root connection
create database tcldb;
use tcldb;
create table tcldb.test(id int,name varchar(20));
insert into tcldb.test value(18,'abhinav');
select @@autocommit; -- by default autocommit is 1 mean file will be automatically save
start transaction;
insert into tcldb.test value(19,'raj'); -- two row here
select * from tcldb.test;
commit; -- you saved  the changes in the database
start transaction;
insert into tcldb.test value(20,'japan');
insert into tcldb.test value(21,'north korea');
update tcldb.test set name='abacas';
SET SQL_SAFE_UPDATES = 0;
rollback; -- to revert the   two lines insert
select * from tcldb.test;
start transaction;
insert into tcldb.test value(22,'ujjawal');
delete from tcldb.test; -- to revert the two line inserted
rollback;
select * from tcldb.test;
