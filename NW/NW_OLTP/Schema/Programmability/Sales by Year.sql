CREATE PROCEDURE [dbo].[Sales by Year] 
    @Beginning_Date DateTime, 
    @Ending_Date DateTime 
AS
SELECT Orders.ShippedDate, Orders.OrderID, 
       Subtotal = (SELECT SUM(OD.UnitPrice * OD.Quantity * (1 - OD.Discount))
                   FROM [OrderDetails] OD 
                   WHERE OD.OrderID = Orders.OrderID),
       Year = DATENAME(yy, ShippedDate)
FROM Orders
WHERE Orders.ShippedDate BETWEEN @Beginning_Date AND @Ending_Date
GO