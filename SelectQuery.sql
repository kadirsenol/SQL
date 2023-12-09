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


select *from products

--fiyatı 30$ ve üzeri olan ürünlerin listesi
select * from products where Unitprice >=30
select Unitprice from products where Unitprice >=30 -- Sadece fiyat tablosu olarak 30 ve üzerileri çapırmak

--fiyatı en ucuz olan ürünlerin listesi
select * from products order  by unitprice

--fiyatı en pahalı olan ürünlerin listesi
select * from products order  by unitprice DESC

-- Order(sipariş) tablosunu sorgulayın
select *from orders

--orderıd si şu olan siparişi getir.
select * from orders where orderıd=10248

--order details tablosunun ilk 10 kaydı(tablo isminde boşluk olduğu için köşeli parantez kullanlır)
select top 10 *from [Order Details]

--