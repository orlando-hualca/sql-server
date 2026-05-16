CREATE PROCEDURE [dbo].[GetRegionChangesByRowVersion]
(
   @startRow BIGINT 
   ,@endRow  BIGINT 
)
AS
BEGIN
	SELECT [RegionID]
		  ,[RegionDescription]
	FROM [dbo].[Region]
	WHERE [rowversion] > CONVERT(ROWVERSION,@startRow) 
	  AND [rowversion] <= CONVERT(ROWVERSION,@endRow)
END
GO