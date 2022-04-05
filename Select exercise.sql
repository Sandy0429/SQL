-- exercise
/*
1. from the customers table, select the first name and phone number of all the females who have
a last name Bluth.

2. From the products table, select the name for all products that have a price greter than 3.00 or a coffee origin of sri Lanka.

3. How many male customers don't have a phone number entered into the customers table.
*/

describe customers;
-- 1
select first_name, phone_number from customers where gender = 'F' and last_name ='Bluth';
-- 2
describe products;
select name from products where price > 3.00 or coffee_origin = 'Sri Lanka';
-- 3
select * from customers where gender ='M' and phone_number is null;
select count(id) from customers where gender ='M' and phone_number is null;

-- exercise
/*
	1. From the product table select the name and price of all products with coffee origin equal to colombia or indonesia.
     order by name from A-Z.
    2. From the orders table, select all the orders from February 2017 for customers 
		with id's of 2,4,6,or 8
	3. From the customers table, select the first naem and phone number of all customers who's
		last name contains the pattern 'ar'
*/
select name, price from products where coffee_origin in('Colombia','Indonesia') order by name;
 describe orders;
select * from orders where customer_id in(2,4,6,8) and order_time between '2017-02-01' and '2017-02-28' ;

describe customers;
select first_name, phone_number from customers where last_name like '%ar%';

-- exercise
/*
	1. from the customers table, select distinct last_names and order alphabetically from A-Z
    2. from the orders table, select the first 3 orders placed bu customer with id 1, in february 2017
    3. from the products table, select the name, price and coffee origin but rename the price to retail_price 
       in the result set 
*/
select distinct last_name from customers order by last_name;
select * from orders where customer_id = 1 and order_time between '2017-02-01' and '2017-02-28' limit 3;
select * from orders where customer_id = 1 and order_time between '2017-02-01' and '2017-02-28' order by order_time asc limit 3;
select name , price as retail_price, coffee_origin from products;
