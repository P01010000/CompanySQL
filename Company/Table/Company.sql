CREATE TABLE [dbo].[Company]
(
	[Id] INT NOT NULL PRIMARY KEY identity(1,1),
	[Name] NVARCHAR(256) NOT NULL,
	[Description] NVARCHAR(1024),
	[FoundedAt] DATETIME2 NOT NULL,
	[Branch] NVARCHAR(256),
	[PersonId] int NOT NULL REFERENCES Person(id)
)
