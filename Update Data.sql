show databases;

use belajar_mysql;

show tables;

describe products;

-- Menambah Kolom Kategori

alter table products
	add column category enum ('makan','minum','lain-lain')
	after name;

select * from products;

-- Mengubah Satu Kolom

update products 
set category ='minum'
where id = 'P0001';


-- Mengubah Beberapa Kolom

update products
set category ='makan',
	description = "di ubah makan nya ya"
where id = 'P0009';


-- Mengubah Dengan Value di Kolom

select * from products where id ='P0003';

update products
set price = price + 5000
where id = 'P0002';



