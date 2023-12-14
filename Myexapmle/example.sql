select * from Customers

select Country,City from Customers

select * from Customers where Country='UK'   

select * from Customers where Country='USA' and City='seattle'

select * from Customers WHERE Country='Germany' or Country='France'

select * from Customers where Country='Germany' or Country='France'
order by Country

select * from Customers where Country='Germany' or Country='France'
order by country desc, City DESC

SELECT * from Products where UnitPrice>=30
order by UnitPrice DESC

select  * from Products 
order by UnitPrice

select * from Products
order by UnitPrice DESC

select * from Orders where OrderID='10248'

select CustomerID from orders where OrderID='10248'

select EmployeeID from Orders where OrderID='10248'
select FirstName from Employees where EmployeeID='5'

select top 10 * from [Order Details] where OrderID='10248'

select GETDATE()  tarih

select FirstName, LastName,BirthDate, day(BirthDate),month(BirthDate), year(BirthDate) as yil from Employees
select year(BirthDate) as yil from Employees

select * from Employees where 1960<year(BirthDate)

select firstname,(year(GETDATE())-year(BirthDate)) yas from Employees

select FirstName, datepart(dy,BirthDate) ykg from Employees
select FirstName, datepart(dy,BirthDate) 'yk g' from Employees
order by 'yk g' desc

select DATEDIFF(year, '1997.03.07', getdate()) yasim

select firstname,datediff(year, BirthDate, getdate()) yaslari from Employees
order by yaslari

select OrderID, OrderDate from Orders where 1996=year(OrderDate) and 09=MONTH(OrderDate)

select * from Orders where DATEPART(year,OrderDate)=1996 and DATEPART(MONTH,OrderDate)=09


select * from Orders where datepart(q, OrderDate)=3 and datepart(year, OrderDate)=1997
select * from Orders where DATEPART(q,OrderDate)=3 and year(OrderDate)=1997

SELECT ASCII('@')

select char(61)

select CHARINDEX('s','abcd s')

DECLARE @str varchar(100)
declare @sayac INT
DECLARE @tarih DATETIME



set @str= 'abcde f'
set @sayac=1
set @tarih='2023-12-12 12:00:00'

print @str
select @sayac rakam
SELECT @tarih tarih

declare @abc varchar(100)
set @abc='asdasd'
select @abc yazi
print @abc 

declare @tarih DATETIME
set @tarih='2023.12.12 13:00'
select @tarih tarih

declare @sayi INT
set @sayi=1
select @sayi sayim

declare @str VARCHAR(50)
set @str='abcdef'
select len(@str)

select len(BirthDate) from Employees
select birthdate from Employees

declare @a VARCHAR(100)
set @a='     abc      '
select ltrim(@a)


declare @tarih DATE
set @tarih='2023.12.12'
select year(@tarih)

declare @a VARCHAR(50)
set @a='     abc     '
select ltrim(@a) select rtrim(@a) select trim(@a)

declare @a varchar(50)
set @a='abcd'
select len(@a) uzunluk

declare @a varchar(50)
set @a='abcd'
select upper(@a)

declare @a VARCHAR(10)
set @a='ABCD'
select lower(@a) kucuk

declare @a varchar(100)
set @a='ahmet ile mehmet'
select REPLACE(@a, 'ahmet','ali')

declare @a varchar(100)
set @a='wissen'
select REPLICATE(@a+space(4), 3)

select Products.ProductName, Categories.CategoryName from Products inner join Categories on Categories.CategoryID=Products.CategoryID


select o.OrderID,e.FirstName,e.LastName, c.Companyname, o. OrderDate, s.CompanyName 
from orders o inner join customers c on o.CustomerID=c.CustomerID --shield isimlendirmeyi birleştirdiğin tabloların sonuna yazdığını kabul eder.
inner JOIN Employees e on e.EmployeeID=o.EmployeeID
inner join Shippers s on s.ShipperID=o.ShipVia


select * from Shippers
select* from Orders

select top 10 od.OrderID [sipariş no], p.ProductName,od.ProductID,c.CategoryName, sp.CompanyName
from [Order Details] od inner JOIN Products p on p.ProductID=od.ProductID
inner join Categories c on c.CategoryID=p.CategoryID
inner join Suppliers sp on  sp.SupplierID=p.SupplierID


select * from Products left JOIN [Order Details] on Products.ProductID=[Order Details].[ProductID]
where [Order Details].OrderID is null
order by Products.ProductID DESC

select* from Shippers

select Shippers.CompanyName,COUNT(orders.OrderID) adet from Shippers inner JOIN Orders  on Shippers.ShipperID=Orders.ShipVia
WHERE year(Orders.OrderDate)=1997
GROUP BY Shippers.CompanyName
order by adet

select Customers.Country,count(orders.OrderID) from Customers inner JOIN Orders on Customers.CustomerID=Orders.CustomerID


select substring('naber alaaddin',8,8)


select Products.ProductName,Suppliers.Country from Suppliers inner join Products on Suppliers.SupplierID=Products.SupplierID
where Suppliers.Country='germany'

select Orders.OrderID,Employees.FirstName from Orders inner join Employees on Employees.EmployeeID=Orders.EmployeeID

select * from [Order Details]
select [Order Details].OrderID, count(*) from [Order Details]
GROUP by [Order Details].OrderID

select * from Customers
select * from Suppliers
select * from [Order Details]
select * from Orders
where CustomerID='vınet'

select * from Products LEFT JOIN [Order Details] on Products.ProductID=[Order Details].[ProductID]
order by  Products.ProductID DESC
where [Order Details].OrderID is NULL 

select * from Employees
insert into Employees (LastName,FirstName,Title) VALUES ('senol','kadir','developer')
UPDATE Employees set BirthDate='1997.03.'

select * from [Order Details]
select OrderID,Quantity, count(*) from [Order Details]
GROUP BY OrderID,Quantity
ORDER by Quantity desc

select Products.ProductID,Products.ProductName, sum([Order Details].Quantity) adet from [Order Details] inner JOIN Orders on Orders.OrderID=[Order Details].OrderID
inner JOIN Products on Products.ProductID=[Order Details].[ProductID]
where year(Orders.OrderDate)=1997
GROUP BY Products.ProductID,Products.ProductName
ORDER BY adet DESC

Create View abc
as
select Products.ProductID,Products.ProductName, sum([Order Details].Quantity) adet from [Order Details] inner JOIN Orders on Orders.OrderID=[Order Details].OrderID
inner JOIN Products on Products.ProductID=[Order Details].[ProductID]
where year(Orders.OrderDate)=1997
GROUP BY Products.ProductID,Products.ProductName
ORDER BY adet DESC


select * from abc
where ProductID=56

ALTER PROCEDURE abcd(@trh int)
as
BEGIN

select Products.ProductID,Products.ProductName, sum([Order Details].Quantity) adet from [Order Details] inner JOIN Orders on Orders.OrderID=[Order Details].OrderID
inner JOIN Products on Products.ProductID=[Order Details].[ProductID]
where year(Orders.OrderDate)=@trh
GROUP BY Products.ProductID,Products.ProductName
ORDER BY adet DESC

END

exec abcd 1998
select * from abc
where ProductID=56

