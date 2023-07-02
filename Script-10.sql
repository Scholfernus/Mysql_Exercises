
create table if not exists movies(
movie_id int primary key auto_increment,
movie_name varchar(40) not null,
movie_type varchar(30) not null,
movie_rating tinyint not null
)
select * from movies2
select * from movies
insert into movies (movie_id, movie_name, movie_type, movie_rating)
values (1, 'Walka o ogień', 'Historyczny', 3)



create table if not exists movies2 like movies

drop table movies2

alter table movies rename movies_renamed

alter table movies_renamed add movie_director varchar(40) not null



