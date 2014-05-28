CREATE OR  REPLACE FUNCTION to_mmsddsyyyy_or_null(valor IN varchar2)
RETURN date IS
	-- Declaration section
BEGIN
	-- Executable section
	return to_date(valor, 'MM/DD/YYYY');	
EXCEPTION
	/*
	There are too many possible errors, for example;
		ORA-01830: 	date format picture ends before
							converting entire input string
		ORA-01843:	not a valid month
		ORA-01847:	day of month must be between 1
							and last day of month
		ORA-01858:	A non-numeric character was found
							where a numeric was expected
	*/
	when OTHERS then
		return NULL;
END;
/