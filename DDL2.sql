create database test;
use test;

create table addresses (
id int,
house_number int,
city varchar(20),
postcode varchar(7)
);

create table people(
id int,
first_name varchar(20),
last_name varchar(20),
address_id int
);

create table pets(
id int,
name varchar(20),
species varchar(20),
owner_id int
);

show tables;
-- adding primary key in a table
describe addresses;

alter table addresses
add primary key(id);

alter table addresses
drop primary key;

describe people;
alter table people add primary key(id);

-- adding foreign key in a table
alter table people
add constraint FK_PeopleAddress
foreign key(address_id) references addresses(id);  -- it is must to mention id in address as foreign key otherwise it will show error

alter table people
drop foreign key FK_PeopleAddress;
alter table people
drop constraint FK_PeopleAddress;
-- above both works fine

-- adding and removing a unique constraint from a table
select * from pets;

alter table pets  
add constraint u_species unique (species); -- for all this we don't need to create a constraint 

alter table pets drop index u_species;

-- renaming colunm name
describe pets;
alter table pets change `species` `animal` varchar(20);	-- useing back tick remember
alter table pets change `animal` `species` varchar(20); 

-- change columns data type
describe addresses;
alter table addresses modify city varchar(30);
alter table addresses modify postcode int;
alter table addresses modify postcode varchar(7);

-- varchar to int it won't allow changes will be allowed only if the already present data will not affect



