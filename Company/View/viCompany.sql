CREATE VIEW [dbo].[viCompany] AS
	SELECT c.Id,
		p.Id PersonId,
		c.Name,
		c.Description,
		c.FoundedAt,
		c.Branch,
		p.CreationTime
	FROM [Company] c inner join Person p on c.Id = p.CompanyId
	WHERE p.DeletedTime IS NULL
