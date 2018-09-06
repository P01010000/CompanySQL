CREATE VIEW [dbo].[viEmployee]	AS
	SELECT e.Id,
		p.Id PersonId,
		e.LastName,
		e.FirstName,
		e.Birthday,
		e.Phone,
		e.Gender,
		e.EmployeeSince
	FROM [Employee] e inner join Person p on e.id = p.EmployeeId
	WHERE p.DeletionTime IS NULL
