show databases;

use belajar_mysql;

show tables;

select * from products;

-- Alias untuk Kolom

select 	id as 'kode',
		name as 'nama',
		category as 'kategori',
		description as 'deskripsi',
		price as 'harga'
from products;

-- Alias untuk Tabel

select 	p.id as 'kode',
		p.name as 'nama',
		p.category as 'kategori'
from products as p;

