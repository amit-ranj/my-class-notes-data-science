/* SQL CREATE DATABASE
Syntax:
	create database database_name;
    */
create database SQL_notes; -- create database
show databases; -- show all databases
use sql_notes;  -- to use sql-notes database
-- Topic: SQL Operators
/*Various types of operators:
	1. Arithmetic operators (+,-,/,%)
			+ -> to add
            - -> to subtract
            / -> to divide and return quotient
            % -> name: modulus -> to return remainder 
    2. comparison operators (=,!=,<>,>,<,>=,<=,!<,!>)
			= (equal to) -> returns true when two operand equal
            != (not equal to) -> returns true when two operand not equal 
            <> (not equal to) -> returns true when two operand not equal 
            > (greater than) -> returns true when left operand is greater than right 
            < (less than) -> returns true when left operand is less than right
            >= (greater than or equal to) -> returns true when left operand is greater or equal to than right
            <= (less than or equal to) -> returns true when left operand is less or equal to than right
            !< (not greater than) -> returns true when left operand is less or equal to than right
            !> (not less than) -> returns true when left operand is greater or equal to than right
		Here, true means it will return 1 and false means it will return 0
    3. logical operators (ALL, AND, ANY, BETWEEN, EXISTS, IN, LIKE, NOT, OR, IS NULL, UNIQUE)
			ALL - to compare all values in another value set, 
            AND - to have multiple conditions at WHERE clause in SQL, 
            ANY - to have any value compared to any value in the list, 
            BETWEEN - to search values within a set of values, 
            EXISTS - to search for the presence of a row, 
            IN - to compare value to a list of literal values that have been specified, 
            LIKE - to compare a value to similar value using wildcard operators, 
            NOT - is a negate operators used with other logical operators like NOT ALL, 
            OR - to combine multiple conditions in a sql WHERE clause, 
            IS NULL - to compare a value with a Null value, 
            UNIQUE - searches every row of a table for uniqueness
    4. operators used to negate conditions
    */
-- Arithmatic operators Examples:
    select 10 + 25;
    select 10 - 25;
    select 10 * 25;
    select 10 / 5;
    select 10 % 6;
-- Comparison Operators Examples:
	select 10 = 10;
    select 10 = 7;
    select 90 != 09;
    select 60<>90; -- true as 60 is not equal to 09 (<> is another way to write !=)
    select 60<>60; -- flase as 60 is equal to 60
    select 9 > 8;
    select 9 < 8;
    select 9 >= 8;
    select 9 <= 8;
    select 9 !< 8; -- (doubt shows error)
-- Creating table for logical operators
create table Customer( 
id int not null primary key,
name varchar(20),
age int,
address varchar(30),
salary int);
select * from Customer;
insert into Customer(id, name, age, address, salary)values(1, 'Amit',34,'hyd',10),(2, 'Anita',24,'hyd',20),(3, 'Akshat',14,'bang',65),(4, 'Reshma',24,'mumbai',90);
-- Secure way of inserting data - here we specify which data is for which column
insert into Customer values(5,'Ankit',45,'delhi',78); -- insecure way of inserting data
select * from Customer;
-- Logical Operators Examples:
select * from Customer where age >= 30 and salary <= 50; -- shows customer whose age is greater or equal to 30 and salary is less than or equal to 50
select * from customer where age is not null; -- shows customer whose age is not null
select * from customer where age is null; -- shows customer whose age is null
select * from Customer where name like 'A%'; -- shows customer whose name starts with A
select * from Customer where name not like 'A%'; -- shows customer whose name not starts with A
select name,age from customer where age in (24,45); -- shows name and age for customer whose age is 24 and 45
select name,age from customer where age between 30 and 50 -- shows name and age for customer whose age is between 30 and 50
select age from customer where exists ; -- (what does this exists do)

/*SQL expressions -- an expression is a combination of one or more values, operators and SQL functions that evaluates to a values
syntax:
	slect coulmn1,column2,columnN
    from table_name
    where (condition expression) */
select * from customer where salary = 10;
/* SQL Numeric expression:
	used to to perform any mathematical operations in any query
    syntax:
		select numerical_expression as operation_name
        from table name
        where condition;
	we have several built in functions as avg(), sun(), count() etc. 
    */
select (15 + 6) as addition;
select count(*) as 'Records' from customer; -- counts the number of rows
-- SQL DATE EXPRESSIONS -> TO return the current system date and time values
SELECT CURRENT TIMESTAMP; -- (NOT WORKING)
SELECT GETDATE(); -- (NOT WORKING)

/* DROP or DELETE Database
syntax:
	drop database database_name;
    */
    create database dummydatabase;
    show databases;
    drop database dummydatabase;
    show databases;
    
    
