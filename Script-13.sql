create table books(
book_id int auto_increment primary key,
title varchar(50)not null,
author varchar(50)not null,
yearOfEdition int not null,
ISBN varchar(25)not null,
is_present enum('dostępna','wypożyczona','zarezerwowana')
)
-- 
create table biblioteka(
id_biblioteki int primary key auto_increment,
books_id int,
foreign key (books_id) references books(book_id)
)
-- 
create table readers(
id_reader int primary key auto_increment not null,
firstname varchar(50) not null,
lastname varchar(50) not null,
address varchar(100),
biblioteka_id int, 
foreign key (biblioteka_id) references biblioteka(id_biblioteki)
)
-- 
create table wypożyczenia (
    id_wypożyczenia int auto_increment primary key,
    czytelnik_id int,
    book_id int,
    data_wypożyczenia date not null,
    data_zwrotu date not null,
    foreign key  (czytelnik_id) references readers(id_reader),
    foreign key (book_id) references books(book_id)
);

insert into books (title, author, yearOfEdition, ISBN, is_present)
values ('Władca Pierścieni', 'J.R.R. Tolkien', 1954, '9788373191723', 'dostępna'),
       ('Harry Potter i Kamień Filozoficzny', 'J.K. Rowling', 1997, '9788372780561', 'dostępna'),
       ('1984', 'George Orwell', 1949, '9788375060165', 'wypożyczona')
select * from books 
-- 
insert into biblioteka (books_id)values(1),(2),(3);
select * from biblioteka
-- 
insert into readers (firstname, lastname, address, biblioteka_id)
values ('Jan', 'Kowalski', 'ul. Kwiatowa 1, Warszawa', 1),
       ('Anna', 'Nowak', 'ul. Słoneczna 2, Kraków', 2),
       ('Piotr', 'Wiśniewski', 'ul. Lipowa 3, Gdańsk', 3);
select * from readers
-- 
insert into wypożyczenia (czytelnik_id, book_id, data_wypożyczenia, data_zwrotu)
values (1,1,'2023-06-01', '2023-06-15'),
    	(1,1,'2023-06-05', '2023-06-20'),
    	(1,1,'2023-06-10', '2023-06-25')
-- 
select * from wypożyczenia    	
-- Zapytanie, które zwraca wszystkie książki wraz z nazwiskiem czytelnika,
-- który wypożyczył daną książkę (jeśli została wypożyczona)
select books.title, readers.lastname from books
left join wypożyczenia on books.book_id = wypożyczenia.book_id
left join readers on wypożyczenia.czytelnik_id  = readers.id_reader 

-- Zapytanie, które zwraca informacje o wszystkich wypożyczeniach, 
-- wraz z nazwiskiem czytelnika, tytułem książki i jej dostępnością:
select readers.firstname ,readers.lastname, books.title, books.is_present,
wypożyczenia.data_zwrotu  
from wypożyczenia
join readers on wypożyczenia.czytelnik_id = readers.id_reader 
join books on wypożyczenia.book_id = books.book_id 

-- Zapytanie, które zwraca listę czytelników wraz z liczbą 
-- wypożyczonych przez nich książek:
select readers.firstname, readers.lastname, count(wypożyczenia.book_id) as liczba_wypożyczeń
from readers
left join wypożyczenia on readers.id_reader = wypożyczenia.czytelnik_id 
group by readers.firstname, readers.lastname; 
