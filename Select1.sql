/*
	Selecting data from storage
    SELECT command
    Where ,IN, BETWEEN , LIKE, order
    limit no. of rows in extraction
    remove duplicate
    column name alias
*/

use coffee_store;
select * from customers;
select last_name from customers;
select last_name, phone_number from customers;

select * from products;
select * from products where coffee_origin='Colombia';
select * from products where price = 3.00;
select * from products where price =3.00 and coffee_origin='Colombia';
select * from products where price =3.00 or coffee_origin='Colombia';

/* inequality symbol
>
>=
<
<=
*/
select * from products where price >=3.00;
select * from products where price <3.00;

-- null values

use coffee_store;
select * from customers;

select * from customers where phone_number is null;
select * from customers where phone_number is not null;


-- In ,Not in  when we want column to be equal to more than one value 
/*
	'In' in a group of values
    'Not In' values except some particular value
*/
select * from customers where last_name in('Taylor','Bluth','Armstrong');
select * from customers where first_name not in('katie','John','George');


-- Between
/*
 when dealing with date or numbers
*/
select * from orders;
select * from customers;

select product_id, customer_id, order_time from orders
where order_time between '2017-01-01' and '2017-01-07';

select product_id, customer_id, order_time from orders
where customer_id between 5 and 10;

select * from customers where last_name between 'A' and 'L'; -- Last name starting from A - L will be shown up


-- Like 
/*
	% - any no of characters
    _ - one character
*/

select * from customers where last_name like 'W%'; -- start with W with any no of characters
select * from customers where last_name like '%o%';
select * from customers where first_name like '_o_';
select * from products where price like '3%';

-- Order by
/*
	from lowest to highest and vice versa
    
    default order by is from lowest to highest without mentioning asc or desc 
*/
select * from products order by price asc; -- price in ascending order
select * from products order by price desc;

select * from customers order by last_name desc;
select * from customers order by last_name asc;

select * from orders where customer_id = 1 order by order_time asc;
select * from orders where customer_id = 1 order by order_time desc; 

-- distinct
/*
select distinct values from table
*/

select coffee_origin from products;
-- different country of origin
select distinct coffee_origin from products;

select customer_id from orders where order_time between '2017-02-01' and '2017-02-28';
-- customers who order in feb
select distinct customer_id from orders where order_time between '2017-02-01' and '2017-02-28';
select distinct customer_id, product_id from orders where order_time between '2017-02-01' and '2017-02-28';
-- in above query customer id will be repeated as its combination with the product id results into different set of output


-- Limit offset
/*
	limiting no of rows from our result set of select statement
*/

select * from customers;
select * from customers limit 4;

select * from customers limit 5 offset 5; -- offset se 1st 5 rows ko chor ke uske bd ke 5 rows show honge
select * from customers order by last_name limit 10;

-- column name alias
/*
	renaming column in result set
    dosen't change column name in db just change in result set
*/
select name , price, coffee_origin from products;
select name as Coffee , price, coffee_origin as Country from products;
select * from products;