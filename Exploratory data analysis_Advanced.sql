use employee

                                        ---Window Function---
--Advantage of Window Function:
--IT SHOW DATA IN FRONT OF EACH ROW.
--You can print multiple column using "OVER()" unlike "GROUP BY"  



--Average of salary

select emp_id, emp_name,emp_salary, avg(emp_salary) over() as 'Avg_salary'
from emp_data;


--Sum of salary

select  e.emp_id, emp_name,emp_department, sum(emp_salary) over() as 'Total Salary' 
from emp_data e
LEFT JOIN department d 
on e.emp_id= d.emp_id;


--Sum of salary for each department in desc order

select  e.emp_id, emp_name,emp_department, sum(emp_salary) over(partition by emp_department order by emp_salary desc) as 'Total_Salary_dept_wise' 
from emp_data e
LEFT JOIN department d 
on e.emp_id= d.emp_id;



--Find RANK() of employees salary--------(You cant't use aggregate function in RANK())_____ORDER_by is mandatory with RANK()

select  emp_id, emp_name,emp_salary, RANK() OVER( order by emp_salary desc) as 'Salary_Rank' 
from emp_data 




--Find DENSE_RANK() of employees salary-------(You cant't use aggregate function in DENSE_RANK())____ORDER_by is mandatory with DENSE_RANK()

select emp_id, emp_name,emp_salary, DENSE_RANK() OVER( order by emp_salary desc) as 'Salary_Dense_Rank' 
from emp_data


--Give ROW_NUMBER() to all employees a/c to gender---------(Order_by is mandatory with ROW_NUMBER())
select emp_id, emp_name,emp_gender, emp_salary, ROW_NUMBER() OVER( partition by emp_gender order by emp_salary) AS 'Row' 
from emp_data

--Divide whole dataset in 3 part
select emp_id, emp_name, emp_gender, emp_salary, NTILE(3) OVER(order by emp_id asc) as 'Tiles'
from emp_data;


