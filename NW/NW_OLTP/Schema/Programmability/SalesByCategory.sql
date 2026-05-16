CREATE PROCEDURE [dbo].[SalesByCategory]
    @CategoryName nvarchar(15), 
    @OrdYear nvarchar(4) = '1998'
AS
IF @OrdYear NOT IN ('1996', '1997', '1998')
BEGIN
    SELECT @OrdYear = '1998'
END

SELECT ProductName,
    TotalPurchase = ROUND(SUM(CONVERT(decimal(14,2), OD.Quantity * (1 - OD.Discount) * OD.UnitPrice)), 0)
FROM [OrderDetails] OD
INNER JOIN Orders O ON OD.OrderID = O.OrderID
INNER JOIN Products P ON OD.ProductID = P.ProductID
INNER JOIN Categories C ON P.CategoryID = C.CategoryID
WHERE C.CategoryName = @CategoryName
    AND SUBSTRING(CONVERT(nvarchar(22), O.OrderDate, 111), 1, 4) = @OrdYear
GROUP BY ProductName
ORDER BY ProductName
GO