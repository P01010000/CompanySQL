CREATE PROCEDURE [dbo].[spInsertOrUpdateDepartment]
	@id int,
	@name nvarchar(128),
	@description nvarchar(128),
	@supervisor int,
	@superDepartmemt int,
	@companyId int
AS
BEGIN
	IF (@id IS NULL)
	BEGIN
		INSERT INTO Department(Name, Description, Supervisor, SuperDepartment, CompanyId) VALUES (@name, @description, @supervisor, @superDepartmemt, @companyId)
		SET @id = SCOPE_IDENTITY()
	END
	ELSE
	BEGIN
		UPDATE Department SET Name = ISNULL(@name, Name),
			Description = ISNULL(@description, Description),
			Supervisor = ISNULL(@supervisor, Supervisor),
			SuperDepartment = ISNULL(@superDepartmemt, SuperDepartment),
			CompanyId = ISNULL(@companyId, CompanyId)
			WHERE Id = @id
	END
	RETURN @id
END
