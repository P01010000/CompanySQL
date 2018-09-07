CREATE FUNCTION [dbo].[fnCountry]
(
	@countryCode VARCHAR(4)
)
RETURNS NVARCHAR(128)
AS
BEGIN
	RETURN (
		SELECT CASE @countryCode
		WHEN 'DE' THEN N'Deutschland'
		WHEN 'US' THEN N'United States of America'
		ELSE @countryCode
		END
	)
END
