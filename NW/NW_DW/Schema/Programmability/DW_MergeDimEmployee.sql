CREATE PROCEDURE [dbo].[DW_MergeDimEmployee]
AS
BEGIN
	UPDATE de
	SET [LastName]           = se.[LastName]
	   ,[FirstName]          = se.[FirstName]
	   ,[Title]              = se.[Title]
	   ,[TitleOfCourtesy]    = se.[TitleOfCourtesy]
	   ,[BirthDate]          = se.[BirthDate]
	   ,[HireDate]           = se.[HireDate]
	   ,[Address]            = se.[Address]
	   ,[City]               = se.[City]
	   ,[Region]             = se.[Region]
	   ,[PostalCode]         = se.[PostalCode]
	   ,[Country]            = se.[Country]
	   ,[HomePhone]          = se.[HomePhone]
	   ,[Extension]          = se.[Extension]
	   ,[ReportsTo]          = se.[ReportsTo]
	   ,[ManagerSK]          = se.[ManagerSK]
	   ,[TerritoryDescription] = se.[TerritoryDescription]
	   ,[RegionDescription]  = se.[RegionDescription]
	FROM [dbo].[DimEmployee] de
	INNER JOIN [staging].[employee] se ON (de.[EmployeeSK] = se.[EmployeeSK])
END
GO