                                           
--Create database
create database EMPLOYEE_COPY
use EMPLOYEE_COPY

--Modify databse Name
Alter database EMPLOYEE_COPY
Modify name= Employees

--Drop database
drop database EMPLOYEE_COPY



--delete table
drop table emp_data;


--Update data
update emp_data
set emp_name ='Awadhesh Maurya'
where emp_id=1;


--Alter Table (Add Column)
Alter table emp_data
ADD emp_dob date;


--Alter column (Modify datatype)
Alter table emp_data
Alter Column emp_name varchar(30);


--Alter table (Drop Column)
Alter Table emp_data
drop column emp_dob;


--Delete
delete from emp_data
where emp_name='Awadhesh';


--Truncate
truncate table emp_data












