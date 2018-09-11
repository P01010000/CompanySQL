CREATE VIEW [dbo].[viEmployeeDepartmentAssignment] AS
	SELECT DepartmentId,
		EmployeeId,
		CreationTime
	FROM [EmployeeDepartmentAssignment]
