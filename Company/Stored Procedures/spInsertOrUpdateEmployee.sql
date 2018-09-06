CREATE PROCEDURE [dbo].[spInsertOrUpdateEmployee]
	@eid int,
	@lastName nvarchar(128),
	@firstName nvarchar(128),
	@birthday datetime2(7),
	@phone nvarchar(64),
	@gender int
AS
BEGIN
	IF (@eid IS NULL OR (SELECT COUNT(*) FROM Employee WHERE id = @eid) = 0)
	BEGIN
		INSERT INTO Employee(LastName, FirstName, Birthday, Phone, Gender) VALUES (@lastName, @firstName, @birthday, @phone, @gender)
		SET @eid = @@IDENTITY
		INSERT INTO Person (EmployeeId) VALUES (@eid)
	END
	ELSE
	BEGIN
		UPDATE Employee SET FirstName = ISNULL(@firstName, FirstName),
			LastName = ISNULL(@lastName, LastName),
			FirstName = ISNULL(@firstName, FirstName),
			Birthday = ISNULL(@birthday, Birthday),
			Phone = ISNULL(@phone, Phone),
			Gender = ISNULL(@gender, Gender)
	END
	RETURN @@IDENTITY
END
