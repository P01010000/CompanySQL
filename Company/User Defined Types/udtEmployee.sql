CREATE TYPE [dbo].udtEmployee AS TABLE
(
	LastName NVARCHAR(128),
	FirstName NVARCHAR(128),
	Birthday DATE,
	Phone NVARCHAR(64),
	Gender INT,
	EmployeeSince DATE
)
