CREATE PROCEDURE [dbo].[spInsertOrUpdateDepartment]
	@did int,
	@name nvarchar(128),
	@description nvarchar(128),
	@supervisor int,
	@superDepartmemt int,
	@companyId int
AS
BEGIN
	IF (@did IS NULL OR (SELECT COUNT(*) FROM Employee WHERE Id = @did) = 0)
	BEGIN
		INSERT INTO Department(Name, Description, Supervisor, SuperDepartment, CompanyId) VALUES (@name, @description, @supervisor, @superDepartmemt, @companyId)
		SET @did = SCOPE_IDENTITY()
	END
	ELSE
	BEGIN
		UPDATE Department SET Name = ISNULL(@name, Name),
			Description = ISNULL(@description, Description),
			Supervisor = ISNULL(@supervisor, Supervisor),
			SuperDepartment = ISNULL(@superDepartmemt, SuperDepartment),
			CompanyId = ISNULL(@companyId, CompanyId)
			WHERE Id = @did
	END
	RETURN @did
END
