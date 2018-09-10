CREATE VIEW [dbo].[viPersonAddressAssignment]
	AS SELECT paa.PersonId,
		paa.AddressId,
		dbo.fnAddressType(paa.Type) Type,
		a.Street,
		a.Zip,
		z.Place,
		dbo.fnCountry(a.CountryCode) Country
	FROM PersonAddressAssignment paa
	INNER JOIN Address a ON paa.AddressId = a.Id
	INNER JOIN Zip z ON a.Zip = z.Zip AND a.CountryCode = z.CountryCode