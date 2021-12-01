-- create table employee(employee_name nvarchar(50), salary int)

-- insert into employee
-- values('Rebecca',150000),('Kol',100000),('Finn',90000),('Elijah',200000)

select min(salary) third_highest_salary from employee
where salary in 
(select distinct top 3 salary from employee order by salary desc)
