

create database belajar_mysql;

show databases;

use belajar_mysql;

show tables;

CREATE TABLE products 
( 
	id VARCHAR(10) NOT NULL, 
	name VARCHAR(168) NOT NULL, 
	description TEXT, 
	price INT UNSIGNED NOT NULL, 
	quantity INT UNSIGNED NOT NULL DEFAULT 0, 
	created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (id) 
);

desc products;

select * from products;

INSERT INTO products(id, name, price, quantity) 
VALUES ('P0009', 'Mie Ayam Ceken', 20000, 100),
	   ('POO10', 'Mie Ayam Spesial', 25000, 160),
	   ('P0011', 'Mie Ayam Yamin', 15000, 100);
	  
	  
-- 	  Mencari Data dengan Operator Perbandingan

select id,name,price, quantity
from products 
where quantity <= 100;


-- 	Mencari Data dengan Operator AND


select id,name, price ,quantity
from products 
where quantity > 100 and price > 15000;


-- 	Mencari Data dengan Operator OR

select id,name ,price , quantity
from products 
where quantity >=160 or price <= 15000;


-- 	Prioritas dengan Kurung ()

select id,name ,price,quantity
from products 
where (category ='makan' or quantity >= 160)
	and price >= 25000;

desc products;

alter table products
	add column category enum ('makan','minum','lain-lain')
	after name;


update products
set category ='makan',
	description = "di ubah makan nya ya"
where id = 'P0009';


-- 		Mencari Menggunakan LIKE Operator

select * from products 
where name like '%ayam%';


-- 	Mencari Menggunakan NULL Operator

select *
from products 
where description is null;


-- 	Mencari Menggunakan BETWEEN Operator

select *
from products 
where price between 15000 and 20000;


-- 		Mencari Menggunakan IN Operator

select *
from products 
where category in ('makan','minum');

-- 	insert database

INSERT INTO products(id, name, price, quantity,category) 
VALUES ('P0001', 'NASI GORENG', 20000, 100,'makan'),
	   ('POO02', 'AYAM BAHKAR', 55000, 260,'minum'),
	   ('P0003', 'NASI PECEL', 100000, 300,'makan');

	  
	  
select * from products;

