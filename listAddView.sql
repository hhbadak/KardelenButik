CREATE VIEW supplierList
AS
SELECT s.SupplierID, s.SupplierName, s.SupplierPhoneNumber, s.CompanyName, s.CompanyAddress, s.CompanyPhoneNumber, s.Status
FROM Suppliers AS s
SELECT * FROM supplierList


CREATE VIEW productList
AS
SELECT p.ProductID, p.ProductName, c.CategoryName, s.SupplierName, p.PurchasePrice, p.SalePrice, p.Stock, p.ReorderLevel, p.Status FROM Cafeteria AS p
JOIN Categories AS c ON c.CategoryID = p.Category_ID
JOIN Suppliers AS s ON s.SupplierID = p.Supplier_ID
SELECT * FROM productList

CREATE VIEW categoryList
AS
SELECT c.CategoryID, c.CategoryName, c.Status FROM Categories AS c
SELECT * FROM categoryList

CREATE VIEW customerDetailsList
AS 
SELECT cd.CustomerDetailID, cus.CustomerName, p.ProductName, cd.Quantity, cd.TheFeeCharged FRoM CustomerDetails AS cd
JOIN Customers AS cus ON cus.CustomerID = cd.Customer_ID
JOIN Cafeteria AS p ON p.ProductID = cd.Product_ID
SELECT * FROM customerDetailsList

CREATE VIEW customerList
AS
SELECT cus.CustomerName, cus.CustomerSurname, cus.CustomerPhoneNumber, cus.TotalMoneyReceived, cus.Status FROM Customers AS cus
SELECT * FROM customerList

CREATE VIEW roomList
AS 
SELECT r.RoomID, r.NumberOfBeds, r.Features, r.Empty, r.RoomNumber FROM Rooms AS r
SELECT * FROM roomList