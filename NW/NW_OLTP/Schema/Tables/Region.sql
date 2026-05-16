CREATE TABLE [dbo].[Region](
	[RegionID] [int] NOT NULL,
	[RegionDescription] [nchar](50) NOT NULL,
	[rowversion] [timestamp] NOT NULL,
	CONSTRAINT [PK_Region] PRIMARY KEY CLUSTERED ([RegionID] ASC)
);
GO