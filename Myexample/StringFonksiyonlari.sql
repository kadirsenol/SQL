-- ASCII Kod Bulma 
Select ASCII('A')

-- 65 hangi karakterdir
select char(65)

-- "Bugun Besiktaş Fenerbahce Derbisi Var" cumlesinde ş harfi kacinci siradadir
Select CHARINDEX('ş','Bugun Besiktaş Fenerbahce Derbisi Var')

-- Degisken tanimlama 
Declare @str  varchar(100)
Declare @sayac  INT
declare @tarih   DATETIME

-- Degiskenlere Deger atama 
-- 1. Yol Set ifadesini kullanma 
Set @str = 'Bugun Besiktaş Fenerbahce Derbisi Var'

-- 2. Yol Select kullanma
 Select @tarih = GetDate()

 -- Ekrana Degiskenlerin icerisini basma 
 -- 1. Yol
 print @str  

 -- 2. Yol Select Kullanimi 
select @str 'Cumle', @tarih 'Zaman'

 -- Cumlenin Uzunlugunu bulma
 select len(@str) 

 -- Cumleyi Kucuk harflere cevirme 
 select LOWER(@str) ,UPPER(@str)

 Declare @cumle varchar(100)
select @cumle = 'Bugun Besiktaş Fenerbahce Derbisi Var     '

 -- Soldaki Bosluklardan kurtulma 
 select LTRIM(@cumle), RTRIM(@cumle),TRIM(@cumle)

 
 -- Replace 
 select REPLACE(@cumle,'Besiktaş','bjk')

-- Replicate 
select Replicate('wissen' + SPACE(2),3) -- Verilen ifadeyi verilen deger kadar tekrarlar

select SUBSTRING('Bugun Besiktaş Fenerbahce Derbisi Var     ',7,8)
Select 'Wissen Academi' + space(3)+ 'Besiktastadir' -- Space verilen deger kadar bosluk birakir

Select FirstName,LastName,Notes from Employees