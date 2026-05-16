DELETE FROM [dbo].[CustomerCustomerDemo];
DELETE FROM [dbo].[EmployeeTerritories];
DELETE FROM [dbo].[OrderDetails];
DELETE FROM [dbo].[Orders];
DELETE FROM [dbo].[Products];
DELETE FROM [dbo].[Territories];
DELETE FROM [dbo].[CustomerDemographics];
DELETE FROM [dbo].[Employees];
DELETE FROM [dbo].[Customers];
DELETE FROM [dbo].[Suppliers];
DELETE FROM [dbo].[Shippers];
DELETE FROM [dbo].[Categories];
DELETE FROM [dbo].[Region];
GO

DBCC CHECKIDENT ('[dbo].[Categories]', RESEED);
DBCC CHECKIDENT ('[dbo].[Products]', RESEED);
DBCC CHECKIDENT ('[dbo].[Suppliers]', RESEED);
DBCC CHECKIDENT ('[dbo].[Shippers]', RESEED);
DBCC CHECKIDENT ('[dbo].[Employees]', RESEED);
DBCC CHECKIDENT ('[dbo].[Orders]', RESEED);
GO