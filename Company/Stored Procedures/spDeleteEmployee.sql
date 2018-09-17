CREATE PROCEDURE [dbo].[spDeleteEmployee]
	@Id int
AS
	UPDATE Person
	SET DeletedTime = getDate()
	WHERE EmployeeId = @Id
RETURN 0
