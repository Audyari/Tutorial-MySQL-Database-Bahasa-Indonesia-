show databases;

create database belajar_mysql;

drop database makan;

use belajar_mysql;

show tables;

=======================================

show engines;

--  	Membuat able

create table barang
(
	kode INT,
	nama VARCHAR(100),
	harga INT,
	jumlah INT
)engine = InnoDB;

describe barang;

desc barang;

show create table barang;

-- 	 mengubah table


ALTER TABLE barang
	MODIFY kode int(11) not null,
	MODIFY nama VARCHAR(100) not null,
	MODIFY harga INT not null default 0,
	MODIFY jumlah INT not null default 0;
	

-- 	ADD column nama_column TEXT;
		
-- 	DROP COLUMN nama_column;

-- 	CHANGE COLUMN nama_column nama_baru text;
-- 	RENAME COLUMN nama TO nama_baru,

-- 	MODIFY nama_baru VARCHAR(100) AFTER jumlah;

-- 	MODIFY name VARCHAR(100) FIRST;


desc barang;

ALTER TABLE barang
	ADD COLUMN waktu_dibuat TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP;

insert into barang (kode, nama) value (1,"APELL");

select * from barang;


-- Menghapus isi tabel dan membuat ulang table
truncate barang;

--	 Menghapus Table

DROP TABLE barang;

=========================================================================


