CREATE TRIGGER sellStockUpdate
ON [CustomerDetails]
AFTER INSERT
AS BEGIN
DECLARE @productID INT
DECLARE @quantity SMALLINT
SELECT @productID = Product_ID, @quantity = Quantity FROM inserted
UPDATE Cafeteria SET Stock = Stock - @quantity
FROM Cafeteria WHERE ProductID = @productID
SELECT ProductID, ProductName, Stock FROM Cafeteria
WHERE ProductID = @productID
END

CREATE TRIGGER sellDeleteStockUpdate
ON [CustomerDetails]
AFTER DELETE AS BEGIN
DECLARE @productID INT
DECLARE @quantity SMALLINT
SELECT @productID = Product_ID, @quantity = Quantity FROM deleted
UPDATE Cafeteria SET Stock = Stock + @quantity
WHERE ProductID = @productID
SELECT ProductID, ProductName, Stock FROM Cafeteria
WHERE ProductID = @productID
END

CREATE TRIGGER sellUpdateStockUpdate
ON [CustomerDetails]
AFTER UPDATE AS BEGIN 
DECLARE @productID INT
DECLARE @customerID INT
DECLARE @quantity SMALLINT
DECLARE @newQuantity SMALLINT
SELECT @productID = Product_ID, @quantity = Quantity FROM deleted
SELECT @newQuantity = Quantity FROM inserted
UPDATE Cafeteria SET Stock = Stock + (@quantity - @newQuantity)
SELECT ProductID, ProductName, Stock FROM Cafeteria
WHERE ProductID = @productID
END