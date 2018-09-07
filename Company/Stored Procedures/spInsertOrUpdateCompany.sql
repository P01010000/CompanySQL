CREATE PROCEDURE [dbo].[spInsertOrUpdateCompany]
	@cid int,
	@name nvarchar(256),
	@description nvarchar(1024),
	@foundedAt datetime,
	@branch nvarchar(256)
AS
BEGIN
	IF ( @cid IS NULL OR (SELECT Id FROM Company WHERE id = @cid) IS NULL)
	BEGIN
		INSERT INTO Company (Name, Description, FoundedAt, Branch) VALUES (@name, @description, @foundedAt, @branch)
		SET @cid = SCOPE_IDENTITY()
		INSERT INTO Department (Name, Description, CompanyId) VALUES ( 'Management', 'Management', @cid)
	END
	ELSE
	BEGIN
		UPDATE Company SET Name = ISNULL(@name, Name),
			Description = ISNULL(@description, Description),
			FoundedAt = ISNULL(@foundedAt, FoundedAt),
			Branch = ISNULL(@branch, Branch)
	END
	RETURN @cid
END
