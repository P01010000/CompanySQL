CREATE VIEW [dbo].[viEmployee]	AS
	SELECT e.Id,
		p.Id PersonId,
		e.LastName,
		e.FirstName,
		e.Birthday,
		e.Phone,
		udfGender(e.Gender) Gender,
		e.EmployeeSince
	FROM [Employee] e inner join Person p on e.id = p.EmployeeId
	WHERE p.DeletedTime IS NULL
