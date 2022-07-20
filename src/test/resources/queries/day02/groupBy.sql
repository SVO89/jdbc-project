select * from EMPLOYEES;

-- Display average salary for 'IT_PROG'
select avg(SALARY) from EMPLOYEES
where JOB_ID='IT_PROG';

-- Display average salary for 'SA_REP'
select avg(SALARY),min(SALARY),sum(SALARY),max(SALARY) from EMPLOYEES
where JOB_ID='SA_REP';

-- Display average salary for 'MK_MAN'
select avg(SALARY),min(SALARY),sum(SALARY),max(SALARY) from EMPLOYEES
where JOB_ID='MK_MAN';

-- How many different job_id do we have?
select count(*)

select * from EMPLOYEES
where JOB_ID='IT_PROG';

-- Find and group job id's then show the highest salary in that group
select JOB_ID,max(SALARY) from EMPLOYEES
group by JOB_ID;

select JOB_ID,avg(salary),min(salary),sum(SALARY),max(SALARY),count(*) from EMPLOYEES
group by JOB_ID;

-- HINT --> If there is EACH keyword it means we need to use GROUP BY
-- Get me sum(salary) EACH department in Employees table
select DEPARTMENT_ID,JOB_ID,sum(SALARY),count(*),min(SALARY) from EMPLOYEES
where DEPARTMENT_ID is not null
group by DEPARTMENT_ID, JOB_ID
order by DEPARTMENT_ID;