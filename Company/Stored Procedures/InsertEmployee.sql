CREATE PROCEDURE [dbo].[InsertEmployee]
	@lastName nvarchar(128),
	@firstName nvarchar(128),
	@birthday datetime2(7),
	@phone nvarchar(64),
	@gender char(1)
AS
BEGIN
	INSERT INTO Employee(LastName, FirstName, Birthday, Phone, Gender) VALUES (@lastName, @firstName, @birthday, @phone, @gender)
	INSERT INTO Person (EmployeeId) VALUES (@@IDENTITY)
	RETURN @@IDENTITY
END
