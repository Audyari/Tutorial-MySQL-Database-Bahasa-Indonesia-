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

-- cara add primary key

alter table products
	add primary key(id);

select * from products;

show create table products;


