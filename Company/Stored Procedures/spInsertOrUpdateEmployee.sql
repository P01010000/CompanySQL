CREATE PROCEDURE [dbo].[spInsertOrUpdateEmployee]
	@id int,
	@lastName nvarchar(128),
	@firstName nvarchar(128),
	@birthday datetime,
	@phone nvarchar(64),
	@gender int,
	@employeeSince datetime
AS
BEGIN
	IF (@id IS NULL)
	BEGIN
		INSERT INTO Employee(LastName, FirstName, Birthday, Phone, Gender, EmployeeSince) VALUES (@lastName, @firstName, @birthday, @phone, @gender, @employeeSince)
		SET @id = SCOPE_IDENTITY()
	END
	ELSE
	BEGIN
		UPDATE Employee SET LastName = ISNULL(@lastName, LastName),
			FirstName = ISNULL(@firstName, FirstName),
			Birthday = ISNULL(@birthday, Birthday),
			Phone = ISNULL(@phone, Phone),
			Gender = ISNULL(@gender, Gender),
			EmployeeSince = ISNULL(@employeeSince, EmployeeSince)
			WHERE Id = @id
	END
	RETURN @id
END
