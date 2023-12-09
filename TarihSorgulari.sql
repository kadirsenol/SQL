-- gunun tarihini almak Select
select GetDate()

--Employees Tablosunu sorgulama
select *from Employees
--Calısanların dogdugu yil,ay ve günleri bulma
select firstname , LastName , BirthDate ,
year(birthdate) 'yil',
month(birthdate) 'ay',
day(birthdate) 'gun'

from Employees

--1960 yılından sonra dogan calisanlarin listesi
select *from Employees where year(BirthDate)>1960

--calisanlarin yasini bulma
select firstname, lastname,birthdate, (year(getdate())-year(birthdate))'yas' from Employees

---DatePart fonksiyonu
Select Datepart(yearbirthdate) 'Dogum yili'

--kac gundur yıldır yasıyorum
select datediff(year, '03.07.1997', getdate()) as 'yıl'

--calisanlarin yaslarını datediff ile bulma
select firstname,lastname,datediff(year,birthdate,getdate()) as 'yas' from Employees