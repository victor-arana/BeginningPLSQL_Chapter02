-- This is an anonymous procedure, so it has no name
DECLARE
	¨/*
		You declare local cursors, variables and methods here
		but you don't need to have a declaration section.
	*/
BEGIN
	-- You write your executable code here

	NULL; -- Ahh, you've got to have at least one command!
	EXCEPTION
		when NO_DATA_FOUND then
			raise_application_error(-20000,'Hey, this is in the exception  handling section!');
END;
/
-- the forward slash on a line by itself says execute this procedure