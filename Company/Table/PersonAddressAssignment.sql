CREATE TABLE [dbo].[PersonAddressAssignment]
(
	PersonId int not null references person(id),
	Address nvarchar(256) not null,
	Zip nvarchar(16) not null references zip(zip), 
    [Country] NVARCHAR(128) NOT NULL
)
