CREATE VIEW [dbo].[viDepartment] AS
	SELECT Id,
		Name,
		Description,
		Supervisor,
		SuperDepartment,
		CompanyId,
		CreationTime
	FROM [Department]
	WHERE DeletedTime IS NULL
