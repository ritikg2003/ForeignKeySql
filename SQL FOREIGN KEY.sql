create table student(
id serial primary key,
productcode bigint,
item_name varchar,
price int,
discount int,
qty int,
cust_id int,
FOREIGN key (cust_id) references t_Stkfile (id)
)



copy student from 'D:/sql excel/data-1745457972801.csv' delimiter ',' csv header

select *from student




CREATE TABLE GSTDATA(
id serial primary key,
trade_name varchar,
gst_per int,
taxable_value bigint,
tax_amt bigint,
gross_value bigint
)




INSERT INTO GSTDATA (trade_name, gst_per, taxable_value, tax_amt, gross_value)
VALUES 
('ABC Traders', 18, 100000, 18000, 118000),
('XYZ Enterprises', 12, 50000, 6000, 56000),
('MNO Supplies', 5, 75000, 3750, 78750),
('PQR Retailers', 28, 120000, 33600, 153600),
('LMN Wholesale', 18, 85000, 15300, 100300);

select *from student

select *from gstdata


create table gstdata(
id serial primary key,
trade_name varchar,
gst_per int,
taxable_value bigint,
tax_amt bigint,
gross_value bigint,
user_id int,
FOREIGN key (user_id) references student (id)
)

copy gstdata from 'D:/sql excel/data-1745465887711.csv' delimiter ',' csv header

select *from gstdata



create table productdata(
prod_id serial primary key,
product_name varchar,
product_catagory varchar,
product_type varchar,
product_quality varchar
)




INSERT INTO productdata (product_name, product_catagory, product_type, product_quality)
VALUES 
(1, 'Construction', 'Raw Material', 'High'),
(2, 'Electronics', 'Finished Good', 'Medium'),
(3, 'Apparel', 'Garment', 'Premium'),
(4, 'Electronics', 'Device', 'High'),
(5, 'Grocery', 'Consumable', 'Standard');


select *from productdata

create table productdata(
prod_id serial primary key,
product_name varchar,
product_catagory varchar,
product_type varchar,
product_quality varchar,
user_id int,
FOREIGN key (user_id) references student (id)
)


copy productdata from 'D:/sql excel/data-1745466690029.csv' delimiter ',' csv header

select *from productdata


