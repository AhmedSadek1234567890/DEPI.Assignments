--1. Basic SQL Queries:
--? Write a SQL query to retrieve all columns from a table named employees.
select * from employees;
--? Write a SQL query to retrieve the emp_id,
--emp_name, and dept_id from the 
--employees table, where the location is 'Cairo'
--there is no data becasue there is city cairo in your database
select E.employee_id,e.department_id
from employees E
join departments d
on E.department_id=d.department_id
join locations l
on  d.location_id=l.location_id
where l.city='Cairo';

-- Write a SQL query that displays distinct dept_id values from the employees
--table.
select  e.department_id from  employees e
order by NewId();
--3. Data Definition Language (DDL):
--○ Write a SQL query to create a table students with the following columns: ID
--(Primary Key), First_Name (not null), Last_Name (default 'Unknown'), 
--Address (default 'N/A'), City (default 'N/A'), and Birth_Date.
create Table students
(
id int primary key ,
first_Name varchar(max) Not NUll,
last_Name varchar(max) DEFAULT 'unknown',
Adress varchar(max) Default 'N/A',
City varchar(max) default 'N/A',
Birth_Date Date

);

--○ Write a SQL query to drop the students table
drop Table students
--4. Data Manipulation Language (DML):
--○ Write a SQL query to insert the following values into the students table: 
--('Ahmed', 'Ali', 'Downtown', 'Cairo', '1995-01-01').
insert into dbo.students (id,first_Name,last_Name,Adress,city,Birth_Date)
values (1,'Ahmed', 'Ali', 'Downtown', 'Cairo', '1995-01-01');
--○ Write a SQL query to update the Address of the student with Last_Name = 
--'Ahmed' to 'Garden City'
update students
set Adress='Garden City'
where first_Name='Ahmed'
--Transaction Control:
--○ Write a SQL query to delete the rows from the students table where City is 
--'Cairo', and then rollback the transaction
BEGIN TRANSACTION;

DELETE FROM students
WHERE City = 'Cairo';

ROLLBACK;
------------------------------------------
drop Table  regions;
drop Table countries;
drop Table locations;
drop Table jobs;
drop Table departments;
drop Table employees;
drop Table job_history;
