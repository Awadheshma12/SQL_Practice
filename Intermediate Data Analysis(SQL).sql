use EMPLOYEE
select * from emp_data

--Adding 2 more column with information in--

update emp_data
set emp_state='Karnataka', emp_salary=56000
where emp_id=1

update emp_data
set emp_state='Delhi', emp_salary=18000
where emp_id=2

update emp_data
set emp_state='UP', emp_salary=32000
where emp_id=3

update emp_data
set emp_state='Delhi', emp_salary=132000
where emp_id=4

update emp_data
set emp_state='Karnataka', emp_salary=30000
where emp_id=5

update emp_data
set emp_state='Karnataka', emp_salary=16000
where emp_id=6

update emp_data
set emp_state='Telangana', emp_salary=120000
where emp_id=7

update emp_data
set emp_state='delhi', emp_salary=32000
where emp_id=8

update emp_data
set emp_state='Gujarat', emp_salary=45000
where emp_id=9

update emp_data
set emp_state='UP', emp_salary=28000
where emp_id=10



                              ------Intermediate Data Analysis------
											           
													  
				---Sub Query--- (You need to write subqueries if your data has in multiple  table)

--Find department of employee id 1

select * from department
where emp_id =
(select emp_id from emp_data where emp_id = 10)

--Find employees of data engineering department.

select * from department
where emp_id IN
(select emp_id from emp_data 
where emp_department= 'Data Engineering');



											              --JOINS--
--Find total count of employees for each state.
select count(emp_id) from emp_data
group by emp_state


--Show 'emp_id, name, gender, department, salary from all tables
select
e.emp_id, emp_name,gender_name, emp_department,emp_salary
from emp_data e 

inner join gender g on  e.emp_gender = g.emp_gender
left join department d on e.emp_id = d.emp_id


--Total count of employees whose salary is more than 40000, department wise
select count(emp_name) from emp_data e
right join department d on d.emp_id = e.emp_id

where emp_salary >40000
group by emp_department;



--COPYING DATA FROM MULTIPLE TABLE TO ONE TABLE using JOINS (No need to create table before, It will create automatically
--while inserting data you just need to write the name of table you want to create)

select e.emp_id, emp_name, g.emp_gender,emp_department,c.emp_city into joins_table from emp_data e
INNER JOIN gender g
on e.emp_gender = g.emp_gender
LEFT JOIN department d 
on e.emp_id = d.emp_id
LEFT JOIN city c
on e.emp_id = c.emp_id;

select * from joins_table
                                
								
										  ----Salary category--'Low, good, better, best----
select emp_id, emp_name,emp_salary,
CASE
when emp_salary between 20000 and 40000 then 'Good'
when emp_salary>80000 then 'Best'
when emp_salary> 40000 then 'Better'
ELSE 'LOW'
END AS 'Salary_Category'
from emp_data;

                                         ------String Operation------

--Find length of name column [LEN]
select emp_name, len(emp_name) from emp_data;


--Find employee which contain 'es' in their name [CHARINDEX]
select emp_name from emp_data
where charindex('es', emp_name)>0;


--Replace Bengaluru with Bangalore in state column
select emp_state, replace(emp_state, 'UP', 'Uttar Pradesh') from emp_data;


--Find first 3 letter from name column of id 3
 select emp_name , left(emp_name,3) from emp_data
 where emp_id=3;


 ----Find last 3 letter from name column
 select emp_name , right(emp_name,3) from emp_data;


 --Remove blankspace in start from name of id 7
 select emp_name, ltrim(emp_name) from emp_data
 where emp_id=7;


 --Remove blankspace in end from name of id 5
 select emp_name, rtrim(emp_name) from emp_data
 where emp_id=5;


 --Reverse emp_name
select reverse(emp_name) from emp_data;


--Convert Int into string
select str(emp_salary) as str_salary from emp_data











