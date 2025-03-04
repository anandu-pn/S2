create database jointest;
use jointest;
create table customer(
cust_id int primary key,
name char(20) 
);
create table product(
product_id int primary key,
product char(12)
);
create table sales(
cust_id int ,
product_id int,
foreign key(cust_id) references customer(cust_id),
foreign key(product_id) references product(product_id)
);