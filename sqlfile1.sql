-- function is a block of code that performe specific task ,collection of code
-- code reusable
-- code duplicacy is removed
-- make your code divide into smaller section
-- inbuilt functions
-- scaler function => applies on every row and return the output for every row
-- string ,number,dates
use world;
select name,continent,concat(' ',continent,'have',name,'country') from country;
select name,continent,concat_ws(' ',continent,'have',name,'country') from country;
select name, upper(name), substr(name,2) from country; -- extract string character
select name, substr(name,-4) from country
where name='colombia';
-- select name ,length('kumkum'),char_length('kumkum');
select name ,replace(name,'a','@') from country;
select trim(' he llo');
select name,lpad(name,6,'_')from country;
-- yyyy-mm-dd<= dd/mm/yyyy (we can convert)
select current_date(),current_time(),current_timestamp(), now();
select now(),adddate(now(),2),adddate(now(),-1),
adddate(now(),interval 1 year), adddate(now(),interval 1 quarter);
select now(),year(now()),month(now()),
extract(month from now()),extract(minute from now()),
weekday(now());
select now(),concat('current month is',month(now()));
select now(),date_format(now(),'year is %Y month is %M,weekday is %W');
-- sql zoo chapter 2