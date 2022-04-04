-- exercise

show tables;

describe pets;
describe people;
alter table pets add primary key (id);

alter table people drop primary key;
alter table people add primary key (id);

alter table pets add constraint fk_peopleId foreign key(owner_id) references people(id);

alter table people add column email varchar(20);
describe people;
alter table people add unique (email);

describe pets;
alter table pets change column `name` `first_name` varchar(20);

describe addresses;
alter table addresses modify postcode char(7);