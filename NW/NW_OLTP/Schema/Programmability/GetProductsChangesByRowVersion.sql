CREATE PROCEDURE [dbo].[GetProductsChangesByRowVersion]
(
   @startRow BIGINT 
   ,@endRow  BIGINT 
)
AS
BEGIN
	SELECT prd.[ProductID]
		  ,prd.[ProductName]
		  ,prd.[SupplierID]
		  ,prd.[CategoryID]
		  ,prd.[QuantityPerUnit]
		  ,prd.[UnitPrice]
		  ,prd.[UnitsInStock]
		  ,prd.[UnitsOnOrder]
		  ,prd.[ReorderLevel]
		  ,prd.[Discontinued]
		  ,cat.[CategoryName]
		  ,sup.[CompanyName] AS SupplierName
	FROM [dbo].[Products] prd
	LEFT JOIN [dbo].[Categories] cat ON (prd.CategoryID = cat.CategoryID)
	LEFT JOIN [dbo].[Suppliers] sup ON (prd.SupplierID = sup.SupplierID)
	WHERE (prd.[rowversion] > CONVERT(ROWVERSION,@startRow) 
		   AND prd.[rowversion] <= CONVERT(ROWVERSION,@endRow))
	OR (cat.[rowversion] > CONVERT(ROWVERSION,@startRow) 
		   AND cat.[rowversion] <= CONVERT(ROWVERSION,@endRow))
	OR (sup.[rowversion] > CONVERT(ROWVERSION,@startRow) 
		   AND sup.[rowversion] <= CONVERT(ROWVERSION,@endRow))
END
GO