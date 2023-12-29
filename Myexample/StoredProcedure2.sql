

Create PROCEDURE KatgoriBazindaCiroDagilimi (@categoryId int,@yil int)
AS
BEGIN

if(@categoryId <=0)
Begin 
 Select 'CategoryId 0 dan buyuk olmalidir'
 print 'CategoryId 0 dan buyuk olmalidir'
 return 
End

-- Verilen Katefori Id Database'de varmi ?
if not  EXISTS(select * from Categories where CategoryID=@categoryID )
Begin 
Select 'CategoryId  Database de yok malesef'
 print 'CategoryId  Database de yok malesef'
 return 
END

if(@yil <=0)
Begin 
Select ' malesef milattan once kayit tutmuyoruz'
 print 'malesef milattan once kayit tutmuyoruz'
 return 
End
if(@yil >=year(GetDate()))
Begin 
Select ' malesef gelecek yillarin kaydini tutmuyoruz'
 print ' malesef gelecek yillarin kaydini tutmuyoruz'
 return 
End

Select year(o.OrderDate) Yil, c.CategoryName,Round(sum(od.Quantity*(1-od.Discount)*od.UnitPrice),0) Ciro 
from Categories c 
inner join Products p on p.CategoryID=c.CategoryID
inner join [Order Details] od on od.ProductID = p.ProductID
INNER join  Orders o on o.OrderID=od.OrderID 
Where c.CategoryId = @categoryId and YEAR(o.OrderDate) = @yil
Group by c.CategoryName , year(o.OrderDate)
Order by yil ,Ciro desc


END

Exec KatgoriBazindaCiroDagilimi 30,2997