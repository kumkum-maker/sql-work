use world;
select name,indepyear,indepyear+100,ifnull(indepyear,0) from country;
select name,indepyear,lifeexpectancy,coalesce(indepyear,lifeexpectancy,name)from country;
-- case statement
select name,population,indepyear,if(indepyear>1947,'after ind','before india') from country;
-- select col,col2
-- case 
-- when conditon2 then__
-- end
-- from table
select name , population,indepyear,
case 
when indepyear>1947 then 'After 1947'
when indepyear>=1919 then 'only after 1919'
else 'else coditioin'
end
from country;
-- country name,continent,population and create a column name as category if my country population >5l large population ,ifelse,avg,else small
select country,continent,population,
case 
when population>500000 then 'large'
when population >200000 then 'avg'
else 'small'
end 
from country;
-- print the continent name and the number of country with the catogary of  the continent column number of country>10000 small,country>15000 avg,country,country >25 large
select continent ,count(*),
case 

when count(*)>25 then 'large'
when count(*)>15 then 'avg'
else 'small'
end 
from country group by continent;
