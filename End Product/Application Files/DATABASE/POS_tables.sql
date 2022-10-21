create database POS ;
create table registration(
id int identity(1,1),
firstname varchar(40), 
lastname varchar(40),
email varchar(40),
gender text,
username varchar(40),
userpassword varchar(40),
confirmpassword varchar(40),
phonenumber int,
userRole text,
date_added DATETIME DEFAULT CURRENT_TIMESTAMP,
primary key(id)
);


CREATE TABLE suppliers(
	supplier_id INT IDENTITY(1,1) NOT NULL,
	supplier_name VARCHAR(100),
	"address" VARCHAR(100),
	contact_number INT,
	note VARCHAR(255),
	company_name VARCHAR(255), 
	date_added DATETIME DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY(supplier_id)
);


CREATE TABLE products (
	id INT NOT NULL IDENTITY(101,1),
	product_name VARCHAR(255),
	category VARCHAR(255),
	description VARCHAR(255),
	supplier VARCHAR(255),
	received_date DATETIME,
	expiryDate DATETIME,
	original_price DECIMAL(10, 2) DEFAULT(0.00),
	selling_price DECIMAL(10, 2)DEFAULT(0.00),
	quantity INT, 
	total DECIMAL(10,2) DEFAULT 0.00,
	profit DECIMAL(10, 2)DEFAULT(0.00),
	date_added DATETIME DEFAULT CURRENT_TIMESTAMP,
	added_by INT,
	PRIMARY KEY(id)
);

CREATE TABLE categories(
	id INT IDENTITY(1, 1),
	category_name VARCHAR(255),
	distributors VARCHAR(255),
	date_added DATETIME DEFAULT CURRENT_TIMESTAMP
	PRIMARY KEY(id)
);

CREATE TABLE store_name (
	id INT PRIMARY KEY IDENTITY(1,1),
	name VARCHAR(255),
	updated_date DATETIME DEFAULT GETDATE(),
)

CREATE TABLE sales(
	sales_id INT IDENTITY(1000,1),
	item_id INT,
	item_name VARCHAR(255),
	quantity INT, 
	amount DECIMAL(10,2),
	payment_method VARCHAR(100),
	sales_date DATETIME DEFAULT CURRENT_TIMESTAMP,
	added_by VARCHAR(100),
	PRIMARY KEY (sales_id),
	FOREIGN KEY(item_id) REFERENCES products(id) ON DELETE SET NULL ON UPDATE CASCADE
)