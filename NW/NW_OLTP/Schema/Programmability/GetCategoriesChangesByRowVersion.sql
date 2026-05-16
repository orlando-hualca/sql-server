CREATE PROCEDURE [dbo].[GetCategoriesChangesByRowVersion]
(
   @startRow BIGINT 
   ,@endRow  BIGINT 
)
AS
BEGIN
	SELECT [CategoryID]
		  ,[CategoryName]
		  ,[Description]
		  ,[Picture]
	FROM [dbo].[Categories]
	WHERE [rowversion] > CONVERT(ROWVERSION,@startRow) 
	  AND [rowversion] <= CONVERT(ROWVERSION,@endRow)
END
GO