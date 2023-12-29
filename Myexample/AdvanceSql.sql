-- --Select * from Employees

-- -- Cursor : Tablo uzerindeki row'lar üzerinde  tek tek dolasmaya yarar


-- create PROCEDURE CalisanlarinCirolari(@employeeId int)
-- AS
-- Begin 
-- Select e.EmployeeID,e.FirstName,e.LastName ,Round(sum(od.Quantity*(1-od.Discount)*od.UnitPrice),0) Ciro 
-- from Employees e 
-- inner join Orders o on o.EmployeeID =e.EmployeeID
-- inner join [Order Details] od on od.OrderID = o.OrderID
-- Where e.EmployeeID =@employeeId 
-- Group by e.EmployeeID,e.FirstName,e.LastName 


-- End

--exec CalisanlarinCirolari 2


-- Cursor Tanimlamasi 
declare @employeeId int
declare calisanlar cursor FOR
select EmployeeID from Employees
Order by EmployeeID

open calisanlar
 FETCH NEXT FROM calisanlar INTO @employeeId

WHILE @@FETCH_STATUS = 0  
BEGIN  

exec CalisanlarinCirolari @employeeID 
 
FETCH NEXT FROM calisanlar INTO @employeeId
END

CLOSE calisanlar

DEALLOCATE calisanlar 
