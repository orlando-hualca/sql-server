CREATE TABLE [dbo].[DimCustomer](
    [CustomerKey] [int] IDENTITY(1,1) NOT NULL,
    [CustomerID] [nchar](5) NOT NULL,
    [CompanyName] [nvarchar](40) NOT NULL,
    [ContactName] [nvarchar](30) NULL,
    [ContactTitle] [nvarchar](30) NULL,
    [Address] [nvarchar](60) NULL,
    [City] [nvarchar](15) NULL,
    [Region] [nvarchar](15) NULL,
    [PostalCode] [nvarchar](10) NULL,
    [Country] [nvarchar](15) NULL,
    [Phone] [nvarchar](24) NULL,
    [Fax] [nvarchar](24) NULL,
    [RowCreatedDate] [datetime] NOT NULL CONSTRAINT [DF_DimCustomer_RowCreatedDate] DEFAULT (GETDATE()),
    [RowModifiedDate] [datetime] NOT NULL CONSTRAINT [DF_DimCustomer_RowModifiedDate] DEFAULT (GETDATE()),
    CONSTRAINT [PK_DimCustomer] PRIMARY KEY CLUSTERED ([CustomerKey] ASC)
);