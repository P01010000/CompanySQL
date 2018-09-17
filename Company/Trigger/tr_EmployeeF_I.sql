CREATE TRIGGER [tr_EmployeeF_I]
ON dbo.Employee
FOR INSERT
AS
BEGIN
	INSERT INTO Person (EmployeeId)
	SELECT Id FROM inserted ORDER BY Id
END
