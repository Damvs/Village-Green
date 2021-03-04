CREATE DATABASE IF NOT EXISTS Village_Green CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

USE Village_Green;

CREATE TABLE Categories(
    cat_id INT NOT NULL AUTO_INCREMENT,
    cat_name VARCHAR(50) NOT NULL,
    cat_parent_id INT,
    PRIMARY KEY(cat_id),
    FOREIGN KEY(cat_parent_id) REFERENCES Categories(cat_id)
);

CREATE TABLE Suppliers(
    sup_id INT NOT NULL AUTO_INCREMENT,
    sup_name VARCHAR(50) NOT NULL,
    sup_address TEXT NOT NULL,
    sup_city VARCHAR(50) NOT NULL,
    sup_countries VARCHAR(50) NOT NULL,
    sup_mail VARCHAR(50) NOT NULL,
    sup_phone INT NOT NULL,
    sup_zipcode INT NOT NULL,
    PRIMARY KEY(sup_id)
);

CREATE TABLE Departments(
    dep_id INT NOT NULL AUTO_INCREMENT,
    dep_name VARCHAR(50) NOT NULL,
    PRIMARY KEY(dep_id)
);

CREATE TABLE Employees(
    emp_id INT NOT NULL AUTO_INCREMENT,
    emp_lastname VARCHAR(50) NOT NULL,
    emp_firstname VARCHAR(50) NOT NULL,
    emp_dep_id INT NOT NULL,
    PRIMARY KEY(emp_id),
    FOREIGN KEY(emp_dep_id) REFERENCES Departments(dep_id)
);

CREATE TABLE Customers(
    cus_id INT NOT NULL AUTO_INCREMENT,
    cus_lastname VARCHAR(50) NOT NULL,
    cus_firstname VARCHAR(50) NOT NULL,
    cus_status VARCHAR(50) NOT NULL,
    cus_coefficient DECIMAL(4,2) NOT NULL,
    cus_ref VARCHAR(50) NOT NULL,
    cus_address TEXT NOT NULL,
    cus_zipcode VARCHAR(10) NOT NULL,
    cus_city VARCHAR(50) NOT NULL,
    cus_countries VARCHAR(50) NOT NULL,
    cus_phone VARCHAR(10) NOT NULL,
    cus_mail VARCHAR(50) NOT NULL,
    cus_emp_id INT NOT NULL,
    PRIMARY KEY(cus_id),
    FOREIGN KEY(cus_emp_id) REFERENCES Employees(emp_id)
);

CREATE TABLE Orders(
    ord_id INT NOT NULL AUTO_INCREMENT,
    ord_date DATETIME NOT NULL,
    ord_payment_status VARCHAR(50) NOT NULL,
    ord_d_payment DATE,
    ord_d_ship DATE,
    ord_d_reception DATE,
    ord_status VARCHAR(50),
    ord_billing_adress VARCHAR(150) NOT NULL,
    ord_delivery_address VARCHAR(150) NOT NULL,
    ord_cus_id INT NOT NULL,
    FOREIGN KEY(ord_cus_id) REFERENCES Customers(cus_id),
    PRIMARY KEY(ord_id)
);

CREATE TABLE Products(
    pro_id INT NOT NULL AUTO_INCREMENT,
    pro_cat_id INT NOT NULL,    
    pro_ref VARCHAR(15) NOT NULL,
    pro_name VARCHAR(50) NOT NULL,
    pro_price DECIMAL(7,2) NOT NULL,
    pro_desc TEXT NOT NULL,
    pro_stock INT NOT NULL,
    pro_photo VARCHAR(50),
    pro_status VARCHAR(50) NOT NULL,
    pro_sup_id INT NOT NULL,
    PRIMARY KEY(pro_id),
    FOREIGN KEY(pro_cat_id) REFERENCES Categories(cat_id),
    FOREIGN KEY(pro_sup_id) REFERENCES Suppliers(sup_id)
);

CREATE TABLE Orders_details(
    ode_id INT NOT NULL AUTO_INCREMENT,
    ode_pro_id INT,
    ode_ord_id INT,
    ode_unit_price DECIMAL(7,2) NOT NULL,
    ode_discount DECIMAL(4,2),
    ode_quantity INT NOT NULL,
    PRIMARY KEY(ode_id),
    FOREIGN KEY(ode_pro_id) REFERENCES Products(pro_id),
    FOREIGN KEY(ode_ord_id) REFERENCES Orders(ord_id)
);

CREATE ROLE 'r_village_green_visiteur'@'localhost';

GRANT SELECT
ON Village_Green.Products
TO 'r_village_green_visiteur'@'localhost';


CREATE ROLE 'r_village_green_client'@'localhost';

GRANT SELECT
ON Village_Green.*
TO 'r_village_green_client'@'localhost';

GRANT INSERT, UPDATE
ON Village_Green.Orders, Village_Green.Customers
TO 'r_village_green_client'@'localhost';


CREATE ROLE 'r_village_green_gestion'@'localhost';

GRANT SELECT, INSERT, UPDATE
ON Village_Green.*
TO 'r_village_green_gestion'@'localhost';


CREATE ROLE 'r_village_green_admin'@'localhost';

GRANT ALL
ON Village_Green.*
TO 'r_village_green_admin'@'localhost';
