CREATE PROCEDURE [dbo].[InsertCompany]
	@name nvarchar(256),
	@description nvarchar(1024),
	@foundedAt datetime2(7),
	@branch nvarchar(256),
	@address nvarchar(256),
	@zip nvarchar(10),
	@place nvarchar(128),
	@cid int
AS
BEGIN
	INSERT INTO Company (Name, Description, FoundedAt, Branch) VALUES (@name, @description, @foundedAt, @branch)
	SET @cid = @@IDENTITY
	INSERT INTO Person (CompanyId) VALUES (@cid)
	RETURN @cid
END
