CREATE TRIGGER [tr_CompanyF_I]
ON dbo.Company
FOR INSERT
AS
BEGIN
	INSERT INTO Person (CompanyId)
	SELECT Id FROM inserted
END
