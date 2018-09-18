CREATE PROCEDURE [dbo].[spInsertOrUpdateCompany]
	@id int,
	@name nvarchar(256),
	@description nvarchar(1024),
	@foundedAt datetime,
	@branch nvarchar(256)
AS
BEGIN
	IF ( @id IS NULL)
	BEGIN
		INSERT INTO Company (Name, Description, FoundedAt, Branch) VALUES (@name, @description, @foundedAt, @branch)
		SET @id = SCOPE_IDENTITY()
		INSERT INTO Department (Name, Description, CompanyId) VALUES ( 'Management', 'Management', @id)
	END
	ELSE
	BEGIN
		UPDATE Company SET Name = ISNULL(@name, Name),
			Description = ISNULL(@description, Description),
			FoundedAt = ISNULL(@foundedAt, FoundedAt),
			Branch = ISNULL(@branch, Branch)
			WHERE Id = @id
	END
	RETURN @id
END
