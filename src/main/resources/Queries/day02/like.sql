select * from departments;

/*
 LIKE
 Percent (%) -----> for matching any sequence of numbers
 Underscore (_) --> for matching any single character

 */

 -- Get all employees whose first name starts with "B"
select * from EMPLOYEES
where FIRST_NAME LIKE 'B%';

-- Get me all employees whose first name starts with "B" and has five letters
select * from EMPLOYEES
where FIRST_NAME LIKE 'B____';

-- Get me all five letter names where the middle char is "z"
select * from EMPLOYEES
where FIRST_NAME LIKE '%z_____';

-- Get all first names where the second char is "a"
select * from EMPLOYEES
where FIRST_NAME LIKE '_a%';

-- Get all information whose first name ends with "r"
select * from EMPLOYEES
where FIRST_NAME LIKE '%r';

-- Get all job titles information that ends with manager from jobs table
select * from JOBS
where JOB_TITLE LIKE '%Manager'