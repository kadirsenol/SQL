--Having 
-- Sorgu sonucu gelen sonuç kümesi üzerinde Aggregate Fonksiyonlarina 
-- bağli olacak şekilde bir filtreleme işlemi yapacaksak Where yerine 
-- Having cümleciğini kullaniriz. Bu sayede Aggregate Fonksiyonlarini da 
-- filtreleme işlemlerine katabiliriz. Eğer Aggregate Fonksyonlari 
-- sorgumuzda yoksa HAVING kullanimi Where ile ayni filtreleme işlemini 
-- yapacaktir.
---- Ulkelerin siparislerinin yillara gore dagiliminda 20 adet siparis ve uzeri olan ulkelerin listesi nedir
Select year(OrderDate) yil,ShipCountry,count(*) Adet
from Orders
Group by ShipCountry,YEAR(OrderDate)
Having count(*) >=20
order by 1 ,3

-- - Toplam tutari 2500 ile 3500 arasinda olan siparişler
Select OrderID ,sum(UnitPrice*Quantity) Ciro 
from [Order Details]
--Where OrderID = 10248
Group by OrderId
--having sum(UnitPrice*Quantity)>2500 and sum(UnitPrice*Quantity)<3000
having sum(UnitPrice*Quantity) BETWEEN 2500 and 3500 

-- 10 dan fazla urune sahip kategoriler hangisidir
select CategoryID,count(*) 
from Products 
Group by CategoryID
having count(*) >10