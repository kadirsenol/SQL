-- JOIN IŞLEMLERI
-- 1) Inner Join: Bir tablodaki her bir kaydın diğer tabloda bir 
-- karşılığı olan kayıtlar listelenir. Inner Join ifadesini yazarken 
-- Inner cümlesini yazmazsak da (sadece Join yazarsak) bu yine 
-- Inner Join olarak işleme alınır.

-- NOT: Eğer seçtiğimiz sütunlar her iki tabloda da bulunuyorsa, 
-- o sütunu hangi tablodan seçtiğimizi açıkça belirtmemiz gerekir. 
-- (Products.CategoryID gibi)
-- Product Tablosundaki urunleri kategori isimleriyle listeleyelim

select Products.ProductName,Categories.CategoryName
from Products 
inner join Categories on Categories.CategoryID = Products.CategoryID
Where Categories.CategoryName='Confections'

-- Product tablosundaki Supplier 'larin CompanyNAme'lerini getirin
Select p.ProductID,p.ProductName, c.CategoryName,p.UnitPrice,s.CompanyName,s.Country,s.City 
from Products p
inner join Suppliers s on p.SupplierID=s.SupplierID 
inner join Categories c on c.CategoryID =p.CategoryID

-- almanyadan Alinan Urunler HAngileridir
Select p.ProductName,p.UnitPrice,s.CompanyName,s.City 
from Products p
inner join Suppliers s on s.SupplierID=p.SupplierID
Where s.Country='Germany'

Select top 1 * from Orders


select c.CompanyName, o.OrderDate , o.OrderID,p.ProductName,od.Quantity,od.UnitPrice
from [Order Details] od
inner join Products p on p.ProductID=od.ProductID
inner join Orders o on o.OrderID = od.OrderID
inner join Customers c on c.CustomerID = o.CustomerID
where o.OrderID = 10248


-- siparisler tablosundaki personelin ad ve soyadlari ile beraber getirelim
--Eski Yontem
Select Employees.FirstName,Employees.LastName,Orders.OrderID,Orders.OrderDate 
from Orders,Employees
where Orders.EmployeeID = Employees.EmployeeID

Select top 10 * from Orders


Select FirstName ,LastName from Employees Where EmployeeID=5
Select CompanyName from Customers Where CustomerID = 'VINET'
Select CompanyName from Shippers Where ShipperID = 3

Select o.OrderID,o.OrderDate,(e.FirstName + ' ' + e.LastName) Calisan,
c.CompanyName Musteri,s.CompanyName KArgo 
from Orders o
inner join Employees e on e.EmployeeID=o.EmployeeID
INNER join Customers c on c.CustomerID=o.CustomerID
inner join Shippers s on o.ShipVia =s.ShipperID

Select top 10 * from Orders 