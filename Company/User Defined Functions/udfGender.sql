CREATE FUNCTION [dbo].[udfGender]
(
	@genderId int
)
RETURNS VARCHAR(64)
AS
BEGIN
RETURN (SELECT CASE @genderId 
  WHEN 1 THEN 'Male'
  WHEN 2 THEN 'Female'
  ELSE 'Other'
  END
)
END
