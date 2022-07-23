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

