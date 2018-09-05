CREATE TABLE [dbo].[PersonAddressAssignment]
(
	PersonId int not null references person(id),
	address nvarchar(256) not null,
	zip nvarchar(10) not null references zip(zip)
)
