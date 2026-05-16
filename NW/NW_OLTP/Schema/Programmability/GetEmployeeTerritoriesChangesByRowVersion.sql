CREATE PROCEDURE [dbo].[GetEmployeeTerritoriesChangesByRowVersion]
(
   @startRow BIGINT 
   ,@endRow  BIGINT 
)
AS
BEGIN
	SELECT [EmployeeID]
		  ,[TerritoryID]
	FROM [dbo].[EmployeeTerritories]
	WHERE [rowversion] > CONVERT(ROWVERSION,@startRow) 
	  AND [rowversion] <= CONVERT(ROWVERSION,@endRow)
END
GO