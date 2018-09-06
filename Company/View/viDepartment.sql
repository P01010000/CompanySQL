CREATE VIEW [dbo].[viDepartment] AS
	SELECT id,
		Name,
		Description,
		Supervisor,
		SuperDepartment,
		CompanyId
	FROM [Department]
	WHERE DeletedTime IS NULL
