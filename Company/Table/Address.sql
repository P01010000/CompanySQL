CREATE TABLE [dbo].[Address]
(
	Id INT NOT NULL PRIMARY KEY  IDENTITY(1,1),
	Address NVARCHAR(256) NOT NULL,
	Zip nvarchar(16) NOT NULL,
    [CountryCode] VARCHAR(4) NOT NULL,
	CreationTime DATETIME2(7) NOT NULL DEFAULT getDate(),
	DeletedTime DATETIME2(7) NULL,
	FOREIGN KEY (Zip, CountryCode) REFERENCES Zip(Zip, CountryCode)
)
