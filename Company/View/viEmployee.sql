CREATE VIEW [dbo].[viEmployee]	AS
	SELECT e.Id,
		p.Id PersonId,
		e.LastName,
		e.FirstName,
		e.Birthday,
		e.Phone,
		dbo.fnGender(e.Gender) Gender,
		e.EmployeeSince,
		p.CreationTime
	FROM [Employee] e inner join Person p on e.Id = p.EmployeeId
	WHERE p.DeletedTime IS NULL
