SET SERVEROUTPUT ON;

CREATE TABLE EMPLOYEETABLE_1
(
    ID NUMBER(8) PRIMARY KEY,
    NAME VARCHAR2(50),
    EMAIL VARCHAR2(255),
    DEPT NUMBER
);

INSERT INTO EMPLOYEETABLE_1 VALUES('1', 'PIYUSH', 'piyush@gmail.com', '10');
INSERT INTO EMPLOYEETABLE_1 VALUES('2', 'sAURABH', 'saurabh@gmail.com', '20');
INSERT INTO EMPLOYEETABLE_1 VALUES('3', 'PIYUSH NIMJE', 'piyushN@gmail.com', '30');

select * from EMPLOYEETABLE_1;


DECLARE
dept NUMBER;

BEGIN
DELETE FROM EMPLOYEETABLE_1
WHERE DEPT = &dept;

  IF SQL%FOUND THEN
    DBMS_OUTPUT.PUT_LINE ( 'all rows Delete succeeded for DEPARTMENT ' || dept );
  ELSE
    DBMS_OUTPUT.PUT_LINE ('No Rows found for DEPARTMENT ' || dept);
  END IF;
 
END;