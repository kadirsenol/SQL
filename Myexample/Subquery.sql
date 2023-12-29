-- Fiyati ortalama fiyatin uzerinde olan urunlerin listesi nedir
declare @ortalama money

select @ortalama =avg(UnitPrice) 
from Products

Select * from Products where UnitPrice>@ortalama

-- Daha Kisa Yolu 
Select * from Products where UnitPrice> (select avg(UnitPrice) from Products)
-- Urunler Tablosunda Satilmayan urun varmi ?

Select  * from [Products]
where ProductID not in (select ProductID from [Order Details])

-- Hic satis yapmayan calisanim varmi ?

Select  * from [Employees]
where EmployeeID not in (select EmployeeID from [Orders])

Select ProductName ,
        SupplierID,
        (select CompanyName from Suppliers where Suppliers.SupplierID = Products.SupplierID) Tedarikci,
        CategoryID ,
         (select CategoryName from Categories where Categories.CategoryID = Products.CategoryID) KAtegori
from Products
