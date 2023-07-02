create or replace view coutries_with_cities 
as
select c.city as 'nazwa_miasta', co.country as 'nazwa_kraju'
from city c
inner join country co on c.country_id = co.country_id 

select * from coutries_with_cities cwc
where nazwa_miasta like '%a'

create view actors_and_films
as
select actor.first_name as'Imię',actor.last_name as'Nazwisko', film.title as 'Tytuł'
from actor
inner join film_actor on actor.actor_id = film_actor.actor_id 
inner join film on film_actor.film_id = film.film_id 
select * from actors_and_films aaf 


create view film_by_rating
as
select min(length) as 'Minimalny',
       max(length) as 'Maksymalny',
       avg(length) as 'Średni',
       sum(length) as 'Suma' 
from film
group by rating 

select * from film_by_rating fbr 