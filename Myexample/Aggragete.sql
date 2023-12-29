-- Aggregate Fonksiyonlar (Toplam Fonksiyonlari, Gruplamali Fonksiyonlar,Sayma fonksiyonlari)
-- Count(sutunAdi | *): Bir tablodaki kayit sayisini gosterir
select count(*) from Employees -- Employees Tablosundaki kayit sayisini verir
Select count(ReportsTo) from Employees -- Null Kayitlari saymaz

Select count(*) from Employees where ReportsTo is   NULL

Select count(*) from Customers where region is null 


Select count(city) from Customers  -- 91 adet kayit doner ama tekrarlidir.
Select count(distinct city) from Customers -- Tekil olarak sehirleri sayar : 69 kayit gelecektir

Select * from Products
Select sum(UnitsInStock) from Products  -- Sayisal Alan Toplar
Select sum(QuantityPerUnit) from Products -- Karakter alan Toplayamaz

Select SUM(BirthDate) from Employees -- Tarih Alanini Toplamaz
-- Calisanlarin Yaş Ortalamalari
Select sum(DATEDIFF(year,BirthDate,GetDate()))/Count(*) from Employees

Select Avg(DATEDIFF(year,BirthDate,GetDate())) from Employees -- Ortalama Almanin Kısa Yolu

select avg(UnitPrice) from Products


--- Yuvarlama Fonksiyonlari 
-- Normal Yuvarlama
Select Round(234.111,-1) as Sayi -- Sonuc 230

Select Round(234.111,0) as Sayi -- 234  

Select Round(234.111,1) as Sayi -- 234.1
Select Round(10.5,0) --11
Select Round(11.5,0) --12
Select Round(12.5,0) --13
Select Round(13.5,0)
Select Round(14.5,0)



-- Yukari Yuvarlama
select CEILING(234.111) 
select CEILING(9.5) 

--Asagi Yuvarlama

Select FLOOR(11.9) --11 
-- Max , Min 
Select  Max(UnitPrice) from Products
Select top 1 * from Products Order by UnitPrice desc 
Select  Min(UnitPrice) from Products
Select  MAX(ProductName) from Products -- Max Ve min String alanlarda da calisir
Select  Min(ProductName) from Products 

Select max(BirthDate) from Employees -- Max ve min Tarih alanlarinda da calisir

Select min(BirthDate) from Employees
Select * from Employees  Order by BirthDate

--  Group by 
--  Ulkelere Gore Musteri Sayisi

-- Uk 8
Select Country,count(*) Adet 
from Customers
Group by Country
-- 1997 yilinda hangi ulkelerden kac adet siparis alinmisitir.
Select ShipCountry,Count(*) Adet
from Orders
Where year(OrderDate) = 1997
Group by ShipCountry 

-- 1997 yilinda en az siparis veren ilk 3 ulke hangisidir
Select top 3 ShipCountry,Count(*) Adet
from Orders
Where year(OrderDate) = 1997
Group by ShipCountry 
Order by Adet 

-- 1998 yilinda en fazla siparis veren ilk 3 firma hangisidir
Select top 3 CustomerID,Count(*) Adet
from Orders
Where year(OrderDate) = 1998
Group by CustomerID 
Order by Adet desc

-- 1997 yilinda en az siparis alan 3  calisanlari yakalayin . 
-- Birde en fazla siparis alan ilk 3 kisiyede odul verilecek
-- Select top 10 * from Orders
Select top 3 EmployeeID,Count(*) Adet
from Orders
Where year(OrderDate) = 1997
Group by EmployeeID 
Order by Adet 

Select top 3 EmployeeID,Count(*) Adet
from Orders
Where year(OrderDate) = 1997
Group by EmployeeID 
Order by Adet desc 

-- 4	81
-- 3	71
-- 1	55

--Select * from Orders Where EmployeeID=1 and year(OrderDate)=1997 
-- Select *  from Shippers
-- KArgo Firmalarinin tasidiklari siparis sayilari nedir
Select  ShipVia,Count(*) Adet
from Orders
Group by ShipVia 
Order by Adet  
-- KArgo Firmalarinin tasidiklari siparislerin yillara gore dagilimi nedir
Select YEAR(OrderDate) Yil, ShipVia,Count(*) Adet
from Orders
Group by ShipVia ,YEAR(OrderDate)
Order by yil, Adet 

-- Saglamasi icin 1 numarali kargo sirketi 1996 yilinda egerki 38 adet tasimissa dogrudur
Select count(*) from Orders where year(OrderDate) = 1996 and ShipVia=1

---- Ulkelerin siparislerinin yillara gore dagilimi nedir
Select year(OrderDate) yil,ShipCountry,count(*) Adet
from Orders
Group by ShipCountry,YEAR(OrderDate)
order by 1 ,3

-- Kategorilere gore urun sayisi nedir ?
select CategoryID ,count(*) 
from Products
Group by CategoryID
Order by Count(*)


-- 35$ dan az olan urunlerin kategori dagilimlari nedir ?
select CategoryID ,count(*) 
from Products
where UnitPrice<35
Group by CategoryID
Order by Count(*)