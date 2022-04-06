-- exercise

/*
	1. select the order id and customers phone number for all orders of product id 4.
    2. select product name and order time for filter coffees sold between january 15th 2017 and february 14th 2017.
    3. select the product name and price and order time for all orders from females in january 2017.
*/

select o.id , c.phone_number from orders o join customers c on o.customer_id =c.id
where o.product_id =4;
 
 select p.name, o.order_time from products p join orders o on o.product_id = p.id
 where p.name='Filter' and o.order_time between	'2017-01-15' and '2017-02-14';
 
 select p.name,p.price, o.order_time from products p join orders o on p.id = o.product_id
 join customers c on o.customer_id = c.id where c.gender ='F'
 and o.order_time between '2017-01-01' and '2017-01-31';
  select p.name,p.price, o.order_time from products p join orders o on o.product_id = p.id
 join customers c on o.customer_id = c.id where c.gender ='F'
 and o.order_time between '2017-01-01' and '2017-01-31' order by o.order_time;