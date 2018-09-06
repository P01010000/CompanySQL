CREATE TABLE [dbo].[Employee]
(
	[Id] INT NOT NULL PRIMARY KEY identity(1,1),
	PersonId int not null references person(id),
	LastName NVARCHAR(128) NOT NULL,
	FirstName NVARCHAR(128) NOT NULL,
	Birthday Date NOT NULL,
	Phone NVARCHAR(64) NOT NULL,
	Gender INT NOT NULL,
	EmployeeSince DATE NOT NULL
)
