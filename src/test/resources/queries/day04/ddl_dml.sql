select * from EMPLOYEES;

-- CREATE TABLE

/* Create table syntax:
        create table TableName(
            colName1 DataType Constraints,
            colName2 DataType Constraints,
            colName3 DataType Constraints,
            ...
        );
 */

CREATE TABLE scrumTeam(

    employeeId Integer PRIMARY KEY, --> Not null and unique.
    firstName varchar(30) not null, --> Can't be null.
    jobTitle varchar(20) not null,  --> Can't be null.
    age Integer,                    --> There is no constraints.
    salary Integer
);

select * from SCRUMTEAM;

/*
 INSERT
 Insert into table name (coulmn1, column2,...)
 VALUES (value1,value2,...);
 */

INSERT INTO SCRUMTEAM(EMPLOYEEID,FIRSTNAME,JOBTITLE,AGE,SALARY)
VALUES (1,'MIKE','TESTER',25,120000);

INSERT INTO SCRUMTEAM(EMPLOYEEID,FIRSTNAME,JOBTITLE,AGE,SALARY)
VALUES (2,'JOHN','TESTER',27,130000);

INSERT INTO SCRUMTEAM(EMPLOYEEID,FIRSTNAME,JOBTITLE)
VALUES (3,'DEMBE','DEVELOPER');

select * from SCRUMTEAM;

INSERT INTO SCRUMTEAM
VALUES (4,'HENRY','SM',30,150000);
select * from SCRUMTEAM;

/*
 UPDATE
 Update table name
 SET column1 - value1,
        column2 = value2,...
 WHERE condition;
 */

-- Increase all employee's salary
UPDATE SCRUMTEAM
SET SALARY=SALARY+5000;

select * from SCRUMTEAM;

-- Increase salary for testers
UPDATE SCRUMTEAM
SET SALARY=SALARY+5000
WHERE JOBTITLE='TESTER';
select * from SCRUMTEAM;

-- Add age for DEMBE
UPDATE SCRUMTEAM
SET AGE=34,SALARY=160000
WHERE FIRSTNAME='DEMBE';

SELECT * FROM SCRUMTEAM;

/*
 DELETE
 Syntax: DELETE FROM TABLE_NAME
         WHERE CONDITION;
 */

DELETE FROM SCRUMTEAM
WHERE FIRSTNAME='DEMBE';

SELECT * FROM SCRUMTEAM;

COMMIT;
/*
 ADD NEW COLUMN
 */

-- ADD NEW COLUMN

ALTER TABLE scrumTeam
ADD GENDER VARCHAR(20);

SELECT * FROM SCRUMTEAM;

-- UPDATE ALL SCRUMTEAM GENDER AS MALE
UPDATE SCRUMTEAM
SET GENDER='MALE';
SELECT * FROM SCRUMTEAM;

-- RENAME COLUMN
ALTER TABLE SCRUMTEAM
RENAME COLUMN SALARY TO ANNUAL_SALARY;
select * from SCRUMTEAM;

-- DROP COLUMN
ALTER TABLE SCRUMTEAM
DROP COLUMN GENDER;
select * from SCRUMTEAM;

ALTER TABLE SCRUMTEAM
RENAME TO AGILETEAM;
select * from AGILETEAM;

-- What is the difference between DROP & TRUNCATE?
TRUNCATE TABLE AGILETEAM;
-- TRUNCATE will DELETE ALL OF THE DATA inside the table w/a DROP TABLE ???
COMMIT; --> Save changes