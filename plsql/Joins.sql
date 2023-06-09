CREATE TABLE PROJECTS
(
    PROJECT_ID NUMBER(8) PRIMARY KEY,
    PROJECT_NAME VARCHAR2(100) NOT NULL
);

CREATE TABLE EMPLOYEES
(
    EMPLOYEE_ID NUMBER(8) PRIMARY KEY,
    EMPLOYEE_NAME VARCHAR2(50) NOT NULL,
    PROJECT_ID NUMBER(8),
    FOREIGN KEY (PROJECT_ID) REFERENCES PROJECTS(PROJECT_ID)
);

INSERT INTO PROJECTS (PROJECT_ID, PROJECT_NAME) VALUES (1, 'FUNDOO NOTES');
INSERT INTO PROJECTS (PROJECT_ID, PROJECT_NAME) VALUES (2, 'BOOKSTORE');

SELECT * FROM PROJECTS;

INSERT INTO EMPLOYEES (EMPLOYEE_ID, EMPLOYEE_NAME, PROJECT_ID) VALUES (1, 'PIYUSH NIMJE', 1);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, EMPLOYEE_NAME, PROJECT_ID) VALUES (2, 'SAURABH RAJANKAR', 1);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, EMPLOYEE_NAME, PROJECT_ID) VALUES (3, 'SIDDHARTH GANDHI', 2);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, EMPLOYEE_NAME, PROJECT_ID) VALUES (4, 'PRAVEEN KUMAR', NULL);

SELECT * FROM EMPLOYEES;


------ JOINS ------

--1. INNER JOIN

SELECT 
EMPLOYEES.EMPLOYEE_NAME, PROJECTS.PROJECT_NAME
FROM EMPLOYEES
INNER JOIN PROJECTS
ON PROJECTS.PROJECT_ID = EMPLOYEES.PROJECT_ID;

--2.LEFT JOIN
SELECT
EMPLOYEES.EMPLOYEE_NAME, PROJECTS.PROJECT_NAME
FROM EMPLOYEES
LEFT OUTER JOIN PROJECTS
ON PROJECTS.PROJECT_ID = EMPLOYEES.PROJECT_ID;

--3.RIGHT JOIN
SELECT
EMPLOYEES.EMPLOYEE_NAME, PROJECTS.PROJECT_NAME
FROM EMPLOYEES
RIGHT OUTER JOIN PROJECTS
ON PROJECTS.PROJECT_ID = EMPLOYEES.PROJECT_ID;

--4.FULL JOIN
SELECT
EMPLOYEES.EMPLOYEE_NAME, PROJECTS.PROJECT_NAME
FROM EMPLOYEES
FULL OUTER JOIN PROJECTS
ON PROJECTS.PROJECT_ID = EMPLOYEES.PROJECT_ID;