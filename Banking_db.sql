create database BankingDB;

use BankingDB;

CREATE table IF NOT EXISTS Customers(
CustomerID int, FirstName varchar(50),
LastName varchar(50), Email varchar(100),
Phone varchar(20)
);

desc  Customers;

-- to add new column 'AccountCreationDate'--->DATE --
alter table Customers
add AccountCreationDate date;

insert into Customers
(CustomerID,FirstName,LastName,Email,Phone,AccountCreationDate)
value(101,'Raj','kurve','raj_k@gmail.com',9881004242,'2025-10-25');

-- to retrieve data from table --
-- syntax: Select * from <table_name>; --
select *from Customers;

select FirstName,Email,AccountCreationDate
from Customers;
