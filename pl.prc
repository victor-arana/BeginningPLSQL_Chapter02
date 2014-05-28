create or replace PROCEDURE pl(
aiv_text IN VARCHAR2) IS
/*
pl.prc
by Victor José Arana Rodríguez ON 06/08/2013
A wrapper procedure for SYS.DBMS_OUTPUT.put_line()
for the lazy typist.
*/

BEGIN
                    SELECT x.curp
                    FROM oraclerepetidos x
                    JOIN (
                          SELECT t.curp
                          FROM  oraclerepetidos t
                          GROUP BY t.curp
                          HAVING COUNT(t.curp) > 1) y ON y.curp = x.curp        
                          WHERE --x.codigo_cargo = 'SPJLVO0'
                          x.codigo_cargo = 'SPJDVE0')  
END pl;
/
