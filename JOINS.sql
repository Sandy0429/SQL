/*
Selecting from multiple tables
	using JION (joins allow you to retrieve data from multiple tables in a single select statement)
		Inner JOIN
        Left and right Join

To join two tables there needs to be a related column between them    

*/
/*
Inner join will retrieve data only when there is matching values in both tables.
(If missing values find will ignore it)
Left join retrieve all the data from table 1 and only matching data from table 2
Right join vice versa of Left join

There is no full join in SQL
*/
use coffee_store;
select * from products;
select * from orders;

-- Inner join

select * from orders inner join products on orders.product_id = products.id;
select products.name, orders.order_time from orders inner join products on orders.product_id = products.id;

select p.name, p.price, o.order_time from orders o inner join products p on o.product_id = p.id 
order by o.order_time;
select p.name, p.price, o.order_time from orders o inner join products p on o.product_id = p.id 
where o.product_id = 5 order by o.order_time;

-- left join

update orders set customer_id = NULL where id =1;

select o.id, c.phone_number, c.last_name, o.order_time from orders o left join customers c on o.customer_id = c.id
order by o.order_time limit 10;

select o.id, c.phone_number, c.last_name, o.order_time from customers c left join orders o on o.customer_id = c.id
order by o.order_time limit 10;

-- right join
select o.id, c.phone_number, c.last_name, o.order_time from orders o right join customers c on o.customer_id = c.id
order by o.order_time limit 10;
select o.id, c.phone_number, c.last_name, o.order_time from customers c right join orders o on o.customer_id = c.id
order by o.order_time limit 10;

update orders set customer_id =1 where id =1;


-- joining more than 2 tables

select * from products;
select * from customers;
select * from orders;

select p.name , p.price, c.first_name,c.last_name, o.order_time from products p join orders o on p.id -o.product_id
join customers c on c.id = o.customer_id
where c.last_name = 'Martin' order by o.order_time;