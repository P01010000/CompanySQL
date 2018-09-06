CREATE TABLE [dbo].[Department]
(
	[Id] INT NOT NULL PRIMARY KEY identity(1,1),
	[Name] NVARCHAR(256) NOT NULL,
	[Description] NVARCHAR(1024) NOT NULL,
	[Supervisor] INT NOT NULL REFERENCES Employees(id),
	[SuperDepartment] INT REFERENCES Department(Id),
	[CompanyId] INT NOT NULL REFERENCES Company(Id), 
    [CreationTime] DATETIME2 NOT NULL DEFAULT getDate(), 
    [DeletionTime] DATETIME2 NULL
)
