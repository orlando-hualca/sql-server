CREATE TABLE [dbo].[EmployeeTerritories](
	[EmployeeID] [int] NOT NULL,
	[TerritoryID] [nvarchar](20) NOT NULL,
	[rowversion] [timestamp] NOT NULL,
	CONSTRAINT [PK_EmployeeTerritories] PRIMARY KEY CLUSTERED ([EmployeeID] ASC, [TerritoryID] ASC)
);
GO

ALTER TABLE [dbo].[EmployeeTerritories] ADD CONSTRAINT [FK_EmployeeTerritories_Employees] FOREIGN KEY([EmployeeID]) REFERENCES [dbo].[Employees] ([EmployeeID]) ON UPDATE CASCADE ON DELETE CASCADE;
GO

ALTER TABLE [dbo].[EmployeeTerritories] ADD CONSTRAINT [FK_EmployeeTerritories_Territories] FOREIGN KEY([TerritoryID]) REFERENCES [dbo].[Territories] ([TerritoryID]) ON UPDATE CASCADE ON DELETE CASCADE;
GO