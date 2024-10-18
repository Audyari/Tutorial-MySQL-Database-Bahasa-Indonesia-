show databases;

use belajar_mysql;

show tables;

select * from products where id = 'P006';


INSERT INTO products(id, name, price, quantitiy) 
VALUES ("P006", "Mic Ayam Original", 15800, 108);

-- Menghapus Data

delete 
from products
where id = 'P006';