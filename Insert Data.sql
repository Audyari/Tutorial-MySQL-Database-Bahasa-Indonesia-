show databases;

use belajar_mysql;

show tables;

CREATE TABLE products 
(
    id VARCHAR(10) NOT NULL,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    price INT UNSIGNED NOT NULL,
    quantity INT UNSIGNED NOT NULL DEFAULT 0,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB;

select * from products;

desc products;

INSERT INTO products(id, name, price, quantitiy) 
VALUES ("P006", "Mic Ayam Original", 15800, 108);
 
INSERT INTO products(id, name, description, price, quantitiy) 
VALUES ('PO6G2','Mie Ayam Bakso Tahu', 'Mie Ayam Original + Bakso Tahu', 20000, 106);



INSERT INTO products(id, name, price, quantitiy) 
VALUES ('P0009', 'Mie Ayam Ceken', 20000, 100),
	   ('POO10', 'Mie Ayam Spesial', 25000, 160),
	   ('P0011', 'Mie Ayam Yamin', 15000, 100);

	  
	  
