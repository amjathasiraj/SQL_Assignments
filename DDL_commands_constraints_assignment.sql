-- Managing databases
show databases;
create database employee;
use employee; -- select database

-- create table
create table departments(
department_id int ,
department_name varchar(100));

-- describe table
desc departments;
show tables;

-- create table
create table location(
location_id int ,
location varchar(30));

-- describe table
desc location;


-- rename
rename table departments to departments_info;
rename table location to locations;

-- create table
create table employees(
employee_id int ,
employee_name varchar(50) ,
gender enum('M' , 'F') ,
age int ,
hire_date date ,
designation varchar(100) ,
deparment_id int ,
location_id int ,
salary decimal(10,2));

-- describe table
desc employees;

-- alter --> modify table structure
-- add new column
alter table employees add email varchar(50);
alter table employees modify designation varchar(300);

-- drop column
alter table employees drop column age;

-- rename column
alter table employees rename column hire_date to date_of_joining;

-- truncate table
truncate table employees;
select * from employees;

-- drop table
drop table employees;

-- drop database
drop database employee;

-- recreate and select the database using former commands
-- create tables using constraints

create table departments(
department_id int primary key,
department_name varchar(100) unique not null);

desc departments;

create table location(
location_id int primary key auto_increment ,
location varchar(30) unique not null);

desc location;


show tables;  

create table employees(
     employee_id int primary key ,
     employee_name varchar(50) not null ,
     gender enum('M','F') ,
     age int check (age >=18) ,
	 hire_date date not null default (current_date),
     designation varchar(100) ,
	 department_id int not null,
     foreign key (department_id) references departments(department_id),
     location_id int not null,
     foreign key (location_id) references location(location_id),
     salary decimal(10,2));
     
     desc employees;






