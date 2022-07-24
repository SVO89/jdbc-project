select * from EMPLOYEES;

-- 1. Display all first name and department_name
select * from EMPLOYEES;
select * from DEPARTMENTS;

SELECT FIRST_NAME,DEPARTMENT_NAME FROM EMPLOYEES E JOIN DEPARTMENTS D
ON E.DEPARTMENT_ID=D.DEPARTMENT_ID;

-- 2.Display all first_name and department_name including the  department without employee
SELECT FIRST_NAME,DEPARTMENT_NAME FROM EMPLOYEES E RIGHT JOIN DEPARTMENTS D
                                                              ON E.DEPARTMENT_ID=D.DEPARTMENT_ID;

SELECT FIRST_NAME,DEPARTMENT_NAME FROM DEPARTMENTS D LEFT JOIN EMPLOYEES E
                                                              ON E.DEPARTMENT_ID=D.DEPARTMENT_ID;

-- 3.Display all first_name and department_name including the employee without department
SELECT FIRST_NAME,DEPARTMENT_NAME FROM EMPLOYEES E LEFT JOIN DEPARTMENTS D
                                                              ON E.DEPARTMENT_ID=D.DEPARTMENT_ID;

-- 4.Display all first_name and department_name incl. the  depart. w/O employee  and  employees  without departments
SELECT FIRST_NAME,DEPARTMENT_NAME FROM EMPLOYEES E FULL JOIN DEPARTMENTS D
ON D.DEPARTMENT_ID=E.DEPARTMENT_ID;

-- 5.Display All cities and related country names
SELECT CITY,COUNTRY_NAME FROM COUNTRIES C RIGHT JOIN LOCATIONS L
ON C.COUNTRY_ID=L.COUNTRY_ID;

-- 6.Display All cities and related country names  including with countries without city
SELECT CITY,COUNTRY_NAME FROM COUNTRIES C LEFT JOIN LOCATIONS L
ON C.COUNTRY_ID=L.COUNTRY_ID;

-- 7.Display all department name and street addresss
SELECT DEPARTMENT_NAME,STREET_ADDRESS FROM DEPARTMENTS D JOIN LOCATIONS L
ON D.LOCATION_ID=L.LOCATION_ID;

-- 8.Display first_name,last_name and department_name,city for all employees
SELECT FIRST_NAME,LAST_NAME,DEPARTMENT_NAME,CITY FROM DEPARTMENTS D RIGHT JOIN EMPLOYEES E
ON D.DEPARTMENT_ID=E.DEPARTMENT_ID
LEFT JOIN LOCATIONS L
ON D.LOCATION_ID=L.LOCATION_ID;

-- 9.Display first_name,last_name and department_name,city,country_name for all employees
SELECT FIRST_NAME,LAST_NAME,DEPARTMENT_NAME,CITY,COUNTRY_NAME FROM DEPARTMENTS D RIGHT JOIN EMPLOYEES E
ON D.DEPARTMENT_ID=E.DEPARTMENT_ID
LEFT JOIN LOCATIONS L
ON D.LOCATION_ID=L.LOCATION_ID
LEFT JOIN COUNTRIES C
ON L.COUNTRY_ID=C.COUNTRY_ID;

--10.Display first_name,last_name and department_name,city who is living in United Kingdom
SELECT FIRST_NAME,LAST_NAME,DEPARTMENT_NAME,CITY,COUNTRY_NAME FROM EMPLOYEES E RIGHT JOIN DEPARTMENTS D
ON E.DEPARTMENT_ID=D.DEPARTMENT_ID
LEFT JOIN LOCATIONS L
ON D.LOCATION_ID=L.LOCATION_ID
LEFT JOIN COUNTRIES C
ON L.COUNTRY_ID = C.COUNTRY_ID
WHERE C.COUNTRY_ID='UK';

--11.Display how many employee we have for each country name
