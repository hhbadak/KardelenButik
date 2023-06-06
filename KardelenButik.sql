CREATE DATABASE KardelenButik
GO
CREATE TABLE Rooms
(
RoomID INT IDENTITY (1000,1),
NumberOfBeds TINYINT,
Features NVARCHAR(MAX),
Empty BIT,
RoomNumber SMALLINT,
CONSTRAINT pk_roomsID PRIMARY KEY(RoomID)
)
GO
CREATE TABLE Categories
(
CategoryID INT IDENTITY(1,1),
CategoryName NVARCHAR(50),
Status BIT,
CONSTRAINT pk_categoryID PRIMARY KEY(CategoryID)
)
GO
CREATE TABLE Suppliers
(
SupplierID INT IDENTITY (1,1),
SupplierName NVARCHAR(50),
SupplierPhoneNumber NVARCHAR(11),
CompanyName NVARCHAR(100),
CompanyAddress NVARCHAR(300),
CompanyPhoneNumber NVARCHAR(11),
Status BIT,
CONSTRAINT pk_supplierID PRIMARY KEY(SupplierID)
)
GO
CREATE TABLE Customers
(
CustomerID INT IDENTITY(10,1),
CustomerName NVARCHAR(30),
CustomerSurname NVARCHAR(20),
CustomerPhoneNumber NVARCHAR(11),
TotalMoneyReceived DECIMAL(18,2),
Status BIT,
CONSTRAINT pk_customerID PRIMARY KEY(CustomerID)
)
GO
CREATE TABLE Cafeteria
(
ProductID INT IDENTITY(100,1),
ProductName NVARCHAR(50),
Category_ID INT,
Supplier_ID INT,
PurchasePrice DECIMAL(18,2),
SalePrice DECIMAL(18,2),
Stock INT,
ReorderLevel INT,
Status BIT,
CONSTRAINT pk_cafeteriaID PRIMARY KEY(ProductID),
CONSTRAINT fk_cafeteriaCategoryID FOREIGN KEY(Category_ID) REFERENCES Categories(CategoryID),
CONSTRAINT fk_cafeteriaSupplierID FOREIGN KEY(Supplier_ID) REFERENCES Suppliers(SupplierID)
)
GO
CREATE TABLE CustomerDetails
(
CustomerDetailID INT IDENTITY(1,1),
Customer_ID INT,
Product_ID INT,
Quantity SMALLINT,
TheFeeCharged DECIMAL(18,2),
CONSTRAINT pk_customerDetailID PRIMARY KEY(CustomerDetailID),
CONSTRAINT fk_customerDetailCustomerID FOREIGN KEY(Customer_ID) REFERENCES Customers(CustomerID),
CONSTRAINT fk_customerDetailProductID FOREIGN KEY(Product_ID) REFERENCES Cafeteria(ProductID)
)
GO
CREATE TRIGGER UpdateStockAfterSale
ON [CustomerDetails]
AFTER INSERT
AS BEGIN
DECLARE @productID INT
DECLARE @quantity SMALLINT
SELECT @productID = Product_ID, @quantity = Quantity FROM INSERTED
UPDATE Cafeteria SET Stock = Stock - @quantity
FROM Cafeteria WHERE ProductID = @productID
SELECT ProductID, ProductName, Stock FROM Cafeteria
WHERE ProductID = @productID
END
GO
CREATE TRIGGER DeleteSaleUpdateStock
ON [CustomerDetails]
AFTER DELETE AS BEGIN
DECLARE @productID INT
DECLARE @quantity SMALLINT
SELECT @productID = Product_ID, @quantity = Quantity FROM DELETED
UPDATE Cafeteria SET Stock = Stock + @quantity
WHERE ProductID = @productID
END
GO
CREATE TRIGGER UpdateSaleUpdateStock
ON [CustomerDetails]
AFTER UPDATE AS BEGIN
DECLARE @productID INT
DECLARE @customerID INT
DECLARE @quantity SMALLINT
DECLARE @newQuantity SMALLINT
SELECT @productID = Product_ID, @quantity = Quantity FROM DELETED
SELECT @newQuantity = Quantity FROM INSERTED
UPDATE Cafeteria SET Stock = Stock + (@quantity - @newQuantity)
SELECT ProductID, ProductName, Stock FROM Cafeteria
WHERE ProductID = @productID
END