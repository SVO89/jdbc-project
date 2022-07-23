select * from EMPLOYEES;

-- ALIASES
-- Rename Column --> Give a temporary name for column. Will not change the value in the database.
-- Rename Table --> Joins

-- Rename column
select FIRST_NAME as given_name from EMPLOYEES;

-- It will not change anything from DB
select FIRST_NAME from EMPLOYEES;

select max(SALARY) as highest_salary from EMPLOYEES;

-- Another to rename
select FIRST_NAME as "given name" from EMPLOYEES;

-- STRING FUNCTIONS in SQL
-- CONCATENATION:
-- In Java --> +     --> firstName+" "+lastName
-- In SQL ---> ||    --> firstName||' '||lastName

-- Add email to @gmail.com domain and display as full email.
select * from EMPLOYEES; --> SKING@gmail.com  --> column ane is full_email

select EMAIL||'@gmail.com' as full_email from EMPLOYEES;

-- Another way
select concat(EMAIL,'@GMAIL.COM') as full_email from EMPLOYEES;

-- INIT CAP
-- Makes the first letter uppercase
select EMAIL

-- LENGTH
-- It will display the length of the provided data
select length(EMAIL) from EMPLOYEES;
-- Display all the employees first name and length of it; in the result order them based on length
select FIRST_NAME,length(FIRST_NAME) as length_firstname from EMPLOYEES
order by length(FIRST_NAME);

-- By column aliases
select FIRST_NAME,length(FIRST_NAME) as length_firstname from EMPLOYEES
order by length_firstname;

-- By column index
select FIRST_NAME,length(FIRST_NAME) as length_firstname from EMPLOYEES
order by 2;

-- SUBSTR(colName,beginningIndex,numberOfChar)

-- If beginningIndex is 0, it is treated as 1.
-- If beginningIndex is negative, it will start from backwards of data.
-- If numberOfChar is omitted, it works till the end.

-- Display all initials from employees --> Steven King --> S.K.
select substr(FIRST_NAME,0,1)||'.'||substr(LAST_NAME,0,1)||'.' from EMPLOYEES;

select substr(FIRST_NAME,1,1)||'.'||substr(LAST_NAME,1,1)||'.' from EMPLOYEES;

-- IQ from screenshot
select FIRST_NAME,SALARY from EMPLOYEES
where SALARY>3000
order by lower(substr(FIRST_NAME,1)) asc,SALARY desc;

