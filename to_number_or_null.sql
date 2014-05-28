CREATE OR REPLACE FUNCTION to_number_or_null(
aiv_number	IN	varchar2 )
return number is
/* 
to_number_or_null.fun
by Víctor José Arana Rodríguez on 04/09/2013
An errorless to_number( ) method
*/
begin
	return to_number(aiv_number);
exception
	when INVALID_NUMBER then
		return NULL;
end to_number_or_null;
/
