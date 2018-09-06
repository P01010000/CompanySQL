CREATE TABLE [dbo].[EmployeeDepartmentAssignment]
(
	DepartmentId INT NOT NULL REFERENCES Department(id),
	EmployeeId INT NOT NULL REFERENCES Employee(id),
	PRIMARY KEY(DepartmentId, EmployeeId)
)
