CREATE TABLE [dbo].[PersonAddressAssignment]
(
	PersonId int not null references person(id),
	Address nvarchar(256) not null,
	Zip nvarchar(10) not null references zip(zip)
)
