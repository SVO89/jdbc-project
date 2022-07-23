select * from EMPLOYEES;

create view EmployeesInfo as
select substr(FIRST_NAME,1,1)||'.'||substr(LAST_NAME,1,1)||'.' as initials,
FIRST_NAME||' makes '|| SALARY as Employees_salary from EMPLOYEES;

-- S.K. Steven makes 24000
select * from EMPLOYEESINFO;

select INITIALS from EMPLOYEESINFO;

SELECT EMPLOYEES_SALARY from EMPLOYEESINFO;

drop view EMPLOYEESINFO;