select * from employees;

/*
 INNER JOIN
 Will give us only the matching potion of the tables.
 It will eliminate the the portion of the table that is unique and does no match the values of the other table.
 */

 select * from CUSTOMER;
 select  * from ADDRESS;

select first_name,last_name,address,phone
from customer inner join address
                        on CUSTOMER.ADDRESS_ID = ADDRESS.ADDRESS_ID;

SELECT FIRST_NAME,LAST_NAME,ADDRESS.ADDRESS_ID,ADDRESS,PHONE
FROM CUSTOMER INNER JOIN ADDRESS
                        ON CUSTOMER.ADDRESS_ID = ADDRESS.ADDRESS_ID;

-- ALIASES
SELECT FIRST_NAME,LAST_NAME,A.ADDRESS_ID,C.ADDRESS_ID,ADDRESS,PHONE
FROM CUSTOMER C INNER JOIN ADDRESS A
                         ON C.ADDRESS_ID = A.ADDRESS_ID;

/*
 LEFT OUTER JOIN / RIGHT OUTER JOIN
 It will display all the matching parts from both +plus+ all the unique values from the left table
 when no match is available and will display NULL as values.
 */
SELECT FIRST_NAME,LAST_NAME,A.ADDRESS_ID,C.ADDRESS_ID,ADDRESS,PHONE
FROM CUSTOMER C LEFT OUTER JOIN ADDRESS A
                           ON C.ADDRESS_ID = A.ADDRESS_ID;

SELECT FIRST_NAME,LAST_NAME,A.ADDRESS_ID,C.ADDRESS_ID,ADDRESS,PHONE
FROM ADDRESS A LEFT OUTER JOIN CUSTOMER C
                                ON C.ADDRESS_ID = A.ADDRESS_ID;

SELECT FIRST_NAME,LAST_NAME,A.ADDRESS_ID,C.ADDRESS_ID,ADDRESS,PHONE
FROM CUSTOMER C RIGHT OUTER JOIN ADDRESS A
                                ON C.ADDRESS_ID = A.ADDRESS_ID;

SELECT FIRST_NAME,LAST_NAME,A.ADDRESS_ID,C.ADDRESS_ID,ADDRESS,PHONE
FROM ADDRESS A RIGHT OUTER JOIN CUSTOMER C
                               ON C.ADDRESS_ID = A.ADDRESS_ID;