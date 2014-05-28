CREATE OR REPLACE PROCEDURE wait(
ain_seconds IN number) is
/* 
wait.prc
by Víctor José Arana Rodríguez on 12/09/2013
Wrapper for SYS.DBMS_LOCK.sleep( )
*/
begin
	SYS.DBMS_LOCK.sleep(ain_seconds);
end wait;
/

