CREATE OR REPLACE FUNCTION to_date_vic(
aiv_date IN VARCHAR2)
RETURN date IS
/*
to_date_vic.fun
by Victor J. Arana Rodríguez on 31/07/2013
An errorless to_date( ) method
*/
BEGIN
	RETURN to_date(aiv_date,'MM/DD/YYYY');
EXCEPTION
	WHEN OTHERS THEN
		RETURN NULL;
END to_date_vic;
/

