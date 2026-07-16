use world;
select district ,population from city where name='kabul';
select district ,population ,countrycode from city where CountryCode='IND'and Population>2000000;
select district ,population ,countrycode from city where CountryCode='IND'or Population>2000000;
select district ,population ,countrycode from city where CountryCode='AFG'and district='kabol';
select *from city where Population between 10000 and 150000;
select *from city where Population = 129170 or population =117196;
select *from city where Population in (129170 ,117196);
-- like operator
select *from city where name="b";
select * from city where name like 'b%';
select * from city where name like '%a';
select * from city where name like 'b%a';
select * from city where name like 'a__';
select * from city where name like 'T__%';
select * from city where name like 'A%__';
select * from city where name like '_A%_';
get the city and the population where you have the latter name e city name
where the second last latter should be b
where the city name have the second letter as a and the last second charcter is r
where you have double a in the city name
get the city name and the polpulation where the country name have the two character e sprated with a charcter and it should be in the middle



