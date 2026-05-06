CREATE TABLE [dbo].[DimProduct](
    [ProductKey] [int] IDENTITY(1,1) NOT NULL,
    [ProductID] [int] NOT NULL,
    [ProductName] [nvarchar](40) NOT NULL,
    [CategoryID] [int] NULL,
    [CategoryName] [nvarchar](15) NULL,
    [SupplierID] [int] NULL,
    [SupplierName] [nvarchar](40) NULL,
    [QuantityPerUnit] [nvarchar](20) NULL,
    [UnitPrice] [money] NULL,
    [UnitsInStock] [smallint] NULL,
    [UnitsOnOrder] [smallint] NULL,
    [ReorderLevel] [smallint] NULL,
    [Discontinued] [bit] NOT NULL,
    [RowCreatedDate] [datetime] NOT NULL CONSTRAINT [DF_DimProduct_RowCreatedDate] DEFAULT (GETDATE()),
    [RowModifiedDate] [datetime] NOT NULL CONSTRAINT [DF_DimProduct_RowModifiedDate] DEFAULT (GETDATE()),
    CONSTRAINT [PK_DimProduct] PRIMARY KEY CLUSTERED ([ProductKey] ASC)
);