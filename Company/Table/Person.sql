CREATE TABLE [dbo].[Person]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [CreationTime] DATETIME2 NOT NULL DEFAULT getDate(), 
    [DeletionTime] DATETIME2 NULL,
	[CompanyId] INT REFERENCES Company(id),
	[EmployeeId] INT REFERENCES Employees(id),
)
