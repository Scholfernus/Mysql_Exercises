select * from city c
where city_id = 438

select * from country c 
where country_id = 67

select ci.city, co.country from city ci
inner join country co on ci.country_id = co.country_id

select f.title, c.name from film f
inner join film_category fc on fc.film_id = f.film_id
inner join category c on c.category_id = fc.category_id 

insert into country (country) values ('Azerbejdżan')
select * from country order by country_id desc
select * from country order by country_id asc

select city as 'miasto', city_id as 'number' from city 
where country_id > 50 
order by city asc 