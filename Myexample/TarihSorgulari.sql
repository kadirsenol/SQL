-- gunun Tarihi almak
Select GetDate()

-- Employees Tablosunu Sorgulama
Select * from Employees
-- Calisanlarin dogdugu yil ,ay  ve gunleri bulma

SELECT firstname , LastName ,BirthDate ,
Year(BirthDate) as 'Yil',
Month(BirthDate) 'Ay',
day(BirthDate) 'Gun'
from Employees


-- 1960 yilindan sonra dogan calisanlarin listesi
select * from Employees Where YEAR(BirthDate) > 1960

-- Calisanlarin Yaşlarini bulma 
Select firstname , LastName ,BirthDate ,(year(GETDATE()) - YEAR(BirthDate)) 'Yaş' 
from Employees

-- DatePart Fonksiyonu 
Select DATEPART(year,BirthDate) 'Dogum Yili',
 DATEPART(MONTH,BirthDate) 'Dogum Ayi',
 DATEPART(DAY,BirthDate) 'Dogum Gunu'
from Employees

-- Yilin Kacinci gunu 
Select FirstNAme,LastNAme,  DATEPART(dy,BirthDate) 'Yilin Kacinic Gunu'
from Employees

-- Yilin Kacinci gunune gore siralama : 1. Yol
Select FirstNAme,LastNAme,  DATEPART(dy,BirthDate) 'Yilin Kacinic Gunu'
from Employees Order by DATEPART(dy,BirthDate)

-- Yilin Kacinci gunune gore siralama : 2. Yol
Select FirstNAme,LastNAme,  DATEPART(dy,BirthDate) 'Yilin Kacinic Gunu'
from Employees Order by 'Yilin Kacinic Gunu'

-- Yilin Kacinci gunune gore siralama : 3. Yol
Select FirstNAme,LastNAme,  DATEPART(dy,BirthDate) 'Yilin Kacinic Gunu'
from Employees Order by 3

-- Kaç Gundur Yaşiyorum
Select DateDiff(day,'12.19.2000' ,GetDate())
-- Calisanlarin yaşlarini Datediff ile bulma

Select FirstName,LastName,DateDiff(year,BirthDate,GETDATE()) 'Yaş' from Employees

-- 1996 yilinin Eylul ayindaki satislarin listesi 
Select * from Orders Where year(OrderDate) =1996 and Month(OrderDate) = 9

-- 1997 yilinin 3. Cegregindeki satislarin listesi 
Select * from Orders Where year(OrderDate) =1997 and Month(OrderDate) >= 7 and  Month(OrderDate) <10

-- Daha Kısa Yolu 
Select * from Orders Where Datepart(q,OrderDate)=3 and year(OrderDate) = 1997