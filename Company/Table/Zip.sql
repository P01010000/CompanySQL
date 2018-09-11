CREATE TABLE [dbo].[Zip]
(
	Zip NVARCHAR(16),
	CountryCode VARCHAR(4),
	Place NVARCHAR(128) NOT NULL,
	PRIMARY KEY(Zip, CountryCode)
)
