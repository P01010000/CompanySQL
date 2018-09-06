CREATE PROCEDURE [dbo].[spInsertOrUpdateCompany]
	@cid int,
	@name nvarchar(256),
	@description nvarchar(1024),
	@foundedAt datetime2(7),
	@branch nvarchar(256)
AS
BEGIN
	IF ( @cid IS NULL OR (SELECT id FROM Company WHERE id = @cid) IS NULL)
	BEGIN
		INSERT INTO Company (Name, Description, FoundedAt, Branch) VALUES (@name, @description, @foundedAt, @branch)
		SET @cid = @@IDENTITY
		INSERT INTO Person (CompanyId) VALUES (@cid)
	END
	ELSE
	BEGIN
		IF (@name IS NOT NULL) UPDATE Company SET Name = @name WHERE id = @cid
		IF (@description IS NOT NULL) UPDATE Company SET Name = @name WHERE id = @cid
		IF (@foundedAt IS NOT NULL) UPDATE Company SET Name = @name WHERE id = @cid
		IF (@branch IS NOT NULL) UPDATE Company SET Name = @name WHERE id = @cid
	END
	RETURN @cid
END
