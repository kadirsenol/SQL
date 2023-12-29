
-- Create PROCEDURE YillaraGoreKargoTasimasi(@yil  int)
-- as 
-- Begin 
--     select s.CompanyName,count(o.OrderID) Adet
--     from Shippers s
--     inner join Orders o on s.ShipperID = o.ShipVia
--     where year(o.OrderDate) =@yil 
--     group by s.CompanyName 
--     Order by Adet desc
-- End

-- Olusturulan Procedure'un calistirilmasi
Exec YillaraGoreKargoTasimasi 1997

-- Mevcut procedure3'un degistirilmesi
ALTER PROCEDURE YillaraGoreKargoTasimasi(@yil  int)
as 
Begin 
if(@yil is null)
 return 
 else 
    select s.CompanyName,month(OrderDate) Ay ,count(o.OrderID) Adet
    from Shippers s
    inner join Orders o on s.ShipperID = o.ShipVia
    where year(o.OrderDate) =@yil 
    group by s.CompanyName ,month(OrderDate)
    Order by Adet desc
End


Select * from Shippers
