create or replace FUNCTION calcularQuincenas(fecha_i IN date, fecha_f IN date)
RETURN number IS
/*
	calcularQuincenas.fun
	Calcula el número de quincenas entre dos fechas
	by Víctor José Arana Rodríguez on 15/09/2013	
*/
BEGIN
	return MONTHS_BETWEEN(fecha_i,fecha_f)*2;
END;
/
