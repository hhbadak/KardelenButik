CREATE PROCEDURE usp_AddUniqueCategory
@categoryName NVARCHAR(50)
AS
DECLARE @number INT
SET @number = (SELECT COUNT(*) FROM Categories WHERE CategoryName = @categoryName)
BEGIN
	IF @number = 0
		BEGIN
			INSERT INTO Categories(CategoryName) VALUES(@categoryName)
		END
	ELSE
		BEGIN
			PRINT 'Eklemek Ýstediðiniz Kategori Mevcut'
		END
END

CREATE PROCEDURE collectSellingPrices
AS
BEGIN
DECLARE @total DECIMAL(18,2)
SET @total = (SELECT SUM(TheFeeCharged) FROM CustomerDetails WHERE TheFeeCharged IS NOT NULL)
SELECT @total AS DecimalTotal
END
EXEC collectSellingPrices