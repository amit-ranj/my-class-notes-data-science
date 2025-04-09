/* 7th April class 35 */

create database nit; -- create database with name nit
use nit;
show tables; -- to show all the tables in database nit (displays empty set when no table is present)
create table student( -- create table with name student and following attribute
	name varchar(30), -- add column name with datatype varchar (character) with 30 as its size
    id int not null primary key, -- add column id with datatype integer with no null value and set it as primary key
    address varchar(50), -- add column address with datatype varchar (character) with 50 as its size
    marks int); -- add column marks with datatype integer and it can have null values
desc student; -- describe student table
insert into student(marks, id, name, address)values(78,12,'prakaash','hyd'); -- Secure way of inserting data - here we specify which data is for which column
insert into student values('kodi',40,'bng',66); -- insecure way of inserting data
insert into student values('alex',45,'hyd',79),('cathy',17,'delhi',90),('dolly', 48, 'pune', 67),('chancy',78,'mumbai',34); -- inserting multiple values
select * from student; -- select all attribute form table student
select name from student; -- select name attribute form student and display
select name,id from student; -- select name and id attribute from student table and display
select * from student where id = 12; -- select all attribute of row where id is 12 form table student and display 
/* update the value of a column of a particular row */
update student set address = 'chennai' where id = 45; -- update student table and set address (change address) to chennai in a row where id is 45
select * from student;
/* add a column */
alter table student add phoneNo int; -- alter table (make changes in table) student and add phoneNo column with int datatype
select * from student;
update student set phoneNo = 123; -- update student table and update phoneNo to 123 for all rows
select * from student;
update student set phoneNo =456 where id = 12; -- update student table and set phoneNO to 456 (basically update) for row where id is 12
select * from student; -- select everything form the table student and display
desc student; -- to describe the table and its attributes
/* to change the column type */
alter table student modify column name varchar(60);
desc student; -- Extra means a new column has been added later.

/* 8th April class 36 */

show databases;
use nit;
show tables;
select * from student;
/* to drop the column*/
alter table student drop column phoneNo;
select * from student;
-- DML (Data Manipulation Language) command to change any data in table
-- DDL (Data Definition Language) command to change the structure of data
/* delete a row*/
delete from student where name = 'kodi'; -- delete a row with name kodi

select sum(marks) from student; -- to display sum of the marks 
select avg(marks) from student; -- to display average of the marks
select count(name) from student; -- count the number of student name
select max(marks) from student;
select min(marks) from student;
select * from student order by marks; -- to arrange the table data by marks in ascending order
select * from student order by marks desc; -- to arrange the table data by marks in descending order
/* wildcard characters
two wildcard characters:-
		% - matches one or more charcters. IN MS Access we use * instead of %
        _ (underscore) - Matches one character. IN MS Access we use ? instead of _.
to find the data starting with a particular character, we use this.
suppose we want the data starting with names 'c' then we write 'c%'.
*/
select * from student where name like 'c%'; -- shows data where names starts with c
select * from student where name like '%y'; -- shows data where names ends with y
select * from student where name like '_a%'; -- shows data where 2nd  letter is a
select * from student where name like '%s_'; -- shows data where 2nd last letter is s
/*Read page 129 in book given*/

/* joins
to join two tables any one attribute must be common */
create table emp(id int not null primary key, salary int, empcode int, name varchar(30));
insert into emp values(12,20000,102,'aman'),(23,60000,104,'arup'),(78,30000,105,'max'),(80,25000,103,'ram'),(34,90000,106,'sam');
select * from emp;
show tables;
/*joins are 3 types:-
	inner join
	left join or left outer join
    right join or right outer join
    full outer join
    */
select * from student;
select * from emp;
-- both tables has one common attribute with name id
select * from student inner join emp on student.id=emp.id; -- shows records common to both table based on id.
select * from emp inner join student on emp.id=student.id; -- shows the same as above code only difference is here data from emp table will be displayed first
select * from student left join emp on student.id=emp.id;  -- shows all records from left table and common attribute of right table
select * from emp left join student on emp.id=student.id;
select * from student right join emp on student.id=emp.id;
select * from emp right join student on emp.id=student.id;
/* Cross join */
select * from student cross join emp;
select * from emp cross join student;

/* 9th April class 37 */


