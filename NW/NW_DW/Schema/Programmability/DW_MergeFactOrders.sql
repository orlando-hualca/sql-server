CREATE PROCEDURE [dbo].[DW_MergeFactOrders]
AS
BEGIN
	UPDATE fo
	SET [OrderDateKey]    = so.[OrderDateKey]
	   ,[RequiredDateKey] = so.[RequiredDateKey]
	   ,[ShippedDateKey]  = so.[ShippedDateKey]
	   ,[CustomerSK]      = so.[CustomerSK]
	   ,[EmployeeSK]      = so.[EmployeeSK]
	   ,[ShipperSK]       = so.[ShipperSK]
	   ,[ProductSK]       = so.[ProductSK]
	   ,[Quantity]        = so.[Quantity]
	   ,[UnitPrice]       = so.[UnitPrice]
	   ,[Discount]        = so.[Discount]
	   ,[Freight]         = so.[Freight]
	   ,[OrderDate]       = so.[OrderDate]
	   ,[RequiredDate]    = so.[RequiredDate]
	   ,[ShippedDate]     = so.[ShippedDate]
	FROM [dbo].[FactOrders] fo
	INNER JOIN [staging].[orders] so ON (fo.[OrderID] = so.[OrderID] AND fo.[ProductID] = so.[ProductID])
END
GO