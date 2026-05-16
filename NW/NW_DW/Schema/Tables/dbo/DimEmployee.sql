CREATE TABLE [dbo].[DimEmployee]
(
	[EmployeeSK] [int] IDENTITY(1,1) NOT NULL CONSTRAINT PK_DimEmployee PRIMARY KEY,
	[EmployeeID] [int] NOT NULL,
	[LastName] [nvarchar](20) NOT NULL,
	[FirstName] [nvarchar](10) NOT NULL,
	[Title] [nvarchar](30) NULL,
	[TitleOfCourtesy] [nvarchar](25) NULL,
	[BirthDate] [datetime] NULL,
	[HireDate] [datetime] NULL,
	[Address] [nvarchar](60) NULL,
	[City] [nvarchar](15) NULL,
	[Region] [nvarchar](15) NULL,
	[PostalCode] [nvarchar](10) NULL,
	[Country] [nvarchar](15) NULL,
	[HomePhone] [nvarchar](24) NULL,
	[Extension] [nvarchar](4) NULL,
	[ReportsTo] [int] NULL,
	[ManagerSK] [int] NULL,
	[TerritoryDescription] [nchar](50) NULL,
	[RegionDescription] [nchar](50) NULL
);
GO