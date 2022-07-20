select * from locations
/*
 MULTI-ROW / AGGREGATE / GROUPING
 count
 max
 min
 avg
 sum

 it will take multiple row and gives single output */

-- COUNT

-- How many departments do we have?
select count(*) from DEPARTMENTS;

-- How many different names we have?
select distinct FIRST_NAME from EMPLOYEES;

select count(distinct FIRST_NAME) from EMPLOYEES;

-- How many employees do we have working as "IT_PROG" or "SA_REP"?
select count(*) from EMPLOYEES
where JOB_ID IN('IT_PROG','SA_REP');

-- NOTE --> If you want to count your result use * to get correct answer

-- How many employees we have as department_id is null
-- This gives us the correct result since it is counting the rows
select count(*) from EMPLOYEES
where DEPARTMENT_ID is null;

-- This gives us wrong data if you want to count rows,
-- since aggregate functions will ignore the null values
select count(DEPARTMENT_ID) from EMPLOYEES
where DEPARTMENT_ID is null;

-- This both gives you the same result since the is no null the result
select count(*) from EMPLOYEES
where DEPARTMENT_ID is not null;

select count(DEPARTMENT_ID) from EMPLOYEES
where DEPARTMENT_ID is not null;

-- Max / Min
-- Get the maximum salary from employees
select max(SALARY) from EMPLOYEES;

-- Get the minimum salary from employees
select min(SALARY) from EMPLOYEES;

-- SUM
-- Get the total salary of employees
select sum(SALARY) from EMPLOYEES;

-- AVG
-- Get the average salary from all employees
select avg(SALARY) from EMPLOYEES;

-- ROUND --> It is not an aggregate function, it is a numeric function
select round(avg(SALARY)) from EMPLOYEES;

-- Only one decimal, two ,three, etc.
select round(avg(SALARY),1) from EMPLOYEES;
select round(avg(SALARY),2) from EMPLOYEES;
select round(avg(SALARY),3) from EMPLOYEES;
select round(avg(SALARY),4) from EMPLOYEES;
select round(avg(SALARY),5) from EMPLOYEES;