SELECT * FROM EMPLOYEES;

SELECT EMPLOYEE_ID,FIRST_NAME,LAST_NAME,MANAGER_ID,EMPLOYEE_ID, FROM EMPLOYEES;

SELECT workers.FIRST_NAME,workers.LAST_NAME,managers.FIRST_NAME,managers.LAST_NAME
FROM EMPLOYEES workers LEFT JOIN EMPLOYEES managers
    ON workers.MANAGER_ID=managers.EMPLOYEE_ID;