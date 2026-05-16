CREATE TABLE [dbo].[FactOrders]
(
	[OrderID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[OrderDateKey] [int] NOT NULL,
	[RequiredDateKey] [int] NOT NULL,
	[ShippedDateKey] [int] NOT NULL,
	[CustomerSK] [int] NULL,
	[EmployeeSK] [int] NULL,
	[ShipperSK] [int] NULL,
	[ProductSK] [int] NULL,
	[Quantity] [smallint] NOT NULL,
	[UnitPrice] [money] NOT NULL,
	[Discount] [real] NOT NULL,
	[Freight] [money] NULL,
	[OrderDate] [datetime] NULL,
	[RequiredDate] [datetime] NULL,
	[ShippedDate] [datetime] NULL
);
GO

ALTER TABLE [dbo].[FactOrders] ADD CONSTRAINT PK_FactOrders PRIMARY KEY(OrderID, ProductID);
GO

ALTER TABLE [dbo].[FactOrders] ADD CONSTRAINT [FK_FactOrders_DimCustomer] FOREIGN KEY([CustomerSK]) REFERENCES [dbo].[DimCustomer] ([CustomerSK]);
GO

ALTER TABLE [dbo].[FactOrders] ADD CONSTRAINT [FK_FactOrders_DimEmployee] FOREIGN KEY([EmployeeSK]) REFERENCES [dbo].[DimEmployee] ([EmployeeSK]);
GO

ALTER TABLE [dbo].[FactOrders] ADD CONSTRAINT [FK_FactOrders_DimShipper] FOREIGN KEY([ShipperSK]) REFERENCES [dbo].[DimShipper] ([ShipperSK]);
GO

ALTER TABLE [dbo].[FactOrders] ADD CONSTRAINT [FK_FactOrders_DimProduct] FOREIGN KEY([ProductSK]) REFERENCES [dbo].[DimProduct] ([ProductSK]);
GO

ALTER TABLE [dbo].[FactOrders] ADD CONSTRAINT [FK_FactOrders_DimDate_OrderDate] FOREIGN KEY([OrderDateKey]) REFERENCES [dbo].[DimDate] ([DateKey]);
GO

ALTER TABLE [dbo].[FactOrders] ADD CONSTRAINT [FK_FactOrders_DimDate_RequiredDate] FOREIGN KEY([RequiredDateKey]) REFERENCES [dbo].[DimDate] ([DateKey]);
GO

ALTER TABLE [dbo].[FactOrders] ADD CONSTRAINT [FK_FactOrders_DimDate_ShippedDate] FOREIGN KEY([ShippedDateKey]) REFERENCES [dbo].[DimDate] ([DateKey]);
GO