﻿CREATE TRIGGER [tr_EmployeeF_I]
ON dbo.Employee
FOR INSERT
AS
BEGIN
	DECLARE @Id INT = (SELECT Id FROM inserted)
	INSERT INTO Person (EmployeeId) VALUES (@Id)
END
