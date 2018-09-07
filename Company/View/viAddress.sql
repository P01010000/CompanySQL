CREATE VIEW [dbo].[viAddress]
	AS SELECT a.Id,
		a.Address,
		a.Zip,
		z.Place,
		a.CountryCode
		FROM [Address] a
		LEFT JOIN Zip z ON a.zip = z.zip AND a.CountryCode = z.CountryCode
