CREATE VIEW [dbo].[viAddress]
	AS SELECT a.Id,
		a.Street,
		a.Zip,
		z.Place,
		dbo.fnCountry(a.CountryCode) Country
		FROM [Address] a
		LEFT JOIN Zip z ON a.zip = z.zip AND a.CountryCode = z.CountryCode
