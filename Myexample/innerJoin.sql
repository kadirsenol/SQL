Select * from Customers Where CompanyName='Alfreds Futterkiste'
select top 10 * from Orders




SELECT Orders.OrderID,  Customers.CompanyName, Orders.OrderDate
FROM Orders
INNER JOIN Customers ON Orders.CustomerID=Customers.CustomerID

-- Yukarikadi sorguya Employee Tablosundaki Calisanin ad ve soyad bilgilerini de ekleyin

SELECT Orders.OrderID, Employees.FirstName , Employees.LastName  , Customers.CompanyName, Orders.OrderDate
FROM Orders
INNER JOIN Customers ON Orders.CustomerID=Customers.CustomerID
INNER join Employees on Employees.EmployeeID = Orders.EmployeeID

-- Bu sorgudaki tablo isimlerine bir alias vererek daha kisa hale getirebiliriz

SELECT o.OrderID, e.FirstName , e.LastName  , c.CompanyName, o.OrderDate
FROM Orders o
INNER JOIN Customers c ON o.CustomerID=c.CustomerID
INNER join Employees  e on e.EmployeeID = o.EmployeeID

-- Yukaridaki sorguya Kargo Firmasinin Isminide Ekleyin 
-- (Shipper tablosundaki shipperId ile Order tablosundaki shipvia) Tablosuna join atilacak


SELECT  o.OrderID  [Siparis Numarasi], 
        e.FirstName [Calisan Isim], 
        e.LastName  [Calisan Soyisim], 
        c.CompanyName Musteri, 
        o.OrderDate [Siparis Tarihi],
        s.CompanyName Kargocu
FROM Orders o
INNER JOIN Customers c ON o.CustomerID=c.CustomerID
INNER join Employees  e on e.EmployeeID = o.EmployeeID
inner join Shippers s on s.ShipperID= o.ShipVia

--- Order Details da urunun ismini de getirin

select top 10 od.OrderID [Siparis No],p.ProductName Urun ,od.Quantity Adet ,od.UnitPrice Fiyat  
from [Order Details] od 
inner join Products p on p.ProductID=od.ProductID


-- yukaridaki sorguda urunun Kategorisinide gormek istiyorum (Categories)

select top 10   od.OrderID [Siparis No],
                p.ProductName Urun,
                c.CategoryName Kategori ,
                od.Quantity Adet ,
                od.UnitPrice Fiyat  
from [Order Details] od 
inner join Products p on p.ProductID=od.ProductID
inner join Categories c on p.CategoryID = c.CategoryID


-- yukaridaki sorguda urunun alindigi şirketi  gormek istiyorum (Supplier)
select top 10   od.OrderID [Siparis No],
                p.ProductName Urun,
                c.CategoryName Kategori ,
                s.CompanyName Tedarikci, 
                od.Quantity Adet ,
                od.UnitPrice Fiyat  
from [Order Details] od 
inner join Products p on p.ProductID=od.ProductID
inner join Categories c on p.CategoryID = c.CategoryID
inner join Suppliers s on s.SupplierID = p.SupplierID