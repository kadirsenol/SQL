-- Almanyadaki firmalarin en fazla siparis verdikleri urunler nelerdir

-- Musterileri Avrupa Birliginde olduklarini nasil tutariz
Select c.Country ,p.ProductName,sum(od.Quantity) Adet ,Round(sum(od.Quantity*(1-od.Discount)* od.UnitPrice),0) Ciro
from Customers c
inner join CustomerCustomerDemo cd on cd.CustomerID = c.CustomerID
inner join CustomerDemographics demo on demo.CustomerTypeID = cd.CustomerTypeID
inner join Orders o on o.CustomerID=c.CustomerID
inner join [Order Details] od on od.OrderID = o.OrderID
inner join Products p  on p.ProductID = od.ProductID
Where demo.CustomerTypeID = 'NAFTA'
and year(o.OrderDate) = 1997
Group by c.Country ,p.ProductName 
Order by ciro desc

Select demo.CustomerTypeID,sum(od.Quantity) Adet ,Round(sum(od.Quantity*(1-od.Discount)* od.UnitPrice),0) Ciro
from Customers c
inner join CustomerCustomerDemo cd on cd.CustomerID = c.CustomerID
inner join CustomerDemographics demo on demo.CustomerTypeID = cd.CustomerTypeID
inner join Orders o on o.CustomerID=c.CustomerID
inner join [Order Details] od on od.OrderID = o.OrderID
inner join Products p  on p.ProductID = od.ProductID
--Where demo.CustomerTypeID = 'NAFTA'
and year(o.OrderDate) = 1997
Group by demo.CustomerTypeID 
Order by ciro desc

-- NAFTA     	595	16636
-- EU        	543	11827

Select *  from Employees 
