CREATE TABLE [dbo].[Territories](
	[TerritoryID] [nvarchar](20) NOT NULL,
	[TerritoryDescription] [nchar](50) NOT NULL,
	[RegionID] [int] NOT NULL,
	[rowversion] [timestamp] NOT NULL,
	CONSTRAINT [PK_Territories] PRIMARY KEY CLUSTERED ([TerritoryID] ASC)
);
GO

ALTER TABLE [dbo].[Territories] ADD CONSTRAINT [FK_Territories_Region] FOREIGN KEY([RegionID]) REFERENCES [dbo].[Region] ([RegionID]) ON UPDATE CASCADE ON DELETE CASCADE;
GO