CREATE PROCEDURE [dbo].[CustOrdersDetail] @OrderID int
AS
SELECT ProductName,
    UnitPrice = ROUND(OD.UnitPrice, 2),
    Quantity,
    Discount = CONVERT(int, Discount * 100), 
    ExtendedPrice = ROUND(CONVERT(money, Quantity * (1 - Discount) * OD.UnitPrice), 2)
FROM Products P
INNER JOIN [OrderDetails] OD ON P.ProductID = OD.ProductID
WHERE OD.OrderID = @OrderID
GO