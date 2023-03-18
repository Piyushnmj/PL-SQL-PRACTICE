BEGIN

dbms_output.put_line('Hello Piyush');

END;


--static anonymous block

DECLARE
V_Value1 NUMBER;
V_Value2 NUMBER;
V_Total NUMBER;

BEGIN
V_Value1 := 10;
V_Value2 := 20;

V_Total := V_Value1 + V_Value2;

dbms_output.put_line('Total:'||V_Total);
--dbms_output.put_line(V_Total);

END;


--dymanic anonymous block

DECLARE
V_Value1 NUMBER;
V_Value2 NUMBER;
V_Total NUMBER;

BEGIN

V_Total := &V_Value1 + &V_Value2;

dbms_output.put_line('Total:'||V_Total);
--dbms_output.put_line(V_Total);

END;