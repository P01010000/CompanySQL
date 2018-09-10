CREATE TRIGGER [tr_CompanyF_I]
ON dbo.Company
FOR INSERT
AS
BEGIN
	DECLARE @Id INT = (SELECT Id FROM inserted)
	INSERT INTO Person (CompanyId) VALUES (@Id)
END
