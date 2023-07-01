select last_update,city from city
where city = 'London' 
group by city,last_update 

select * from city where city in ("Moscow","London", "Manchester")

select distinct last_update, city from city where city = 'London'

select * from city where city_id =20

delete from city where city_id =20


select * from country
insert into country (country) values ('test')

insert into country (country, last_update)values ('test 4','2021-01-01 04:00:12')

select c1.city,c2.country  from city c1
inner join country c2
on c1.country_id  = c2.country_id where c2.country = 'Poland'

select city city,country country  from city
inner join country
on city.country_id  = country.country_id where country in ('Poland','Australia','France')

select f.title, c.name
from film f
join film_category fc on f.film_id = fc.film_id 
join category c on c.category_id  = fc.category_id
where f.title is not null
