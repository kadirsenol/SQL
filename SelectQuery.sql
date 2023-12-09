Select *from Customers; --Tablodan butun kayıtlaı getirir
Select Country,City from Customers -- Belirli sutunların listelenmesi

--İngilterede olan müsterilerin listesi
select *from Customers where Country='UK'


--Amerikadaki Seattle sehrinde ki musterilerin listesi
Select *from Customers where Country='USA' and City='SEATTLE'

--Almanya ve Fransada ki müşterilerin listesi
Select *from Customers where Country='Germany' or country='France'

--Almanya ve Fransada ki müşterilerin listesini ülkeye göre sırala
Select *from Customers where Country='Germany' or country='France' Order by country

--Almanya ve Fransada ki müşterilerin listesini ülkeye ve sehre göre sırala
Select *from Customers where Country='Germany' or country='France' Order by country, city 
