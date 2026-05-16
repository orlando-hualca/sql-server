CREATE TABLE [staging].[orders]
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