--I WILL BE CREATING 5 TABLES FROM SCRATCH:

--create database
create database EMPLOYEE
use EMPLOYEE

--Creating emp_data TABLE

create table emp_data (emp_id int Not Null Primary Key, emp_name varchar(20), emp_age int, emp_gender varchar(10))
insert into emp_data
values(1, 'Awadhesh', 23, 'M');

insert into emp_data
values(2, 'Santosh', 32, 'M');

insert into emp_data
values(3, 'Preeti', 24, 'F');

insert into emp_data
values(4, 'Vinod',38, 'M');

insert into emp_data
values(5, 'Jamvantee', 34, 'F');

insert into emp_data
values(6, 'Supriya', 23, 'F');

insert into emp_data
values(7, 'Rajesh', 26, 'M');

insert into emp_data
values(8, 'Abhimanyu', 46, 'M');

insert into emp_data
values(9, 'Awadhesh', 24, 'M');

insert into emp_data
values(10, 'Drishti', 39, 'F');

select * from emp_data;


--________________________________________________________________________________________________________________
--Creating 'gender' table

create table gender(gender varchar(10), gender_name varchar(10))

insert into gender
values('M', 'Male');

insert into gender
values('F', 'Female');

insert into gender
values('O', 'Other');

select * from gender

--__________________________________________________________________________________________________________________
--Creating 'department' TABLE

create table department (emp_id int, department varchar(30))

insert into department values(1, 'Data Engineering');
insert into department values(2, 'Pharmacy');
insert into department values(3, 'Nursing');
insert into department values(4, 'Logistics');
insert into department values(5, 'Business');
insert into department values(6, 'Business');
insert into department values(7, 'Data Engineering');
insert into department values(8, 'Data Analytics');
insert into department values(9, 'Data Engineering');
insert into department values(10, 'Nursing');

select * from department

--________________________________________________________________________________________________________________________
--Creating 'location' TABLE
create table location (emp_id int, city varchar(20))

insert into location values(1, 'Bengaluru');
insert into location values(2, 'Delhi');
insert into location values(3, 'Gurgaon');
insert into location values(4, 'Himanchal');
insert into location values(5, 'Bengaluru');
insert into location values(6, 'Bengaluru');
insert into location values(7, 'Chennai');
insert into location values(8, 'Bengaluru');
insert into location values(9, 'Gurgaon');
insert into location values(10, 'Noida');

select * from location


--creating 'salary' TABLE___________________________________________________________________________________________________
Create table salary ( emp_id int, salary float )

insert into salary values (1, 50000)
insert into salary values (2, 28000)
insert into salary values (3, 18000)
insert into salary values (4, 120000)
insert into salary values (5, 50000)
insert into salary values (6, 50000)
insert into salary values (7, 34900)
insert into salary values (8, 42500)
insert into salary values (9, 42500)
insert into salary values (10, 110000)

select * from salary
