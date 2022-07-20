select * from employees;

--  Review

--  Display all information  where job title President ,Sales Manager, Finance manager

select * from JOBS
where JOB_TITLE='President' or 'Sales Manager' or 'Finance Manager';

select * from JOBS
where JOB_TITLE IN ('President','Sales Manager','Finance Manager');

--  Display all Department that does not have manager_id in departments table

select * from DEPARTMENTS
where MANAGER_ID IS NULL;

--  Display all Locations in US or UK from Locations table

select * from LOCATIONS
where COUNTRY_ID IN('US','UK');

--  Display all Locations except US or UK from Locations table

SELECT * FROM LOCATIONS
WHERE COUNTRY_ID NOT IN ('US','UK');

--  Display all Countries where Region_ID is 1 and Country_Name not Belgium

SELECT * FROM COUNTRIES
WHERE REGION_ID=1 AND COUNTRY_NAME!='Belgium' ;