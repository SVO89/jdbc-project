/*
 WHERE
 The WHERE keyword is used to filter the requested results
 */

-- Get me the salary, last name and salary from employees where the first name is David
select FIRST_NAME,LAST_NAME,SALARY from EMPLOYEES
where FIRST_NAME='David';

-- Get me the salary, last name and salary from employees where the first name is David and last name is Lee
select FIRST_NAME,LAST_NAME,SALARY from EMPLOYEES
where FIRST_NAME='David'and LAST_NAME='Lee';

-- Get all information from employees who are making more than 6000
select * from EMPLOYEES
where SALARY>6000;

-- Get all information from employees who are making less than or equal to 6000
select * from EMPLOYEES
where SALARY<=6000;

-- Get me email from employees who are making less than or equal to 6k
select EMAIL from EMPLOYEES
where SALARY<=6000;

-- Get me first name and salary from employees who are making more than 6k and department id=80
select FIRST_NAME,SALARY from EMPLOYEES
where DEPARTMENT_ID=80 and SALARY>6000;

-- Get me first name and salary from employees who are making more or equal to 3k and less thank or equal to 6k
select FIRST_NAME,LAST_NAME,SALARY from EMPLOYEES
WHERE SALARY>=3000 and SALARY<=6000;

-- BETWEEN lower and upper boundaries BETWEEN a specified range
-- Give the first name and salary of all employees who make between 3k&6k
select FIRST_NAME,SALARY from EMPLOYEES
where SALARY between 3000 and 6000;

-- Get me all the info from employees who are working as IT_PROG and SA_REP
select * from EMPLOYEES
where JOB_ID='IT_PROG' or JOB_ID='SA_REP';

-- IN CLAUSE
-- It uses OR logic
-- Get all info from employees who are working as IT_PROG or SA_REP or FI_MGR
select * from EMPLOYEES
where JOB_ID IN ('IT_PROG','SA_REP','FI_MGR');

-- Get all info from employees who are NOT working as IT_PROG or SA_REP or FI_MGR
select * from EMPLOYEES
where JOB_ID NOT IN('IT_PROG','SA_REP','FI_MGR');

-- Get all info from locations table where city is rome or tokyo
select * from LOCATIONS
where CITY IN('Roma','Tokyo');

-- Get all info from employees where ids are equal to 113,145,124,122
select * from EMPLOYEES
where EMPLOYEE_ID IN(113,145,124,122);

-- NULL and NOT NULL
--
-- Get all info from employees where dept is NULL
select * from EMPLOYEES
where DEPARTMENT_ID IS NULL;

-- Get all info from employees where dept is NOT NULL
select * from EMPLOYEES
where DEPARTMENT_ID IS NOT NULL;