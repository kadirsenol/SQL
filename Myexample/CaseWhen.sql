Select FirstName,LastName,
case(Country)
    when 'USA' then 'Amerika'
    When 'UK' then 'Ingiltere'
    else 'Bilinmeyen Ulke'
 End 'Ulke'   
from Employees

Select ProductName ,
case 
 when UnitPrice<50  then 'Ucuz Urun'
   when UnitPrice>=50 and UnitPrice<150 then 'Ekonomik'
    when UnitPrice>150 and UnitPrice<200 then 'Pahali Urun'
     else 'Lüx Ürün'
     End 'Urun Segmenti'
from Products
