-- View Olusturulmasi
Create View SiparislerinUrunIsimleri
as
select top 10   od.OrderID [Siparis No],
                p.ProductName Urun,
                c.CategoryName Kategori ,
                od.Quantity Adet ,
                od.UnitPrice Fiyat  
from [Order Details] od 
inner join Products p on p.ProductID=od.ProductID
inner join Categories c on p.CategoryID = c.CategoryID

-- View Kullanimi 
select * from SiparislerinUrunIsimleri
Where KAtegori = 'Produce'