-- Left Join
select top 10 * 
from Products p left join [Order Details] od on p.ProductID = od.ProductID
where od.OrderID is null
Order by p.ProductID desc 
-- Rigth Join

select top 10 * 
from [Order Details] od RIGHT join  Products p  on p.ProductID = od.ProductID
where od.OrderID is null
Order by p.ProductID desc 

-- Musterilerin 1997 yilindaki satis adetleri nedir ?
select c.CompanyName,count(o.OrderID) Adet
from Customers c
inner join ORders o on c.CustomerID = o.CustomerID
where year(o.OrderDate) =1997
group by c.CompanyName 
Order by Adet desc

-- Kargo Firmalarini 1997 yilinda tasidigi siparis sayisi nedir (Shippers , Orders)
select s.CompanyName,count(o.OrderID) Adet
from Shippers s
inner join Orders o on s.ShipperID = o.ShipVia
where year(o.OrderDate) =1997
group by s.CompanyName 
Order by Adet desc

-- Ulkelerin  1997 yilinda verdigi siparis sayisi nedir 
Select ShipCountry ,count(*) 
from Orders
where year(OrderDate) =1997 
Group by ShipCountry
-- Musterilerin 1998 yilinda yaptigi cirolar nedir ?

-- En fazla siparis alan calisanim hangisidir ?
-- En fazla ciro yapan  ilk 3 calisan kimdir ?

-- 1997 yiinda en fazla siparis verilen urun hangisidir ?

-- Genelde en cok siparis alan kategori hangisidir
