drop database if exists Shopping_Management;
create database Shopping_Management;
use Shopping_Management;

create table customers(
	Customer_Id int primary key auto_increment,
    Customer_Name varchar(100) not null,
    Email varchar(50) unique, 
    Phone_Number char(10) unique not null,
    Age tinyint unsigned check(age > 0),
    Gender enum ('Male', 'Female', 'Other'),
    Country varchar(50) default 'India',
    City varchar(50) not null,
    Pincode char(6) default '201301',
    Registration_Date DATE DEFAULT (CURRENT_DATE),
    Registration_Time TIME DEFAULT (CURRENT_TIME),
    Created_At TIMESTAMP DEFAULT (CURRENT_TIMESTAMP),
    Address varchar(250),
    Customer_Status enum ('Active', 'Inactive', 'Blocked') default 'Active',
    Customer_Notes mediumtext
);

select * from customers;

create table orders (
	Order_Id int primary key auto_increment,
    Customer_Id int,
    Order_Date DATE DEFAULT (CURRENT_DATE),
    Order_Amount decimal(10,2) not null,
    Order_Status enum ('Pending', 'Processing', 'Shipped', 'Delivered', 'Cancelled') default 'Pending',
    Payment_Method enum ('Cash', 'Card', 'UPI', 'Net Banking'),
    Payment_Status enum ('Pending', 'Paid', 'Failed') default 'Pending',
    Shipping_Address varchar(250) not null,
    Delivery_Pincode char(6),
    Quantity tinyint unsigned check (quantity > 0) not null,
    Discount_Amount decimal(5,2) default '0',
    Delivery_Date DATE default NULL,
    Created_At TIMESTAMP DEFAULT (CURRENT_TIMESTAMP),
    Tracking_Number varchar(30) unique,
    Delivery_Status enum ('Not Dispatched', 'In Transit', 'Delivered', 'Returned') default 'Not Dispatched',
    Order_Notes mediumtext,
    FOREIGN KEY (Customer_Id) REFERENCES customers(Customer_Id) ON DELETE CASCADE,
    FOREIGN KEY (Customer_Id) REFERENCES customers(Customer_Id) ON UPDATE CASCADE
);
    
select * from orders;
    
    
    
    
    
    
    
    
    
    
    
    