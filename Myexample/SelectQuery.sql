Select * from Customers; -- Tablodan butun kayitlari getirir
Select Country,City from Customers -- Belirli sutunlarin listelenmesi


--ingiltere de olan musterilerin listesi 
Select * from Customers where Country='UK'

-- Amerikadaki Seattle sehrindeki musterilerin listesi
Select * from Customers where Country='USA' and City='SEATTLE'

-- Almanya ve Fransadaki musteriler listesi
Select * from Customers where Country='GERMANY' or country = 'FRANCE'
-- Almanya ve Fransadaki musteriler listesini ulkeye gore sirali alalim
Select * from Customers 
where Country='GERMANY' or country = 'FRANCE' 
Order by Country
-- Almanya ve Fransadaki musteriler listesini ulkeye ve Sehre  gore sirali alalim
Select * from Customers 
where Country='GERMANY' or country = 'FRANCE' 
Order by Country , City

-- Urunlerin Listesi 
Select * from Products

-- Fiyati 30$ ve uzeri olan urunlerin listesi
Select * from Products where UnitPrice >=30 order by UnitPrice
-- En ucuz urunlerin listesi
Select * from Products  order by UnitPrice
-- En pahali urunlerin listesi
Select * from Products  order by UnitPrice DESC

-- Siparis  Tablosunu Sorgulayin
Select * from Orders where OrderID = 10248
-- Siparisi Veren Musteri
Select * from Customers Where CustomerID = 'VINET'
--Siparisi alan Calisan 
Select * from Employees where EmployeeID =5


-- Order Details tablosunun ilk 10 kaydi 
Select top 10 * from [Order Details] where OrderID = 10248

--Kargo Sirketleri
Select * from Shippers 