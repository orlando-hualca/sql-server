CREATE PROCEDURE [dbo].[Employee Sales by Country] 
    @Beginning_Date DateTime, 
    @Ending_Date DateTime 
AS
SELECT Employees.Country, Employees.LastName, Employees.FirstName, 
       Orders.ShippedDate, Orders.OrderID, 
       Subtotal = (SELECT SUM(OD.UnitPrice * OD.Quantity * (1 - OD.Discount))
                   FROM [OrderDetails] OD 
                   WHERE OD.OrderID = Orders.OrderID)
FROM Employees 
INNER JOIN Orders ON Employees.EmployeeID = Orders.EmployeeID
WHERE Orders.ShippedDate BETWEEN @Beginning_Date AND @Ending_Date
GO