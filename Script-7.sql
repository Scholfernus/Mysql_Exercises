select avg(`length`) as 'Srednia dlugosc filmu' from film where film_id between 1 and 10

select title as 'First ten', description from film where film_id between 1 and 10

select min(`length`) as 'Minimalna dlugosc filmu'from film where film_id between 20 and 80

select min(`length`) as 'Minimalna dlugosc filmu',max(`length`)as 'Maksymalna dlugosc filmu' from film where film_id between 20 and 80

select count(city_id) from city where city like 'z%'


select min(`length`) as 'Minimalna dlugosc filmu',max(`length`)as 'Maksymalna dlugosc filmu',count(rating)
as 'Ilosc rekordow',rating  from film group by rating
having count(rating)>200 
/*having min (lenght)>40