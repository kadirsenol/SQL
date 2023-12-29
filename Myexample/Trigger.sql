
CREATE TRIGGER ProductUpdate on 
[Order Details] for INSERT 
as 
Begin 

-- Sql de her tablonun iki adet sanal tablosu vardir 
-- 1- Inserted : Yeni Gelen n kayitlari tutar
-- 2- Deleted : Silinen kayitlari tutar. 

Declare @productId int , @quantity SMALLINT -- Degisken Tanimliyoruz

Select @productId=i.ProductId,@quantity = i.Quantity  
from inserted i  -- Sanal Inserted Tablosundan gelen verileri yakaliyoruz


-- Gelen Veriler cercevesinde product tablsunu update ediyoruz
if exists (Select * from Products where ProductID = @productId)
Begin 
    Update Products set  [UnitsOnOrder] =[UnitsOnOrder] + @quantity 
    where ProductID = @productID
End
END