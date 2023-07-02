create table companies(
company_id int auto_increment primary key not null,
trade varchar(40) not null,
number_of_employees int not null default 0
)

CREATE TABLE employement.job_offers (
offer_id int auto_increment primary key not null,
offer_title varchar(40)not null,
offer_min_salary decimal not null,
offer_max_salary decimal not null
)

create table candidates (
  candidate_id int auto_increment primary key not null,
  first_name VARCHAR(40) not null,
  last_name VARCHAR(40) not null,
  email VARCHAR(30) not null,
  phone_number VARCHAR(12),
  job_offer_id INT,
  company_id INT,
  foreign key (job_offer_id) references job_offers(offer_id),
  foreign key (company_id) references companies(company_id)
)

-- rozwiązanie zadania SDA companies
-- rozwiązanie zadania 4

insert into companies (trade, number_of_employees) values ('Kogucik', 100)
insert into companies (trade, number_of_employees) values ('CCC', 50)
select * from companies 

insert into job_offers (offer_title, offer_min_salary, offer_max_salary) values ('Oferta 1', 4000, 6000)
insert into job_offers (offer_title, offer_min_salary, offer_max_salary) values ('Oferta 2', 4500, 6500)
select * from job_offers

insert into candidates (first_name, last_name, email, phone_number, job_offer_id, company_id) values ('Jan', 'Kowalski', 'jan.kowalski@example.com', '123 456 789', 1, 1)
insert into candidates (first_name, last_name, email, phone_number, job_offer_id, company_id) values ('Anna', 'Nowak', 'anna.nowak@example.com', '987 654 321', 2, 2)
select * from candidates

update companies set number_of_employees = 120 where company_id = 1
select * from companies
update  job_offers set offer_max_salary = 4500 where offer_id = 2
select * from job_offers
update candidates set phone_number = '456 333 777'where candidate_id = 1
select * from candidates  

select c.first_name, c.last_name, j.offer_title, co.trade
from candidates c
join job_offers j on c.job_offer_id = j.offer_id
join companies co on c.company_id = co.company_id

delete from companies where company_id = 2