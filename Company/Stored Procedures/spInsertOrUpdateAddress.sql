CREATE PROCEDURE [dbo].[spInsertOrUpdateAddress]
	@personId int,
	@addressId int,
	@address nvarchar(256),
	@zip nvarchar(16),
	@place nvarchar(128),
	@countryCode VARCHAR(4),
	@type INT
AS
BEGIN
	IF ( @place IS NOT NULL AND (SELECT COUNT(*) FROM Zip WHERE Zip = @zip AND CountryCode = @countryCode) = 0)
	BEGIN
		INSERT INTO Zip (Zip, CountryCode, Place) VALUES ( @zip, @countryCode, @place)
	END
	IF (@addressId IS NULL OR (SELECT Id FROM Address WHERE id = @addressId) IS NULL)
	BEGIN
		INSERT INTO Address(Address, Zip, CountryCode) VALUES (@address, @zip, @countryCode)
		SET @addressId = SCOPE_IDENTITY()
	END
	ELSE
	BEGIN
		UPDATE Address SET Address = ISNULL(@address, Address),
			Zip = ISNULL(@zip, Zip),
			CountryCode = ISNULL(@countrycode, CountryCode)
			WHERE Id  = @addressId
	END
	IF (@personId IS NOT NULL AND @addressId IS NOT NULL)  INSERT INTO PersonAddressAssignment(PersonId, AddressId, Type) VALUES (@personId, @addressId, @type)
	RETURN @addressId
END
