DROP DATABASE IF EXISTS Bamazon_db;

CREATE DATABASE Bamazon_db;

USE Bamazon_db;

CREATE TABLE products (
  item_id INT NOT NULL AUTO_INCREMENT,
  product_name VARCHAR(100) NOT NULL,
  department_name VARCHAR(50) NULL,
  price DECIMAL(7,2) NOT NULL,
  stock_quantity INT NOT NULL DEFAULT '1',
  PRIMARY KEY (item_id)
);
Select * From products;

CREATE TABLE departments (
  department_id INT NOT NULL AUTO_INCREMENT,
  department_name VARCHAR(100) NOT NULL,
  over_head_costs DECIMAL(7,2) NOT NULL DEFAULT '0.00',
  product_sales DECIMAL(7,2) NOT NULL DEFAULT '0.00',
  total_profit DECIMAL(7,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (department_id)
);
Select * From departments;

ALTER TABLE products ADD COLUMN product_sales DECIMAL(7,2) DEFAULT '0.00';

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("tiki_glasses_set", "housewares", 12.50, 200);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("cookie_sheet", "housewares", 9.95, 50);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("comforter_chevron", "bedding", 59.00, 25);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("sheets_tan", "bedding", 27.50, 30);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("lawn_chair", "outdoor", 28.50, 50);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("swimsuit", "clothing", 49.99, 100);

INSERT INTO departments (department_name, over_head_costs, product_sales, total_profit)
VALUES (housewares, 1000, 2000, 1000);

INSERT INTO departments (department_name, over_head_costs, product_sales, total_profit)
VALUES (bedding, 2000, 4000, 2000);

INSERT INTO departments (department_name, over_head_costs, product_sales, total_profit)
VALUES (housewares, 2000, 3000, 1000);

INSERT INTO departments (department_name, over_head_costs, product_sales, total_profit)
VALUES (housewares, 1000, 4000, 3000);


