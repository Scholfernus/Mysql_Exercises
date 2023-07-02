create table orders (
  order_id int primary key auto_increment,
  order_number varchar(10) not NULL
)
insert into orders (order_number) values ('Order 6')

select * from orders

create table orders_vs2 like orders

select * from orders_vs3

create table orders_vs3 as select * from orders 

show columns from orders

alter table orders rename zamowienia
alter table zamowienia rename orders
alter table orders add decription varchar(200) not NULL