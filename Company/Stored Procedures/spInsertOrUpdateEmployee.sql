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
		IF (@firstName IS NOT NULL) UPDATE Employee SET FirstName = @firstName WHERE id = @eid
		IF (@lastName IS NOT NULL) UPDATE Employee SET LastName = @lastName WHERE id = @eid
		IF (@birthday IS NOT NULL) UPDATE Employee SET Birthday = @birthday WHERE id = @eid
		IF (@phone IS NOT NULL) UPDATE Employee SET Phone = @phone WHERE id = @eid
		IF (@gender IS NOT NULL) UPDATE Employee SET Gender = @gender WHERE id = @eid
	END
	RETURN @@IDENTITY
END
