show databases;

use belajar_mysql;

show tables;

describe products;

-- Mencari Data

select * from products;

select id,price,quantitiy from products where quantitiy = 3;

select * from products where id = 'P0001';

select * from products where name = 'nasi';

select * from products where price = 20000;

