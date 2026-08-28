-- lab-2 --
use bankingdb;

CREATE TABLE Accounts (
    AccountID INT,
    AccountType VARCHAR(20),
    Balance DECIMAL(10,2)
);

	
CREATE TABLE Transactions (
    TransactionID INT,
    TransactionDate DATE,
    Amount DECIMAL(10,2),
    TransactionType VARCHAR(20)
);

CREATE TABLE Branches(
    BranchID INT, BranchName varchar(100),
    BranchAddress varchar(200), BranchPhone varchar(15)
    );
    
CREATE TABLE AccountBranches(
    AssignmentDate date
    );
    
 CREATE TABLE Loans(
    LoanID INT, LoanAmount decimal(10,2),IntrestRate decimal(5,2),StartDate Date, EndDate date    
    );
    
-- structure of table --

desc Accounts;
desc Transactions;

show tables;

#modify the table structure by using Alter command
/*
1) Add new coloumns
2) Modify Existing columns
3) Remane columns
4) Add Constraints
5)Remove Constraints
*/

desc Customers;
show tables;

-- change datatype of existing column --
Alter table customers modify Phone bigint;

desc Customers;

alter table customers add column Balance bigint;
-- Add minimum Balance costraints--
ALTER Table customers
add constraint chk_MinBalance
Check(Balance>=5000);

-- Drop 'accountbranches' table --
-- syntax: DROP TABLE <table_name>; --
DROP table accountbranches;

desc customers;

-- Add Primary key Constraints to 'CustomerID' in Customers Table --
alter table customers    
add primary key(CustomerID);

-- Add unique constraints to 'Phone' of 'Customers' table --
alter table customers
add unique (Phone);    
    
    