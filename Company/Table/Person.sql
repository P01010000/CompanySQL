CREATE TABLE [dbo].[Person]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [CreationTime] DATETIME2 NOT NULL DEFAULT getDate(), 
    [DeletedTime] DATETIME2 NULL,
	[CompanyId] INT REFERENCES Company(id),
	[EmployeeId] INT REFERENCES Employee(id),
)
