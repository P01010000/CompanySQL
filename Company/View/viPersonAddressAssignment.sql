CREATE VIEW [dbo].[viPersonAddressAssignment]
	AS SELECT PersonId,
		Address,
		Zip,
		Country
	FROM PersonAddressAssignment
