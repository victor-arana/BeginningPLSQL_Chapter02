CREATE OR REPLACE FUNCTION to_number_or_null(
aiv_number IN varchar2)
RETURN number IS
/*
to_number_or_nul.fun
by Victor J. Arana Rodríguez on 31/07/2013
An errorless to_number( ) method
*/
BEGIN
	RETURN to_number(aiv_number);
EXCEPTION
	WHEN INVALID_NUMBER THEN
		RETURN NULL;
END to_number_or_null;
/
@fe.sql to_number_or_null;