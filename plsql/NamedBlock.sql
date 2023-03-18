--named block

CREATE OR REPLACE PROCEDURE XX_ADD_PROC AS

--DECLARE

V_EMPNO NUMBER;
V_NAME VARCHAR2(100);
V_JOB VARCHAR2(100);
V_SALARY NUMBER;
V_DEPTNO NUMBER;

BEGIN

V_EMPNO := 101;
V_NAME := 'Piyush';
V_JOB := 'Engineer';
V_SALARY := 10000;
V_DEPTNO := 10;

dbms_output.put_line('EmpNo:'||V_EMPNO);
dbms_output.put_line('Name:'||V_NAME);
dbms_output.put_line('Job:'||V_JOB);
dbms_output.put_line('Salary:'||V_SALARY);
dbms_output.put_line('DepartmentNo:'||V_DEPTNO);

Exception
When Others Then 
dbms_output.put_line('Exception message');

END;



BEGIN
XX_ADD_PROC;
END;


SELECT * FROM all_objects
WHERE object_name = 'XX_ADD_PROC'