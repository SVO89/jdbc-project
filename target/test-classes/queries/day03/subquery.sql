select * from employees;

-- SUBQUERY
-- Query inside query
-- Inner query will run first

-- Display all information from employees who are making the highest salary in the company
select * from EMPLOYEES
where SALARY=(select max(SALARY) from EMPLOYEES);

-- Display all information from the person making the second highest salary
-- Max highest salary
select max(SALARY) from EMPLOYEES;

-- Second highest
select max(SALARY) from EMPLOYEES
where SALARY<24000;

-- Make it dynamic
select max(SALARY) from EMPLOYEES
where SALARY<(select max(SALARY) from EMPLOYEES);

-- Find information about the second highest salary
select * from EMPLOYEES
where SALARY=(select max(SALARY) from EMPLOYEES
              where SALARY<(select max(SALARY) from EMPLOYEES));

-- Display all information from the person making more than average salary
-- Find avg salary
select round(avg(SALARY)) from EMPLOYEES;
-- Get all employees who are getting more than average
select * from EMPLOYEES
where SALARY>6462;
-- Make it dynamic
select * from EMPLOYEES
where SALARY>(select round(avg(SALARY)) from EMPLOYEES)
order by 8 desc; -- COPIED FROM ABOVE!!!