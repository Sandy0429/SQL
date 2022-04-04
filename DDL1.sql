show databases;
/*
DDL 
	concern with creating tables
*/
create database coffee_store; 

use coffee_store;

create table products (
id int auto_increment primary key,
name varchar(30),
price decimal(3,2)
);

show tables;

create table customers (
id int auto_increment primary key,
first_name varchar(30),
last_name varchar(30),
gender enum('M','F'),
phone_number varchar(11)
);

create table orders (
id int auto_increment primary key,
product_id int,
customer_id int,
order_time datetime,
foreign key(product_id) references products(id),
foreign key(customer_id) references customers(id) 
);

-- how to add and remove columns

select * from products;

alter table products 
add	column coffee_origin varchar(30);

alter table products
drop column coffee_origin;

-- delete tables from a data base
create database example;
use example;
create table test (
	id int auto_increment primary key,
    name varchar(30),
    age int
);
select * from test;
show tables;
drop table test;

-- for removing all the rows from a table
truncate table test; -- it will first delete the table and recreate the table

 
