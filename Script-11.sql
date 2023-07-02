use orders_db

create or rename table order_statuses(
order_ststus_id int auto_increment primary key,
customer_name varchar(100) not null
)
alter table order_statuses rename column order_ststus_id to order_status_id

create table orders222 (
  orders222_id int auto_increment primary key,
  order_number varchar(50) not null,
  customer_id int not null,
  status_id int,
  constraint fk_orders222_customer foreign key (customer_id) 
  references customer(customer_id),
  constraint fk_orders222_order_status foreign key (status_id) 
  references order_statuses(order_status_id)
)
select * from orders222
-- drobne zmiany 
create table if not exists customer (
  customer_id int auto_increment primary key,
  customer_name varchar(50) not null,
  customer_email varchar(50) not null
  )
  


