--JOINS

select * from EMPLOYEETABLE_1;
select * from PROJECTS;

--name and email from employeetable_1, projectname from projects table

SELECT EMPLOYEETABLE_1.NAME, EMPLOYEETABLE_1.EMAIL, PROJECTS.PROJECT_NAME
FROM EMPLOYEETABLE_1
INNER JOIN PROJECTS
ON EMPLOYEETABLE_1.ID = PROJECTS.PROJECT_ID

-----------------------------------------------------------------------------------------------------------------------------------------------

--check whether a given character is letter or digit

DECLARE
V_CHAR CHAR(1) := 'A';

BEGIN

IF (V_CHAR >= 'A' AND V_CHAR <= 'Z')
DBMS_OUTPUT.PUT_LINE(V_CHAR || 'IS A LETTER');
END IF;

END;

