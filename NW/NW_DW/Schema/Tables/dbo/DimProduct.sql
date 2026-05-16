CREATE TABLE [dbo].[DimProduct]
(
	[ProductSK] [int] IDENTITY(1,1) NOT NULL CONSTRAINT PK_DimProduct PRIMARY KEY,
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