CREATE TABLE [dbo].[CustomerCustomerDemo](
	[CustomerID] [nchar](5) NOT NULL,
	[CustomerTypeID] [nchar](10) NOT NULL,
	[rowversion] [timestamp] NOT NULL,
	CONSTRAINT [PK_CustomerCustomerDemo] PRIMARY KEY CLUSTERED ([CustomerID] ASC, [CustomerTypeID] ASC)
);
GO

ALTER TABLE [dbo].[CustomerCustomerDemo] ADD CONSTRAINT [FK_CustomerCustomerDemo_Customers] FOREIGN KEY([CustomerID]) REFERENCES [dbo].[Customers] ([CustomerID]) ON UPDATE CASCADE ON DELETE CASCADE;
GO

ALTER TABLE [dbo].[CustomerCustomerDemo] ADD CONSTRAINT [FK_CustomerCustomerDemo_CustomerDemographics] FOREIGN KEY([CustomerTypeID]) REFERENCES [dbo].[CustomerDemographics] ([CustomerTypeID]) ON UPDATE CASCADE ON DELETE CASCADE;
GO