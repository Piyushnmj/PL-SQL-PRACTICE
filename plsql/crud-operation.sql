CREATE TABLE EMPLOYEETABLE 
(
    ID NUMBER(10) PRIMARY KEY,
    NAME VARCHAR2(50),
    EMAIL VARCHAR2(255),
    PHONENO NUMBER(20)
);

--DROP TABLE EMPLOYEETABLE;

SELECT * FROM EMPLOYEETABLE;

INSERT INTO EMPLOYEETABLE VALUES('1', 'PIYUSH', 'piyush@gmail.com', '1234567891');
INSERT INTO EMPLOYEETABLE VALUES('2', 'sAURABH', 'saurabh@gmail.com', '1234567892');
INSERT INTO EMPLOYEETABLE VALUES('3', 'PIYUSH NIMJE', 'piyushN@gmail.com', '1234567893');

UPDATE EMPLOYEETABLE SET NAME='SAURABH' WHERE ID=2;

DELETE FROM EMPLOYEETABLE WHERE ID=3;

