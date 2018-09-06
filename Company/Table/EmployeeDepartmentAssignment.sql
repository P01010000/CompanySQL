CREATE TABLE [dbo].[EmployeeDepartmentAssignment]
(
	ID int NOT NULL PRIMARY KEY IDENTITY(1,1),
	DepartmentId INT NOT NULL REFERENCES Department(id),
	EmployeeId INT NOT NULL REFERENCES Employee(id),
	CreationTime DATETIME2(7) NOT NULL DEFAULT getDate(),
	DeletionTime DATETIME2(7) NULL
)
