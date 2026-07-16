use world;
-- numeric function
select * from country;
select lifeexpectancy, round(lifeexpectancy) from country;
select 34.58,round(134.3);
select 74.469,round(76.269,1);
select 74.469,round(76.269,2);
-- round off to nearest 10,100,1000
select 9,round(13.2,-1);
-- 2=>1
select 9,round(13.2,-2);
select 252.2,round(252.2,-2);
select round(34.857,1),truncate(34.857,1),mod(3,5);
select floor(34.999999),ceil(34.0000001);
select abs(10.1111),abs(-10.12312312);
-- group by

