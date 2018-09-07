CREATE TABLE [dbo].[PersonAddressAssignment]
(
	PersonId INT NOT NULL REFERENCES Person(Id),
	AddressId INT NOT NULL REFERENCES Address(Id),
	Type INT NOT NULL DEFAULT 0,
	CreationTime DATETIME2(7) NOT NULL DEFAULT getDate(),
	PRIMARY KEY(PersonId, AddressId)
)
