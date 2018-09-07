CREATE FUNCTION [dbo].[fnAddressType]
(
	@addressType int
)
RETURNS VARCHAR(128)
AS
BEGIN
	RETURN CASE @addressType
		WHEN 1 THEN 'Home'
		WHEN 2 THEN 'Work'
		WHEN 11 THEN 'Company'
		ELSE 'Default'
		END
END
