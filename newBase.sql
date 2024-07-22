-- Active: 1713352804980@@127.0.0.1@3306@command

CREATE TABLE customer 
 (
    customer_id VARCHAR(20) PRIMARY KEY,
    customer_name VARCHAR(20) NOT NULL,
    customer_tel INT
 ); 

  CREATE TABLE product 
 (
    product_id VARCHAR(20) PRIMARY KEY,
    product_name VARCHAR(20) NOT NULL,
    price INT
 ); 

CREATE TABLE orders 
(
    customer_id VARCHAR(20),
    product_id VARCHAR(20),
    quantity INT,
    Total_amount INT,
    CONSTRAINT fk_customer FOREIGN KEY (customer_id) REFERENCES customer (customer_id),
    CONSTRAINT fk_product FOREIGN KEY (product_id) REFERENCES product (product_id),
    CONSTRAINT prim_KeyOrder PRIMARY KEY (customer_id, product_id)
);

SHOW KEYS FROM orders WHERE Key_name = 'FOREIGN KEY'; 

SHOW INDEX FROM orders;

ALTER TABLE product ADD COLUMN category VARCHAR(20);

ALTER TABLE orders ADD COLUMN orderDate date ;

ALTER TABLE orders 
AlTER COLUMN orderDate SET DEFAULT (SYSDATE());


SHOW TABLE orders;


INSERT INTO product (product_id, product_name, price, category) VALUES ('P01', 'Samsung Galaxy S20', 3299, 'Smartphone');

SELECT * FROM customer;

INSERT INTO product (product_id, product_name, price, category) VALUES ('P02', 'ASUS Notebook', 4599, 'PC');

DESCRIBE customer;

ALTER TABLE product DROP COLUMN price;
ALTER TABLE orders DROP COLUMN Total_amount;

ALTER TABLE orders ADD COLUMN quantity INT;
ALTER TABLE orders ADD COLUMN Total_amount INT;

INSERT INTO orders (customer_id, product_id, orderDate, quantity, Total_amount) VALUES ('C01', 'P02', NULL, 2, 9198);
INSERT INTO orders (customer_id, product_id, orderDate, quantity, Total_amount) VALUES ('C02', 'P01', '2020-05-28', 1, 3299);

DELETE FROM product WHERE (product_id = 'P02');

ALTER TABLE product ADD COLUMN price INT;

INSERT INTO product (product_id, product_name, category, price) VALUES ('P01', 'Samsung Galaxy S20', 'Smartphone', 3299);
INSERT INTO product (product_id, product_name, category, price) VALUES ('P02', 'ASUS Notebook', 'PC', 4599);

INSERT INTO customer (customer_id, customer_name, customer_tel) VALUES ('C01', 'ALI', 71321009);

INSERT INTO customer (customer_id, customer_name, customer_tel) VALUES ('C02', 'ASMA', 77345823);

