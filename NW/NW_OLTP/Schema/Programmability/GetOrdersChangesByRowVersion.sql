CREATE PROCEDURE [dbo].[GetOrdersChangesByRowVersion]
(
   @startRow BIGINT 
   ,@endRow  BIGINT 
)
AS
BEGIN
	SELECT DISTINCT ord.[OrderID]
		  ,ord.[CustomerID]
		  ,ord.[EmployeeID]
		  ,ord.[OrderDate]
		  ,ord.[RequiredDate]
		  ,ord.[ShippedDate]
		  ,ord.[ShipVia]
		  ,ord.[Freight]
		  ,ord.[ShipName]
		  ,ord.[ShipAddress]
		  ,ord.[ShipCity]
		  ,ord.[ShipRegion]
		  ,ord.[ShipPostalCode]
		  ,ord.[ShipCountry]
	FROM [dbo].[Orders] ord
	LEFT JOIN [dbo].[OrderDetails] dtl ON (ord.OrderID = dtl.OrderID)
	WHERE (ord.[rowversion] > CONVERT(ROWVERSION,@startRow) 
		   AND ord.[rowversion] <= CONVERT(ROWVERSION,@endRow))
	OR (dtl.[rowversion] > CONVERT(ROWVERSION,@startRow) 
		   AND dtl.[rowversion] <= CONVERT(ROWVERSION,@endRow))
END
GO