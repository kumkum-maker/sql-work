use world;
-- group by
select distinct(continent) from country;
select continent ,count(name) from country group by continent;
select count(name) from country where continent='north america';
select count(name) ,count(distinct(name)) from country;
select name,count(name) from country group by name;
select count(name) from city where district='Zuid-Holland';
select district ,count(name),sum(population) from city group by district;
select count(name) from city where countrycode = "afg";
select countrycode,count(name) from city group by countrycode;
select count(name) from country;
-- # count function do not count null values it is skipped it
-- count the number of country which have life exep. from 70.1 to 83.5
--  get the total population of the country to get their independecy from 1990
-- count the number of countrt which are not slaved by any other community
-- get the total country and the total surface area for each region 
-- get the total country to each continent 
-- get the total country for each region for each continent 
select  count(name) from country where lifeexpectancy between 70.1 and 83.5;
select sum(population) from country where indepyear>1990;
select count(name) from country where indepyear is null;
select count(name)-count(indepyear) from country;
select count(name) ,sum(surfacearea) from country group by name;   
select continent,count(name) from country group by continent;
select distinct(continent) from country;
select  ,region ,count(name) from country group by continent,region;
select name, count(name) from country group by name;
select continent ,max(continent) from country group by continent;
-- where clause doest not apply with aggregate function with aggregate function use having for filter data
select continent,count(name) from country group by continent
having count(name)>10;
select continent ,count(name) from country where continent like 'A%'
group by continent having count(name)>10;
-- having only use when we fillter aggregate function data
