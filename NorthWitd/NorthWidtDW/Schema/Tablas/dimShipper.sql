CREATE TABLE [dbo].[DimShipper](
    [ShipperKey] [int] IDENTITY(1,1) NOT NULL,
    [ShipperID] [int] NOT NULL,
    [CompanyName] [nvarchar](40) NOT NULL,
    [Phone] [nvarchar](24) NULL,
    [RowCreatedDate] [datetime] NOT NULL CONSTRAINT [DF_DimShipper_RowCreatedDate] DEFAULT (GETDATE()),
    [RowModifiedDate] [datetime] NOT NULL CONSTRAINT [DF_DimShipper_RowModifiedDate] DEFAULT (GETDATE()),
    CONSTRAINT [PK_DimShipper] PRIMARY KEY CLUSTERED ([ShipperKey] ASC)
);