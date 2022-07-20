select * from employees;

/*
 ORDER BY:
 - It allows us to sort our data based on provided column/index.
 - As a DEFAULT it orders ASCENDING from a-z annd 0-9
 - If you wanna order them into DESCENDING, we need to specify that after the column/index
 */

-- Get all information from employees who are making salary from low to high
select * from employees
order by SALARY;

select * from employees
order by SALARY asc;

-- Get all information from employees who are making salary from hight to low
select * from employees
order by SALARY desc;

-- How can we use index to sort data?
select * from employees
order by 8;

select email,FIRST_NAME from employees
order by 2;

-- Get all information where the employee_id<128
-- And order them based on first name alphabetical order
select * from EMPLOYEES
where EMPLOYEE_ID<128
order by FIRST_NAME;

-- IQ --> get me all information from employees based on first name ascending and last name descending
select * from EMPLOYEES
order by FIRST_NAME;

select * from EMPLOYEES
order by FIRST_NAME, LAST_NAME desc;