CREATE TABLE [dbo].[EmployeeDepartmentAssignment]
(
	DepartmentId INT NOT NULL REFERENCES Department(id),
	EmployeeId INT NOT NULL REFERENCES Employee(id),
	[CreationTime] DATETIME2 NOT NULL DEFAULT getDate(), 
    PRIMARY KEY(DepartmentId, EmployeeId)
)
