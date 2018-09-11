CREATE PROCEDURE [dbo].[spInsertOrUpdateEmployee]
	@eid int,
	@lastName nvarchar(128),
	@firstName nvarchar(128),
	@birthday datetime,
	@phone nvarchar(64),
	@gender int,
	@employeeSince datetime
AS
BEGIN
	IF (@eid IS NULL OR (SELECT COUNT(*) FROM Employee WHERE Id = @eid) = 0)
	BEGIN
		INSERT INTO Employee(LastName, FirstName, Birthday, Phone, Gender, EmployeeSince) VALUES (@lastName, @firstName, @birthday, @phone, @gender, @employeeSince)
		SET @eid = SCOPE_IDENTITY()
	END
	ELSE
	BEGIN
		UPDATE Employee SET LastName = ISNULL(@lastName, LastName),
			FirstName = ISNULL(@firstName, FirstName),
			Birthday = ISNULL(@birthday, Birthday),
			Phone = ISNULL(@phone, Phone),
			Gender = ISNULL(@gender, Gender),
			EmployeeSince = ISNULL(@employeeSince, EmployeeSince)
			WHERE Id = @eid
	END
	RETURN @eid
END
