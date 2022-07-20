select * from EMPLOYEES;

/*



 */

 -- Not case sensitive
 select * from EMPLOYEES;

-- Display all columns from the departments table
select * from DEPARTMENTS;

-- Display only first name from employees table
select FIRST_NAME from EMPLOYEES;

-- Display only city from locations table
select CITY from LOCATIONS;

-- Display first name, last name and salary from employee table
select FIRST_NAME,LAST_NAME,SALARY from EMPLOYEES;

-- Display country name and region id from country table
select COUNTRY_NAME,REGION_ID from COUNTRIES
where REGION_ID='1';

-- Display job id and job title from jobs table
select JOB_TITLE,JOB_ID from JOBS;

-- Display street address and postal code from locations table
select STREET_ADDRESS,POSTAL_CODE from LOCATIONS;