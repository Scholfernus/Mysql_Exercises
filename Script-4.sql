select city from city
where city = 'London' 
group by city

select distinct city from city where city = 'London'

select avg(length)film from film where rating = 'Pg-13'

select min(length) as 'Minimalna dlugosc filmu',
max(`length`) as 'Maksymalna dlugosc filmu' 
from film where rating = 'PG-13'  or rating ='PG'

select sum(length) as 'Suma dlugosci filmow' 
from film where rating = 'PG-13'  or rating ='PG'

select count(film_id) as 'Ilosc filmow dla ratingu PG-13 i PG' 
from film where rating = 'PG-13'  or rating ='PG'

