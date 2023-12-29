
Select * from Employees

-- Ismi m ile başlayan calisanlar 
select * from Employees where FirstName like 'm%'

-- FirstName 'i a ile biten calisanlar 

Select * from Employees where FirstName like '%a'

-- FirstNAme alaninda içinde 'AN' olan calisanlar
Select * from Employees where FirstName like '%an%'

-- isminde ilk harf a olacak ikinci harf onemli defil ama ucuncu harf D olan calisanlar

Select * from Employees where FirstName like 'a_d%'

-- Italyanca ile ilgili calisanlar
Select * from Employees where Notes like '%Italian%'


-- Adinin ilk harfi A yada L Olanlar
--1. Yol
Select * from Employees where FirstName like 'a%' or FirstName like 'l%'
-- 2. Yol 
Select * from Employees where FirstName like '[al]%' 

-- Adnini icerisinde A yada L Gecenler
--1. Yol
Select * from Employees where FirstName like '%a%' or FirstName like '%l%'
-- 2. Yol 
Select * from Employees where FirstName like '%[al]%' 

-- Adının ilk harfi alfabetik olarak J ile R aralığında olanlar

Select * from Employees where FirstName like '[J-R]%'  Order by FirstName

-- Adı şu şekilde olanlar: tAmEr, yAsEmin, tAnEr 
--(A ile E arasında tek bir karakter olanlar)
Select * from Employees where FirstName like '%A_E%'