--CRUD => Create Update Delete KElimelerinin kisaltilmisidir

-- Insert Komutu : Tabloya Yeni Kayit Atmaya yarar

-- Syntax :  Insert Into <TabloAdi>  (x,y,z) values (a,b,c) 
--Ornek 

Insert into Shippers  (CompanyName,Phone) Values ('YurtIci Kargo','444 0 777')
Select * from Shippers

-- Employee Tablosuna Kendinizi Kaydedin

Insert into Employees (FirstName,LastName,Title) VALUEs ('Ali','Yilmaz','MAraba')
Select * from Employees

-- Kayit  Var olan bir kaydi Guncelleme 
-- Update 
Update Employees Set BirthDate = Convert(Datetime,'25.12.2000',103) Where EmployeeID = 11
Update Employees Set BirthDate = Convert(Datetime,'25.12.2000',103) , City='Adana'  Where EmployeeID = 11

--Sql de tip degisimleri yani Convert islemleri
Select CONVERT(int,'45') -- string ifadeyi integer a cevirir
SELECT CONVERT(varchar, 25.65) -- decimal degeri string e cevirir
select Convert(Datetime,'25.12.2000',103) -- string ifadeyi DateTime a cevirir
select char(65) ,ASCII('A')
declare @trh varchar(50)
SELECT @trh = CONVERT(DateTime, '2017-08-25')
Select @trh 

-- Tablodan Kayit Silme 

-- Delete from TabloIsmi Where ....

delete from Employees Where EmployeeID =11

Select * from Employees Where EmployeeID=11 or 1=1