CREATE TABLE [dbo].[Employee]
(
	[Id] INT NOT NULL PRIMARY KEY identity(1,1),
	PersonId int not null references person(id),
	LastName NVARCHAR(128) NOT NULL,
	FirstName NVARCHAR(128) NOT NULL,
	Birthday Date NOT NULL,
	Phone NVARCHAR(64) NOT NULL,
	Gender CHAR(1) NOT NULL,
	EmployeeSince DATETIME2(7) NOT NULL
)
