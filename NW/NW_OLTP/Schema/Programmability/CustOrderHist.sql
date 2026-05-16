CREATE PROCEDURE [dbo].[CustOrderHist] @CustomerID nchar(5)
AS
SELECT ProductName, Total = SUM(Quantity)
FROM Products P
INNER JOIN [OrderDetails] OD ON P.ProductID = OD.ProductID
INNER JOIN Orders O ON OD.OrderID = O.OrderID
WHERE O.CustomerID = @CustomerID
GROUP BY ProductName
GO