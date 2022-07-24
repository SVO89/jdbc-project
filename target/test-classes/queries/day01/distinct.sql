/*
 DISTINCT
 Removes duplicates from your requested result(s).
 */

-- Display only first name(s) from employees table
select FIRST_NAME from EMPLOYEES;

-- Display only first name(s) that are unique from the employees table
select distinct FIRST_NAME from EMPLOYEES;

-- Display only unique job id(s) from the employees table
select distinct JOB_ID from EMPLOYEES;

-- Display only unique country id(s) from the locations table
select distinct COUNTRY_ID from LOCATIONS;