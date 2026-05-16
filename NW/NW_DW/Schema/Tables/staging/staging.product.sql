CREATE TABLE [staging].[product]
(
	[ProductSK] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[ProductName] [nvarchar](40) NOT NULL,
	[CategoryName] [nvarchar](15) NOT NULL,
	[SupplierName] [nvarchar](40) NOT NULL,
	[QuantityPerUnit] [nvarchar](20) NULL,
	[UnitPrice] [money] NULL,
	[UnitsInStock] [smallint] NULL,
	[UnitsOnOrder] [smallint] NULL,
	[ReorderLevel] [smallint] NULL,
	[Discontinued] [bit] NOT NULL
);
GO