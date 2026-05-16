CREATE PROCEDURE [dbo].[GetShippersChangesByRowVersion]
(
   @startRow BIGINT 
   ,@endRow  BIGINT 
)
AS
BEGIN
	SELECT [ShipperID]
		  ,[CompanyName]
		  ,[Phone]
	FROM [dbo].[Shippers]
	WHERE [rowversion] > CONVERT(ROWVERSION,@startRow) 
	  AND [rowversion] <= CONVERT(ROWVERSION,@endRow)
END
GO