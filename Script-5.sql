select city_id,last_update ,city from city
where city = 'London' 
group by city

update city set last_update  = '2023-07-01' where city = 'London' 

update city set city = 'Liverpool'
where city_id = 313

update city set city = 'Liverpool',country_id =30,last_update  = '2022-02-02 4:00:00'
where city_id = 313

