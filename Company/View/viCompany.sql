CREATE VIEW [dbo].[viCompany] AS
	SELECT c.Id,
		p.Id PersonId,
		c.Name,
		c.Description,
		c.FoundedAt,
		c.Branch
	FROM [Company] c inner join Person p on c.id = p.CompanyId
	WHERE p.DeletionTime IS NULL
