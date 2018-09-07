CREATE TRIGGER [tr_EmployeeA_I]
ON dbo.Employee
AFTER INSERT
AS
BEGIN
	DECLARE @Id INT = (SELECT Id FROM inserted)
	INSERT INTO Person (EmployeeId) VALUES (@Id)
END
