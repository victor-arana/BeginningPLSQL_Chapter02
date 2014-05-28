rem to_mmsddsyyyy_or_null.sql
rem by Víctor José Arana Rodríguez
rem FUNCTION to_mmsddsyyyy_or_null test unit
set serveroutput on size 1000000
alter session set nls_date_format  = 'SYYYYMMDD HH24MISS';
begin 
	sys.dbms_output.put_line(to_mmsddsyyyy_or_null('01/01/1980'));
	sys.dbms_output.put_line(to_mmsddsyyyy_or_null('02/29/1980'));
	sys.dbms_output.put_line(to_mmsddsyyyy_or_null('02/29/1981'));
	sys.dbms_output.put_line(to_mmsddsyyyy_or_null('9/9/2006'));
	sys.dbms_output.put_line(to_mmsddsyyyy_or_null('9/9/9999'));
	sys.dbms_output.put_line(to_mmsddsyyyy_or_null('1/1/4712'));
end;
/