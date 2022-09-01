                                              
											  -----Basic Exploratory Data Analysis-----

use EMPLOYEE
                                                     -----Employees Information------

--Show all data from emp_data table
select * from emp_data;

--Find 'All employee name'
select emp_name from emp_data;

--"Total employees" in company
select count(emp_id) from emp_data

--Total Employees with unique name
select distinct(emp_name) from emp_data;



                                                ----------------AGE------------------
--Find 'employees whose age more than 30
select emp_id,emp_name,  emp_age from emp_data
where emp_age >30;

--Find 'Youngest and Oldest Employee'
select Min(emp_age) from emp_data;  --You can't print multiple columns while using aggregate function. SOL= Win.Func
select Max(emp_age) from emp_data;

--Average age of employees
select avg(emp_age) from emp_data;

--Find difference between 'Oldest and Yongest Employee'
select max(emp_age)- min(emp_age) from emp_data;

--Young Employee with age less than 25 yrs
select count(emp_id) from emp_data
where emp_age < 25;

--Senior Employee with age more than 45
select count(emp_id) from emp_data
where emp_age > 45;



                                                 --------Departments--------
--Total Department in Company
select count(emp_department) from department;

--Total "Unique departments" in company
select distinct(emp_department) from department;

--Total employee Department wise
select emp_department, count(emp_id) from department
group by emp_department;



                                                ----------Salary------------

--Total salary of all employees
select sum(emp_salary) from salary;

--Average salary of all employees
select Avg(emp_salary) from salary;

--Total count of salary
select count(emp_salary) from salary;

--Total distinct salary count
select distinct(emp_salary) from salary;

--Salary from Highest to lowest
select emp_id, emp_salary from salary
order by emp_salary desc

--Employee with highest salary
select max(emp_salary) from salary;

--Employee with lowest salary
select min(emp_salary) from salary;


                                                  --------Finding data if you don't remember properly-------

--Find Employee whose name contain "a" in start
select emp_name from emp_data
where emp_name like ('a%')

--Find Employee whose name contain "h" in end
select emp_name from emp_data
where emp_name like ('%h')

--Find Employee whose name contain "es" in anywhere
select emp_name from emp_data
where emp_name like ('%es%')

--Find Employee whose name __start and end with__ "a" & "h"
select emp_name from emp_data
where emp_name like ('a%h')


                                                 -----------Location-----------
--All city of employees of the company
select emp_city from location

--Total unique city employees belongs to
select distinct(emp_city) from location

--Total no. of employees city wise
select count(emp_id) from location
group by emp_city;


