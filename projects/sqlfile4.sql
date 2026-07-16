use world;
select code2 , name from country
where surfacearea>1900;
select code ,name from country 
where Region ="southern europe";
select name ,code from country
where  name='africa' and region='central africa';
select code,name from country
where name in('afganistan','africa');
-- bitween oprator,in oprator,like
-- diffrence what is dbms and types of dbms avaliables