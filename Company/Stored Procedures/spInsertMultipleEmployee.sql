CREATE PROCEDURE [dbo].[spInsertMultipleEmployee]
	@employees udtEmployee READONLY
AS
BEGIN
	DECLARE @output TABLE (Id INT)
	INSERT INTO Employee (LastName, FirstName, Birthday, Phone, Gender, EmployeeSince)
	OUTPUT inserted.Id INTO @output
	SELECT LastName, FirstName, Birthday, Phone, Gender, EmployeeSince FROM @employees
	SELECT Id FROM @output
END