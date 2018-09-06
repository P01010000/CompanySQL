CREATE VIEW [dbo].[viEmployeeDepartmentAssignment] AS
	SELECT Id,
		DepartmentId,
		EmployeeId
	FROM [EmployeeDepartmentAssignment]
	WHERE DeletionTime IS NULL
