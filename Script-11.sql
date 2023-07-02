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
  CONSTRAINT fk_orders222_customer FOREIGN KEY (customer_id) 
  REFERENCES customer(customer_id),
  CONSTRAINT fk_orders222_order_status FOREIGN KEY (status_id) 
  REFERENCES order_statuses(order_status_id)
)
select * from orders222

CREATE TABLE customer (
  customer_id INT auto_increment primary key,
  customer_name VARCHAR(50) not null,
  customer_email VARCHAR(50) not null
  )
  


