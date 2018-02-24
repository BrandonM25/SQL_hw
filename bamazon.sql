DROP DATABASE IF EXISTS bamazon_db;
CREATE DATABASE bamazon_db;

USE bamazon_db;

CREATE TABLE products(
id INT NOT NULL auto_increment,
item_id varchar(10),
product_name varchar(100),
department_name varchar(50),
price decimal(10,2),
stock_quantity varchar(10),
primary key (id)
);

insert into products (item_id, product_name, department_name, price, stock_quantity)
values (1, "iphoneX", "electronics", 899.99, 10) ;

insert into products (item_id, product_name, department_name, price, stock_quantity)
values (2, "Vizio TV", "electronics", 699.99, 2) ;

insert into products (item_id, product_name, department_name, price, stock_quantity)
values (3, "drill set", "hardware", 199.99, 35) ;

insert into products (item_id, product_name, department_name, price, stock_quantity)
values (4, "table saw", "hardware", 399.99, 10) ;

insert into products (item_id, product_name, department_name, price, stock_quantity)
values (5, "shovel", "garden", 9.99, 7) ;

insert into products (item_id, product_name, department_name, price, stock_quantity)
values (6, "hoe", "garden", 6.99, 6) ;

insert into products (item_id, product_name, department_name, price, stock_quantity)
values (7, "Chronixx", "music", 9.99, 11) ;

insert into products (item_id, product_name, department_name, price, stock_quantity)
values (8, "Randy Valentine", "music", 9.99, 10) ;

insert into products (item_id, product_name, department_name, price, stock_quantity)
values (9, "FitBit", "electronics", 79.99, 24) ;

insert into products (item_id, product_name, department_name, price, stock_quantity)
values (10, "shelving", "home", 19.99, 30) ;
