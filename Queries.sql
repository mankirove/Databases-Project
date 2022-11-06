USE TransportCompanyLTD
GO
SELECT TargetLocation,DayofOrder, COUNT(*) AS Ordercount from Orders group by TargetLocation,DayofOrder


--SELECT TOP 15 DATEDIFF(DAY,PickupTime,DeliveryTime) AS DayTripDuration, Orders.OrderID, Customers.Name,count(t.VINnumber) over (PARTITION BY t.OrderID) as vehcount 
--FROM  Orders
 --JOIN Customers ON Orders.CustomerID = Customers.CustomerID
-- JOIN TripInfo t ON Orders.OrderID= t.OrderID
--where count(t.VINnumber) over (PARTITION BY t.OrderID) >=2
--ORDER BY DayTripduration desc


select e.EmployeeID, count(*) from Employees e
join Orders o on o.EmployeeID=e.EmployeeID
group by e.EmployeeID
having count(*)>1.5*(select avg(counts.OrderCount) from (select count(o1.OrderID) as OrderCount from Employees e1 join Orders o1 on o1.EmployeeID=e1.EmployeeID group by e1.EmployeeID) counts)



SELECT SUM(count_groupped) as total_count
FROM (SELECT COUNT(*) AS count_groupped
FROM Orders 
join OrderDetails od on od.OrderID=Orders.OrderID
WHERE SourceLocation <> TargetLocation and  od.ProductID=501 --for example oil, indeed there only 4 different countries  have oil order
GROUP BY CustomerID
) as sub_table
--4
with Ctp(number,OrderID) as ( select count(VINnumber) over (PARTITION BY OrderID),OrderID from TripInfo )
SELECT distinct Customers.Name,number
FROM Orders
Inner JOIN Customers ON Orders.CustomerID= Customers.CustomerID
JOIN TripInfo ON Orders.OrderID= TripInfo.OrderID
Join ctp c on Orders.OrderID=c.OrderID
where number in  (SELECT   MAX(number) FROM Ctp   Join Customers ON Orders.CustomerID= Customers.CustomerID group by CustomerID ) 


--2
with Ctp(number,OrderID) as ( select count(VINnumber) over (PARTITION BY OrderID),OrderID from TripInfo)
SELECT distinct TOP 15 DATEDIFF(DAY,PickupTime,DeliveryTime) AS DayTripDuration, Orders.OrderID,number
FROM  Orders
 JOIN Customers ON Orders.CustomerID = Customers.CustomerID
 --JOIN TripInfo t ON Orders.OrderID= t.OrderID
 Join ctp c on Orders.OrderID=c.OrderID
 where number>=2
 ORDER BY DayTripduration desc
