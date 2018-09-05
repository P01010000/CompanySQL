CREATE TABLE [dbo].[EmployeeDepartmentAssignment]
(
	DepartmentId INT NOT NULL REFERENCES Department(id),
	EmployeeId INT NOT NULL REFERENCES Employees(id),
	Primary Key(DepartmentId, EmployeeId)
)
