CREATE VIEW [dbo].[viAddress]
	AS SELECT a.Id,
		a.Street,
		a.Zip,
		z.Place,
		dbo.fnCountry(a.CountryCode) Country
		FROM [Address] a
		LEFT JOIN Zip z ON a.Zip = z.Zip AND a.CountryCode = z.CountryCode
		WHERE a.DeletedTime IS NULL
