CREATE TABLE [dbo].[EmployeeDepartmentAssignment]
(
	DepartmentId INT NOT NULL REFERENCES Department(Id),
	EmployeeId INT NOT NULL REFERENCES Employee(Id),
	[CreationTime] DATETIME2 NOT NULL DEFAULT getDate(), 
    PRIMARY KEY(DepartmentId, EmployeeId)
)
