CREATE VIEW [dbo].[viPersonAddressAssignment]
	AS SELECT PersonId,
		Address,
		Zip
	FROM PersonAddressAssignment
