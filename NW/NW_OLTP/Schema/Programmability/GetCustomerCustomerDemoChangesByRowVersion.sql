CREATE PROCEDURE [dbo].[GetCustomerCustomerDemoChangesByRowVersion]
(
   @startRow BIGINT 
   ,@endRow  BIGINT 
)
AS
BEGIN
	SELECT [CustomerID]
		  ,[CustomerTypeID]
	FROM [dbo].[CustomerCustomerDemo]
	WHERE [rowversion] > CONVERT(ROWVERSION,@startRow) 
	  AND [rowversion] <= CONVERT(ROWVERSION,@endRow)
END
GO