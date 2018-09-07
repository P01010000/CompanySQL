CREATE PROCEDURE [dbo].[spInsertOrUpdateEmployee]
	@eid int,
	@lastName nvarchar(128),
	@firstName nvarchar(128),
	@birthday datetime,
	@phone nvarchar(64),
	@gender int
AS
BEGIN
	IF (@eid IS NULL OR (SELECT COUNT(*) FROM Employee WHERE Id = @eid) = 0)
	BEGIN
		INSERT INTO Employee(LastName, FirstName, Birthday, Phone, Gender) VALUES (@lastName, @firstName, @birthday, @phone, @gender)
		SET @eid = SCOPE_IDENTITY()
	END
	ELSE
	BEGIN
		UPDATE Employee SET LastName = ISNULL(@lastName, LastName),
			FirstName = ISNULL(@firstName, FirstName),
			Birthday = ISNULL(@birthday, Birthday),
			Phone = ISNULL(@phone, Phone),
			Gender = ISNULL(@gender, Gender)
	END
	RETURN @eid
END
