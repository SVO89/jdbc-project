select * from EMPLOYEES
where ROWNUM<100;

-- Display all information of who is getting the top 5 highest salaries in the company
-- THIS IS BAD PRACTICE
select * from EMPLOYEES
where ROWNUM<6
order by SALARY desc;

-- THE CORRECT WAY
select * from (select * from EMPLOYEES order by SALARY desc)
where ROWNUM<6;

-- Display all information from employees who are receiving the 5th highest salary.
select min(SALARY) from (select distinct SALARY from EMPLOYEES order by SALARY desc)
where ROWNUM<6;

-- Display all information from employees who are receiving the 15th highest salary.
select min(SALARY) from (select distinct SALARY from EMPLOYEES order by SALARY desc)
where ROWNUM<16;

-- Display all information from employees who are receiving the 5th highest salary.
select * from EMPLOYEES
where SALARY=13000;

-- Make it dynamic
select * from EMPLOYEES
where SALARY=(select min(SALARY) from (select distinct SALARY from EMPLOYEES order by SALARY desc)
              where ROWNUM<6);