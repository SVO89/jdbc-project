select * from employees;

-- Display job_id's where their average salary is more than 5k
select JOB_ID,avg(SALARY),count(*) from EMPLOYEES
group by JOB_ID
having avg(salary)>5000;

-- Bad practice do not follow
select JOB_ID,avg(SALARY),count(*) from EMPLOYEES
                          where SALARY>5000
group by JOB_ID;

-- Get me department ID'S where employee's count is bigger than 5
select DEPARTMENT_ID,count(*) from EMPLOYEES
group by DEPARTMENT_ID
having count(*)<5;

-- IQ --> Display duplicate first names from employees table
select FIRST_NAME,count(*) from EMPLOYEES
group by FIRST_NAME
having count(*)>1;