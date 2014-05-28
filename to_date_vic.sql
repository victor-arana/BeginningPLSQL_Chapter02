REM to_date_vic.sql
REM by Victor Jose Arana Rodriguez on 06/08/2013
REM FUNCTION to_date_vic test unit

alter session set nls_date_format = 'SYYYYMMDD HH24MISS';
BEGIN 
	sys.dbms_output.put_line(to_date_vic('01/01/1980'));
	sys.dbms_output.put_line(to_date_vic('02/29/1980'));
	sys.dbms_output.put_line(to_date_vic('02/29/1981'));
	sys.dbms_output.put_line(to_date_vic('9/9/2006'));
	sys.dbms_output.put_line(to_date_vic('9/9/9999'));
	sys.dbms_output.put_line(to_date_vic('1/1/4712 BC'));
END;
/