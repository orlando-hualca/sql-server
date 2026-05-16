CREATE TABLE [dbo].[CustomerDemographics](
	[CustomerTypeID] [nchar](10) NOT NULL,
	[CustomerDesc] [nvarchar](max) NULL,
	[rowversion] [timestamp] NOT NULL,
	CONSTRAINT [PK_CustomerDemographics] PRIMARY KEY CLUSTERED ([CustomerTypeID] ASC)
);
GO