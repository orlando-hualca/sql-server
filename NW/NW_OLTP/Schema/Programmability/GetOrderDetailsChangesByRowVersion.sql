CREATE PROCEDURE [dbo].[GetOrderDetailsChangesByRowVersion]
(
   @startRow BIGINT 
   ,@endRow  BIGINT 
)
AS
BEGIN
	SELECT [OrderID]
		  ,[ProductID]
		  ,[UnitPrice]
		  ,[Quantity]
		  ,[Discount]
	FROM [dbo].[OrderDetails]
	WHERE [rowversion] > CONVERT(ROWVERSION,@startRow) 
	  AND [rowversion] <= CONVERT(ROWVERSION,@endRow)
END
GO